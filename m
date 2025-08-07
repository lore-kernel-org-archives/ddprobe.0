Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F32E9461
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754530194; cv=none; b=YJVp+OiQTvl4O2H/oAPwP9syTU8i5oGSj9z7LiVyiwb5WfnoxhsWyjLnbvU7lac2JIJ1I5FP6U+7e3W+ugIYTJNTZmbPrYrJuzc9PE5O90UruX+6tNpcwzOZhYvf+J8Xk7FjC9uvsLAFsndXpCRwXszxCcKzLUA4diY6+SJMhBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754530194; c=relaxed/simple;
	bh=eC7Onp+9zk1L4VVh1G83cd8o/5ek9BONnKTmeWebEJA=;
	h=To:Subject:From:Message-Id:Date; b=Lad6wgXJAuRIrpY+cn3Pb/G8wo081qX5GZXKBpiXPvTYxrviMF3w8HIOFwpfYf9t/5xXBW7aJV1LVPCkZLzeG9dhRpk90CJmTJO4barwHrWLZM+YoFSGwiaeuNyF0+cqF7mJRT9B5dsKIq67S2bOpEij7rsSH87KWS4OX2nSwww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2sbGe4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2sbGe4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5882C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754530193;
	bh=eC7Onp+9zk1L4VVh1G83cd8o/5ek9BONnKTmeWebEJA=;
	h=To:Subject:From:Date:From;
	b=k2sbGe4jRROj35+LO+4P71uJvbONfQNkwLBUQRpdUc0stC5/DgZnBgAKw3STzgRcI
	 3Hum9INYoq0OVeZLBbakz6QZW7UzGzImph2jM360untNPIFO2pifLzdBKqaxRTxF1J
	 E9zsQfVPd2Fu21I0KD62Uv2i0TjP3sISeUh8KRsbnPRbfYpzVdmaJN25rRX8jPV80h
	 WmnfvK4XsDDb6lqE46X86Cximg92JyIV+hKs8fML8VAQR/oBnkmftCGGERDmMGAq8w
	 58lltjFx+5c87eGMx6xhsiznTcxjouZUxwmYzRx2eaf/up71iTchHzWfEGZ1t5x4Kv
	 IYP6KTY/5Mk2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9397FC87FD3
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175453019357.26033.6279672234261989568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5496e981aac958dd8f23c539ef345e499c99058118fb9f5804f2c99f2df54348
Date: Thu, 07 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754530193
