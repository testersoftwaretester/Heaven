
resource"azurerm_app_service""App_Service_1" {

resource_group_name="AVA-EUS-CLOUDGEN-RG" 
name="cloudgeneweblinux" 
location="East US" 
app_service_plan_id=azurerm_service_plan.service_plan_1.id 
logs {

	} 
tags= {

env = "Development" 	
} 
}
 
resource"azurerm_service_plan""service_plan_1" {

sku_name="S1" 
resource_group_name="AVA-EUS-CLOUDGEN-RG" 
os_type="Linux" 
name="cloudgensrvplan" 
location="East US" 
}
 
resource"azurerm_function_app""function_application_1" {

storage_account_name=azurerm_storage_account.account_1.name 
storage_account_access_key=azurerm_storage_account.account_1.primary_access_key 

resource_group_name="AVA-EUS-CLOUDGEN-RG" 
name="functionapplinux1" 
location="East US" 
app_service_plan_id=azurerm_service_plan.service_plan_2.id 


}
 
resource"azurerm_function_app""Function_application2051010000" {

storage_account_name=azurerm_storage_account.account_2.name 
storage_account_access_key=azurerm_storage_account.account_2.primary_access_key 

resource_group_name="AVA-EUS-CLOUDGEN-RG" 
name="functionapplinux2" 
location="East US" 
app_service_plan_id=azurerm_service_plan.service_plan_3.id 


}
 
resource"azurerm_storage_account""account_2" {

resource_group_name="AVA-EUS-CLOUDGEN-RG" 
name="cloudgenstgaccount2" 
location="East US" 
account_tier="Standard" 
account_replication_type="LRS" 
account_kind="Storage" 
access_tier="Hot" 
tags= {

env ="Dev" 
} 
}
 
resource"azurerm_storage_account""account_1" {

resource_group_name="AVA-EUS-CLOUDGEN-RG" 
name="cloudgenstgaccount1" 
location="East US" 
account_tier="Standard" 
account_replication_type="LRS" 
account_kind="Storage" 
access_tier="Hot" 
tags= {

env ="Dev" 
} 
}
 
resource"azurerm_sql_server""sql_server" {

version="12.0" 
resource_group_name="AVA-EUS-CLOUDGEN-RG" 
name="cloudgenserversql" 
location="East US" 
administrator_login_password="avasoft@12345" 
administrator_login="avasoftadmin" 
tags= {

env ="Dev" 	
} 
}
 
resource"azurerm_service_plan""service_plan_2" {

sku_name="S1" 
resource_group_name="AVA-EUS-CLOUDGEN-RG" 
os_type="Linux" 
name="serviceplanfunction1" 
location="East US" 
tags= {

env ="Dev" 	
} 
}
 
resource"azurerm_service_plan""service_plan_3" {

sku_name="S1" 
resource_group_name="AVA-EUS-CLOUDGEN-RG" 
os_type="Linux" 
name="cloudgenfunction2" 
location="East US" 
tags= {

env ="Dev" 	
} 
}
 
resource"azurerm_sql_database""SQL_database" {

server_name=azurerm_sql_server.sql_server.name 
resource_group_name="AVA-EUS-CLOUDGEN-RG" 
name="databasecloudgen" 
location="East US" 
}
