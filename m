Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136FE2882D6
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776908254; cv=none; b=ePO+EZENHeqH4BDvK7w/673Lxd8PIEPm33U+kEit/bEDdkCeCYm6nbv7hSjKVFV/RLsF/9IlvZORgMXmcVNdn2ktxkb91njz8TkH2KrreyYefLDrh8mkbQdBL8mJ8CKG+gn+CnvNsqjc7l0+g86sWTRb5bGagg6AA+83l3ryWM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776908254; c=relaxed/simple;
	bh=ONeBAxJJCKtcz64mc4GGRnpJVVVt57M8aNgCig7Rq7A=;
	h=To:Subject:From:Message-Id:Date; b=Xbtk1LtdCBZVEDKwePj6qcDNaxZPk/GC7eoQcK94lLcQY3NLmr2SlfHDqE+GkbRl2KCelotYHxGMPDNhy/ecCGqQCzwJckSfA6ps+xfALSeM7ZXgbjyxc7YG5l9fWClvTma1ZVKcBc8yVItnToFyANG7b7/zsph2b+6De0nDnZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rha/wqGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rha/wqGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CAAC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776908253;
	bh=ONeBAxJJCKtcz64mc4GGRnpJVVVt57M8aNgCig7Rq7A=;
	h=To:Subject:From:Date:From;
	b=Rha/wqGb41e2qrETOA2WfgFVPLQnvS9VpkIeIhQoFBdStBz/rjQ2jGIufiiIcSfAR
	 RXrHHNDQZ07wIY6x6k+SQ6IMDwD0hIZHz17WGXkSFPfLzODY6z3nUdXtih2BSxu89D
	 wyWUbrS4i5LpVk3+9VkfhThZCGpMWfzT6T11CleS1f/gSytmVTYIyZ+HarqtBk88Pc
	 L3yDVqSXu4pxoif/WgJy6sSTHPKWSVaW2j+dHti3tmpoh3XEgPW+kObP0zStv0f0ep
	 6n7+uayuQWP6Vv7sfYCFJPnesR6OmdNa+i2L7YPye254Tft2wGKY3we2vVReVqlZhL
	 tUjPmXFET1HGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9057FAD3E1
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177690825368.25952.1608416751921702982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051a124f10642835bd9c098526901f87a7045ff5263940f1edf4007b6c8571ff
Date: Thu, 23 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776908253
