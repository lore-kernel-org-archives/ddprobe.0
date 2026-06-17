Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CEE27A92D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781700394; cv=none; b=ePByFWMC3u0lcGLWxU9XVp7hgS0QBn0Oa3B7NIsWqU1EF73JEOFlb7IEzjqToT9cxuc4KWWct9a0AukTvX1fh+W4SDO5TIOssJbzIRbacWudtyJNZyT0CG7wb/2pN1MH33HRhD2Y+eJynedv5I2RWA6FhwNRU8y1MdHamy+YFmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781700394; c=relaxed/simple;
	bh=aZKNJAbmeJuzuR48cb0JMF5tm08SMrwrs26r3leUhRc=;
	h=To:Subject:From:Message-Id:Date; b=CeLROZOGSE2c22vGZWmm7+VnSF56LggmDROXvXqkZLwFZI2EIUlt5HmxP7u546ja+xttRdxwB99pdbbyaSIBJncXmGFmWViQ2DVXch6HflNWgYEo7TgN07vnc2WH+9PMDOIJBL9IKIXaYxE/NKSLwJLRLOEswop8Q/zM8tfHKw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3aNjKci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3aNjKci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF728C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781700393;
	bh=aZKNJAbmeJuzuR48cb0JMF5tm08SMrwrs26r3leUhRc=;
	h=To:Subject:From:Date:From;
	b=T3aNjKci3+41UD90fH1RN0ZD1fMKvdN3QPeR3lEynGKwkgP7hhlhIX9OdttbohfLb
	 qjs/otwf0/N+uUSPmskEuaz3f6eQYwVt1JcXDSMxUgcwTNzaxI0iOajTim/HwmBcWe
	 NmYd7H9xr1iCU9FwybJ1LHLxphOvGkI4fJksFcIzP1cRG1RB9ggRQTcAO2F0AvmsL0
	 3UebB4LuRmEci9EvRJdNKzgtJeWmPwJw4grQmPZT9PfcVFaHIjEqg7bh+LO7tohggu
	 ewdNvIXzWT1YszwtniXpqk+6pLPp9Ng/AOG4hpQmkU1k3DQWLz7SospyLcTT6qygwc
	 sZpryv8LidN1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21E3CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170039371.15526.11269210687241636920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362484a78a32cee8a51d92b7525d8dd3ff93a58a1bbcab34db69bb1c5a082f73
Date: Wed, 17 Jun 2026 12:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781700393
