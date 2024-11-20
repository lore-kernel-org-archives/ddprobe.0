Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D1012E5B
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732076154; cv=none; b=aXE7FVoFcFF0Z8VIdVSGuyoH/tbuSSRJJ28NTFh8XvxSG6BNP6XVRZ+R70kivMV61sCckxWIS6hTdZflXW1z6KneV1NcVYcSNUlhCR6py7XzDi9mauUiQ+aUU7MkfDKSrbDMZXvB3RD72IPAELFrGD8J02TsnYTSw3Tyvraizb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732076154; c=relaxed/simple;
	bh=3BYxenaOKW+y3ahdoUH2GQdc7MxEXSNAFYh2UVz79T0=;
	h=To:Subject:From:Message-Id:Date; b=R+wSaiBAsb73RqaTP2Hv/bSBUlAWhs2Fy2YLYVw3LmNBORJMvP6xJU8LxaOvD0tnR8TrYK2XGfG0oPrVKk8twYAK4aO+SCPCqQtMrmQodaqVP7wYuBPkTxYphFLDTb//wTc3OgU5FGza6U3CsbY8QxTiuiAEHF5aJLz6qWwCSKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehP0ueCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehP0ueCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90CDC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732076153;
	bh=3BYxenaOKW+y3ahdoUH2GQdc7MxEXSNAFYh2UVz79T0=;
	h=To:Subject:From:Date:From;
	b=ehP0ueCUXIvylvt/HHInnWjeRYZQDwq39En3qqrtPy1F7SSRKSi78in6dSIYF1c6d
	 xBpKWDxlvGC1J13nlDvnUmdJI3qX46CNidDNj4WDr46pGqL0fUkGmSSJk9PrfxLhgG
	 mIWGu9kQJVCLn2JYtr4M/9nwKMZww0L2VSu/8NV8X9HU59T7ByVQk4f+9BLKvWVtbC
	 HQ0by2F18HGv7PI0NkPhw5nLqYfQoj00tvRDV8DOmxUe8GAr5rDkTIzLXP962rHfET
	 lg0SMxVT/o/rz+IEqIfb2D8mYnVkqzVYLsbpFAAapLaLnDtsMx99fjBxbW2gOaXOUc
	 RbvXcNhVGHvKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96448D6E2AC
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173207615360.16354.4157064354561870579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db7a607dca326d9fee63d3457bed07c961387b4b7d4b67207dc267cada575a6
Date: Wed, 20 Nov 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732076153
