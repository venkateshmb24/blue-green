# Specify the provider and access details

provider "aws" {
  
}

# Create an S3 bucket
resource "aws_s3_bucket" "udabuckets" {
  bucket = "cicd-terraform-demo-bucket20213-venkat"

  tags = {
    Name        = "CICD test bucket"
    Environment = "Dev"
  }
}

# Create an EC2 instance
resource "aws_instance" "ec2_instance" {
  ami           = "ami-043a5a82b6cf98947"
  instance_type = "t2.micro"

  tags = {
    Name = "CICD test instance"
  }
}
