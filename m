Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FF12EAE3
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755406194; cv=none; b=I0SXwMTvaRp5pY76rlNkt1Ey4vIjGLDEtegtFqgDuukJBa2uWNYMoiBsx9ysNU6Wq3CK5RtJRfiD+91t9IORRbwEnbICp4SYn7p9CVOnTYQLl2UBudQNygghpiqlxA2CQTd60I2SToWLP7VeHPY14C3SaRu8GoM7g3QIH+XcZWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755406194; c=relaxed/simple;
	bh=T+wgc0mCNXXBeIUQkJvkTjUrouqiZaaqdIt8Qow5NkU=;
	h=To:Subject:From:Message-Id:Date; b=kW5PoxMRyO2anUTCqbiNoPWle3sJ8wi+/+uqld2l9kOg1bnpJb9oxnwe+OwafHqghBPX8dvwoeZMQs8zraKGgHq66CuzJPLWYhR4qSxXUNPqusSKhdb4DHCENDnzUMNpDnLXwnmfXtrBzmv6brMjxTaDmqB5aVLtsn8ySFa8JJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLGZSmn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLGZSmn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A9EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755406193;
	bh=T+wgc0mCNXXBeIUQkJvkTjUrouqiZaaqdIt8Qow5NkU=;
	h=To:Subject:From:Date:From;
	b=JLGZSmn7H4Bi+zkLhapjQQCPy0/H8IsyjCdJx7TO2h0J3ZUTKLKx2Lfk5s+PdHLAp
	 NmTxTUTyYfEoYRlhYK9UDt7GdHGKVZ37PfEdX1DYPX5Wzdi3AwzCmNMWOj6q+FLWwe
	 NMqhEBusSVSrZF98GL5r08ho0y3a+eqgA31MrW2NZ72JQ5Y3qsmHxXHjwSoIryBjq0
	 IcVbiT6qxQ2K9rD84RjHxjsKYZIlinuhc20K9LmLcpTBn12UO5VASujLxr5tabBw2K
	 c04563zKmxYA2I1bo6HETrhQzdrCxcHuTmoaqigu8zuDTp/Sv2U7R68lVQjyFzYoSs
	 PY+keMMMmYquQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A8ECA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540619357.13749.10375001013287665131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d643cf357ed473e7bf6c6ca4ccd06fefebb6f8ee990ae8f765fe88d15af25f24
Date: Sun, 17 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755406193
