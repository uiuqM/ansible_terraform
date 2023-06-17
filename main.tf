terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t3.small"
  key_name = "con"
  vpc_security_group_ids = [aws_security_group.groupTeste.id]
  tags = {
    Name = "Market project"
  }
}
