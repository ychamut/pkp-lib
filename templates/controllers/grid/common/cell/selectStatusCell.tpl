{**
 * templates/controllers/grid/common/cell/selectStatusCell.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2000-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * a regular grid cell (with or without actions)
 *}
{assign var=cellId value="cell-"|concat:$id|uniqid}
<span id="{$cellId}">
	{if count($actions) gt 0}
		{assign var=defaultCellAction value=$actions[0]}
		{include file="linkAction/buttonGenericLinkAction.tpl" action=$defaultCellAction buttonSelector="#select-"|concat:$cellId}
	{/if}
	<input type="checkbox" id="select-{$cellId}" {if $name}name="{$name|escape}"{/if} {if $value}value="{$value|escape}"{/if} style="height: 15px; width: 15px;" {if $selected}checked="checked"{/if} {if $disabled}disabled="disabled"{/if}/>
</span>
