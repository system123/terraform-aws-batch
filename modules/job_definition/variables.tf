data "aws_caller_identity" "current" {}

variable "service_name" {
  description = "Service/Pipeline name"
}


###############################
# Job definitions Varialbes  ##
###############################

variable "jd_vcpus" {
  description = "VCPUs required by the job definition"
  default     = 1
}

variable "jd_memory" {
  description = "Batch job definition memory"
  default     = 1024
}

variable "jd_command" {
  description = "Job definition command"
}

variable "job_definition_name" {
  description = "The name of the job definitions"
}

variable "docker_ecr_link" {
  description = "The name of the job definitions"
}

variable "jd_volumes" {
  description = "Volumes to mount in the container"
  default = []
}

variable "jd_mountpoints" {
  description = "Volumes to mount in the container"
  default = []
}

variable "iam_task_policy_actions" {
  type = list(string)
  default = [
    "ec2:*",
    "logs:*",
    "ecs:*",
    "cloudwatch:*",
    "iam:GetInstanceProfile",
    "iam:GetRole",
    "autoscaling:*",
    "s3:*",
    "secretsmanager:*"
  ]
}

variable "iam_task_policy_resources" {
  default = []
}

###################
# tags variables ##
###################

variable "resource_tags" {
  description = "Custom tags to set on all the resources"
  type        = map(string)
}

variable "region" {
  description = "Region"
  default = "us-east-1"
  type = string
}