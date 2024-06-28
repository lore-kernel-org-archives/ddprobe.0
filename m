Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5480415382F
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719567863; cv=none; b=BLN5YRTvfNsSJbpLUx3N3lSVvtDkARRnely3foz1nJjzLbBdYKOUENC3Lr5rGfEenKzvud2heWBZLKW4oZznk835ffbi0D2NpBnm4YnqMqGifWtyEqTXvZkqiaUdo4ZWIeJurp6YpB//s3nl+pVsR7HeW6GVhdMPDpc0BgeTb0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719567863; c=relaxed/simple;
	bh=8IygvOYM4g0f+MVtUbD+4HtEgNU7edhqptTEwx/iwHY=;
	h=To:Subject:From:Message-Id:Date; b=eONtgx7VO7WzL0rTiq57Wvvu4+4AGvM9mFLLGM6kQ/K1RhDtyBi8QXkbA6fSJdEupdpixs87q9Z5ZK3ivbMDSXqqXftUfAFUVcfgCbEsw/AKvOBQABxPwYBPPNKCkmx6SP1FXJ6NE7tDN07jHgvYh7BptPWP/nSaRDoFCWBpbcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2ERJ7Tv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2ERJ7Tv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E89C32781
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719567862;
	bh=8IygvOYM4g0f+MVtUbD+4HtEgNU7edhqptTEwx/iwHY=;
	h=To:Subject:From:Date:From;
	b=K2ERJ7TvWJEmghZXwhr1WviJeASrpQsjN/6lKrog2nlD1J0XBjYfe0yrYqJp47tsk
	 axJ2N57qefHiMGomzMsrVwZFPEMRIPJZeybS//2C1XGYXXl93oGts0uIjCc0so+XxG
	 669MVh2zHZkdzBjIPs5Wngyz4G7iZPGkHyeZHc4tkyqTl8UjGOKXskpEyRDtVKUjuV
	 uSqttb8DtsKdXANRCCdSJ3Ng1rCLGAJAIF54N/QoPlrkDPhwYoZqL8TvzaSvHGsv6y
	 U5L1jsIIVKs0DiefWyWlTnk4QybxYR+r5oXvrPAcGVoI8HxpPvCkr55nyMVfksxMh8
	 fyPP83F/VTrrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD0C7C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956786276.19229.14600050247466079026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e2cf64babf3f8be8609434c99037f2281c8d77607fbd183c0a45f73ff13f6d
Date: Fri, 28 Jun 2024 09:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719567862
