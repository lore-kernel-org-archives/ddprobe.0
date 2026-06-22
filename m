Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8DA25B0B9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782098194; cv=none; b=DBPL4NekkIpX9mB5foxb4MRRdTI2HSuQmYNvjAYH3EUo1OFpBXPW2WCOTiVv0z9L/ekuhugh6gUuQop9mRrxLfZp1TTgUc6Y45kZMeSfd/bAairtARQ8ChyCcxYNkIUyYF5KD1ymwjw7OhRz81U2BwDjJUbkq9Rpe0Lwfhgny3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782098194; c=relaxed/simple;
	bh=zHBlFgPXrrvK852HtNwiDYNsfcb3swVLW0F0ygiyzbg=;
	h=To:Subject:From:Message-Id:Date; b=qK6C4XMGq7aDqeG4IB4DkQ5Dztz3khisz7QlKvJA1qVDl7PAZ1QMqGwnSle40N0afQ8DmN0Thik7pqZnFDX0e9r0crVY/NVO/fkMeMwNS/uilb9uD8DFjNk+goQY4kBGbd5MbTu3IATA6GJU1bjytILvBqz9PKmFUC8bUEqGgUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQyOVBdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQyOVBdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD1AC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782098193;
	bh=zHBlFgPXrrvK852HtNwiDYNsfcb3swVLW0F0ygiyzbg=;
	h=To:Subject:From:Date:From;
	b=UQyOVBdhCbN1odHfxXTPgUm2Luhm51g009TLFvXmr4pzYY9bG9SNS8nkxrAdV5s+r
	 DRHMKDGQpaa95yhEs4p0p2qletbshOhxM9XfruMgwwLwd4P/5c7qBzC+uEJPQT3FcP
	 0eZjwKtReNw9mX9mZzlUcU9+anUmP+wpY0DW0CfPFwo5fTUgksPVoz3YKfN7YKakhU
	 2mo9bCFwC68S36vmJ8udzD3/KMgUROeX19Fe/cB02vT6v7NJ7+ZmnmNHuV2aA/o1Ye
	 o/VcQsh/ECyvlERsK+/SXzSmdgQgFqAhtxmsX4F1MW9BAINmqm1YqjiUG+j1S9w/ae
	 Ky5mG78Dj4HJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE7FCD98E4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209819373.19639.15483256457556491714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1a1b18fcdbee462841e26582966a27857b14fcadce5277fd1c3408437ec2fe
Date: Mon, 22 Jun 2026 03:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782098193
