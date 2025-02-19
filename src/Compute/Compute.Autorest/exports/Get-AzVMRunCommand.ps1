
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Gets specific run command for a subscription in a location.
.Description
Gets specific run command for a subscription in a location.
.Example
PS C:\>  Get-AzVMRunCommand -ResourceGroupName $rgname -VMName $vmname -RunCommandName "firstruncommand2"

Location Name             Type
-------- ----             ----
eastus   firstruncommand2 Microsoft.Compute/virtualMachines/runCommands
.Example
PS C:\> Get-AzVMRunCommand -ResourceGroupName $rgname -VMName $vmname  

Location Name             Type
-------- ----             ----
eastus   firstruncommand  Microsoft.Compute/virtualMachines/runCommands
eastus   firstruncommand2 Microsoft.Compute/virtualMachines/runCommands
eastus   firstruncommand3 Microsoft.Compute/virtualMachines/runCommands

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.IComputeIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.Api20210701.IRunCommandDocument
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.Api20210701.IRunCommandDocumentBase
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.Api20210701.IVirtualMachineRunCommand
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IComputeIdentity>: Identity Parameter
  [CommandId <String>]: The command id.
  [Id <String>]: Resource identity path
  [InstanceId <String>]: The instance ID of the virtual machine.
  [Location <String>]: The location upon which run commands is queried.
  [ResourceGroupName <String>]: The name of the resource group.
  [RunCommandName <String>]: The name of the virtual machine run command.
  [SubscriptionId <String>]: Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  [VMName <String>]: The name of the virtual machine where the run command should be created or updated.
  [VMScaleSetName <String>]: The name of the VM scale set.
.Link
https://docs.microsoft.com/powershell/module/az.compute/get-azvmruncommand
#>
function Get-AzVMRunCommand {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.Api20210701.IRunCommandDocument], [Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.Api20210701.IVirtualMachineRunCommand], [Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.Api20210701.IRunCommandDocumentBase])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Path')]
    [System.String]
    # The command id.
    ${CommandId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Path')]
    [System.String]
    # The location upon which run commands is queried.
    ${Location},

    [Parameter(ParameterSetName='Get')]
    [Parameter(ParameterSetName='Get1')]
    [Parameter(ParameterSetName='List')]
    [Parameter(ParameterSetName='List1')]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String[]]
    # Subscription credentials which uniquely identify Microsoft Azure subscription.
    # The subscription ID forms part of the URI for every service call.
    ${SubscriptionId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Path')]
    [System.String]
    # The name of the resource group.
    ${ResourceGroupName},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Path')]
    [System.String]
    # The name of the virtual machine run command.
    ${RunCommandName},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Path')]
    [System.String]
    # The name of the virtual machine containing the run command.
    ${VMName},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Models.IComputeIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Get1')]
    [Parameter(ParameterSetName='List1')]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Query')]
    [System.String]
    # The expand expression to apply on the operation.
    ${Expand},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Compute.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Az.Compute.private\Get-AzVMRunCommand_Get';
            Get1 = 'Az.Compute.private\Get-AzVMRunCommand_Get1';
            GetViaIdentity = 'Az.Compute.private\Get-AzVMRunCommand_GetViaIdentity';
            List = 'Az.Compute.private\Get-AzVMRunCommand_List';
            List1 = 'Az.Compute.private\Get-AzVMRunCommand_List1';
        }
        if (('Get', 'Get1', 'List', 'List1') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
            $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.Compute.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}
