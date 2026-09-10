Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406CE4718D3
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789076434; cv=none; b=GVUWG2YQ9OgfkmBJYgttaeHnpmaItCLMSPR74xdbiYOMsQcN2FAZYJeiFc7Jr+1ndOvDmq0NiNvDJlcGnz0A2aTiWEDPIlFXvLTA7e0nug9foSnw4bHHhiz6m0s6LDRXA7cxsM1u/xFKD5whTbrvt6WzaELx24Dfq6SslRIx7wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789076434; c=relaxed/simple;
	bh=EaaJ0dqijApN2C8z9qXYf39jbcTxMpku4MQgzo9+has=;
	h=To:Subject:From:Message-Id:Date; b=QzWU2c6z8L+PjiTK1pek+ZCXZdDgo1WvVoEWzshNFWcn5tVJ9BKsaiQysxvrvd7RGO05bkNjRc7jbdoQN8QB9y//uUA5fKmamrqDG/YaagyLTKE4yEMB+YH/6t5dt+t2F82qIvTV2H7k35YS/AWdh0g3U0Th5nPksleWd7SqvjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3bjO7MY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3bjO7MY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3A0C2BCFA
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789076433;
	bh=EaaJ0dqijApN2C8z9qXYf39jbcTxMpku4MQgzo9+has=;
	h=To:Subject:From:Date:From;
	b=L3bjO7MYM41vxKXD9eRZvVJwtRVFiv0JQUBFlSbC2HXf04/Uv+7ZUU4inVmL/kCmI
	 vw1YP4YgI9rt2sV2N/u6S8ipsj3FxbsuC0e44318/pCbXEKYyWna9Q45oN2HlJL1KD
	 2Q4k8T6fuejjXJ+niNwUiPsEtffwobjSjIlA5iqygxS5S4glx0We6sdRRTGiNHeE3s
	 drtlaf8025FwIAJq6xZd9qbwyYO6nC1MqF7U8YCuL5pZPUAJyORaf7UhXpZqd33cQp
	 /NXb/Mfmhrdu60bNBu1nUKq5KruhbhuO/xiSY6hpXzzLEbaJxRaek+aHKJqfTNWhIw
	 Dsf07ZumScrGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0A5C88E41
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178907643368.1813.8547166023815172341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4392f0b114776e32225144f20bb08b78bb36b67093cb7cb66b1d00b314f80ba4
Date: Thu, 10 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789076433
