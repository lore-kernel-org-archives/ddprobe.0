Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F6126D4C3
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781394994; cv=none; b=BTCWP2jYd8IZebvpJ/IuO1bQTLXta/6Yzgj/VPVMTbUCo0z5osk1hOYiIpImNTU2dF071iGjdrxAEuObwxo7h8EPnXjGG2OpdQSrCrYtKWAeLHa1LD2Fjompro17XWsi6snrq3dNYbWuonyDyt8YF2xopRChQDfu1WruJiN7Ff4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781394994; c=relaxed/simple;
	bh=PNhWy9Q/YstFV696IfPgGHM0s1fUDjssnqsR9+u/bvs=;
	h=To:Subject:From:Message-Id:Date; b=SoMzBDW1YwU/FIA/XDoS/iU7LTG3OvP68YVXFTcUVospr6jpWE1F3I1TV4halBbj68ueS479zHIEL0gE4JSOKUsX47BKVg6SLgHpohtMmuXwgRIZ11hsmWDEbA8cljLc+/rGfgGQGNPymXs7rl11g3o0NppySoxVoExX/9sAptg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYZP1GQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYZP1GQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C600DC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781394993;
	bh=PNhWy9Q/YstFV696IfPgGHM0s1fUDjssnqsR9+u/bvs=;
	h=To:Subject:From:Date:From;
	b=TYZP1GQgVgmptEyVbXBQqb2ePJ/4/X+rjcoEWI6pAffOtYsrzfXKcqIAjAf8n+BaZ
	 cW5TpeHTlbgk5umHUkwBiJp7zBGwduar6DrAxg37ljNnnGxHSjpDOorTQ7ScvjwDIf
	 FAywrxsLq9u4vBqjBmx7KXcHxOak+WWq3L7xUSyZS+OE8k+NVq/BBksk3PUEhzgG7h
	 mgFUQUNPEIpfPkl5/aU1k8f+I920JMJzsX6HMI8f3g4IulYXwAEb0aNi2FuJw0wHBt
	 ncOJTHRSk9hgiWIhkug6CVD+lkpfciDVlan2h7rMf52Rduxvisp0EvxRTlJK84COK7
	 m6XMoVxwAPKvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6D5CD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139499368.20989.7092587490362272877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0dfb4cacf0e3ecf122093ea51e8ec8f982bfaeecc4099ea0825af589b537baa
Date: Sat, 13 Jun 2026 23:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781394993
