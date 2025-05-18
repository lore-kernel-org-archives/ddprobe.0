Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDFF15D1
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747532994; cv=none; b=YrElVvUryS7Ei4u/p6HzGccm314G89ZFUDNTG6RQfHl2njqA9GSpnwC72TmmJ7N86A2Yna0cZXb8GY1hlrpmEXVgMdPpdyXjLHz+qNc9hR2Vki8tTjnxVsDitamNgyG820EPTvIQP3Mf5OCIQtxvC3zqCj6kSuQzwEOnTov5bOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747532994; c=relaxed/simple;
	bh=UNzRA/85e1d0AwCdu3XNCzeXhbIXQ2H2E4WwPAQPmQo=;
	h=To:Subject:From:Message-Id:Date; b=icpOTXbOfHk99kvR8GndlmzsBMk0pS/t1iBuc7LEjuhfBX4YK6NtP69jOKt8Dn2sO9dqoktskexM3S52rPLG8vwW2W1+dpmnNwaT2yQEZn3r7BI3Iq0LxpoMrQQLPeyV0gm31SETY3ZnGVXng00kj07Wszcfc5FmLMBmUY+ynTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vti5IyQu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vti5IyQu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20EBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747532993;
	bh=UNzRA/85e1d0AwCdu3XNCzeXhbIXQ2H2E4WwPAQPmQo=;
	h=To:Subject:From:Date:From;
	b=Vti5IyQu16vPizbhL+ZQ46omNQHiguSj6S0vhmRPL9ZX7eq6alAKiFrsAK96nCYgz
	 PEP1RCGIr1PRJyBKiu832xuCNaZfoiggp3y35YIz+o0GS2a5MT5Mt2Pe/rbokZmVoK
	 qT2GPARUQYSq/7f2OIJPLDNzDYehXW6FrO05p3eqPgK0+LgwTsv0X6FJeXQKFLP6yF
	 SpF5Vk6Yt1nFSvwk7Y9ohwlvS+coQdSzGBy5l+xxsovoN3+jus29PYnPhN6mLr1umM
	 uz2/3faV2K6Q1G57ysKoo1LimqwAzWjhflAQEA432oKgH6oR0I/WNgKkA1TNttNzrE
	 /AhCG0x57dzbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E15BC3ABDA
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174753299357.20618.8971933891902862625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4b904d1a05181fc9b7d01256ca382006ba973a978544c9ebf435d5864bea4d
Date: Sun, 18 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747532993
