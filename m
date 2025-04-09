Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3112826A0A5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744216194; cv=none; b=qBy4FKkcmV7stNVk61SoFVmN69y2XnyDPJGVlMKz+saf8AG6G/3WzT76P4Ty4q6GDDLsYflpOsc4G0RmjD3RMdhcP+xmCZeFGNYWMbfVCpyOxuMeG6zno+FOkNG+3mXSbEn2H6b50OW3nIXzJGDhGPN+FqOhRpSDPwiQ+Zwtdr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744216194; c=relaxed/simple;
	bh=U4p0HkiZWaPj73Bj1xqA+Rf6mnbwHqxSbB0uZwnqZcQ=;
	h=To:Subject:From:Message-Id:Date; b=OetMNssDSUDCO3K46zSdDVf9i+kXGtALuEeo29CSMuaLme2OMvAyCzedNRwMurGhjRu5j06DHL+9pmsbMSEsMyIi1+e635erWGM1kIIUmCG6QCy2B2xB+evEeSlE68JLmKiOptEhtgnGhVlIQ/YPLMd43Vh0vdOvy8x4fzux3Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxZBPPD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxZBPPD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3916C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744216193;
	bh=U4p0HkiZWaPj73Bj1xqA+Rf6mnbwHqxSbB0uZwnqZcQ=;
	h=To:Subject:From:Date:From;
	b=uxZBPPD8GgwiZPS0J8JHsnWhhdLBCUS453rYmkPDbxSXYpyZeH3YFTRUEgm0evFmw
	 vJXp0FeJu8qY2OG5oFydABgZ27BJSetmvanT2i7GfiEcM1NT6iBKp5pIvJRrOb5NV8
	 PDNdFhXrn/MEpn8Tiz2UaA3y9x2mHpJxWJzx3T1dyX+Unu/1wKK9NgB22zHMUtt1u7
	 2JaLcmYqbQu8FAw486/XQ1QPwFI6CIkGkcHvvgP2oaMByxvdZfpPG+hJpEwVv25Gxd
	 rH11ZOpfaXl7bOe9Tv972v1AQiK+neiMFpnml5KfWoYXYh5JpEUcnOgWRdqnCLuD3R
	 VBhLMaIJr12Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C93C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174421619359.3751.4574514617995159570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab377197a5b6a34ea1423c77d7d23d9dd90d7abf57d84a29b6d3dc7f0739dc5
Date: Wed, 09 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744216193
