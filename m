Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473BD26AD5
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 23:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719790463; cv=none; b=onWCqV/GxliiZrzQvPpU7DGykZmg/xZvqgGIDM1lXJiy5Uxr6Hq+mbpjyJYRyfFVGpnm7SwESC3gXeZ1tS9ZHItOSPgda1C7w5PxgbDpkRBBDcDX9sePGYs0+X31vJmV3Sa5FFebvo2Rywens6FAIAW3dYRi5LDJOusR3ItuAeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719790463; c=relaxed/simple;
	bh=0MO/ncLa+VKqQHtqIc4sS67H/ZV8kctulDfSWNcr93k=;
	h=To:Subject:From:Message-Id:Date; b=gMO6k3VOJDuMAApW3HD7kPsDlbrCoaw8rsb9NdpNhDwEZ5IL8AOo0RhJRGmmtkwTI0I+TsIgKQeUwr5Kw8kQCMYZ/yO+h8EmVtvM+/fyc5MXptsnf4XsQuwul+tovxQnAHk8pPqNk3d3AQMGM8gac7JAW5aCKnFv7L1Vzj5obEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ektvlBy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ektvlBy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AC7C32786
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 23:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719790462;
	bh=0MO/ncLa+VKqQHtqIc4sS67H/ZV8kctulDfSWNcr93k=;
	h=To:Subject:From:Date:From;
	b=ektvlBy0HK+uZBITrJ098cy5T4F240aUJBF5aX+vyr42emFPAUKj3nssDteuXSe7f
	 +4q+2TxWhNfFAElIzsdjGfCTB//V+mSS2GdZ1+day+tGCc20n0+61sy7gEIiNhc2X3
	 WYkXrr2SNUmVoDS+GaBHOUKcndBt2VjdRpEb3BCRDwID3cTr2JU31xFTrinWi14/ye
	 r+hwJ6tYQZldmRgVfTMiN58tyXoE2XRx49KmhshhpRVhhUw9wVhI9Jn4BhDxFUJsIc
	 qZkwZrLlJuCCnEp4JWyc1tEufxnSmS3dI1xagwuhUtniRUS9NH3QenelbERLyUgwcQ
	 wVV5RDuLL70Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB39C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 23:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171979046276.25784.6570619028187503492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a209eb8ded7349547ffca543090ccf1ee7459ec5b166430ace7b7a5805b3dc2f
Date: Sun, 30 Jun 2024 23:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719790462
