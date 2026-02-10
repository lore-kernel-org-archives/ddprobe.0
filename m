Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0977C30F7E8
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770741834; cv=none; b=AEntG8sdFeRiqEy77xzAtV5nY4DcBz2NJcsS74PVqQb/1yRarhYzq04BTKv9kcY9Ld9+6Otlnok/3BnoneoqUWrjmREfVEiuww/3AYViwJ50DmXnI39XAyhWaNvR7yrbB445chocspskOolNpELdTljM3RzZSsysRxEBhZPdjog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770741834; c=relaxed/simple;
	bh=3g/wAGKnelGSDN3y/ZcgSlHiidvP9xk+HvxUxA22hVw=;
	h=To:Subject:From:Message-Id:Date; b=lXgkhoJ67St26DpaCK0JXD61d5D2Dqpj/81BvfE+jwUSpPrvpxjK1y9cXmx6jTBNMvr6VPeHfjqwaNkTsKVNZsgIHVx3WdKqESprC8fFbQcwYo3hSXxR4lASjGHu3vX/MkZSJj+N1noviI2kG4gtAFPUOOujeAWYyt2MHfZqqls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHvUBM2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHvUBM2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EFDC19421
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770741833;
	bh=3g/wAGKnelGSDN3y/ZcgSlHiidvP9xk+HvxUxA22hVw=;
	h=To:Subject:From:Date:From;
	b=oHvUBM2NigkuukAwF4H2uS/FTAIm2L+8SJ/66nklLBOdyD7xodpXQwu/GKMIurN3p
	 rOjDLUh1q8NcbTYrKmOcj4DBtadlcn858LE+rUCuJiegpFMCEzEHEXvVqDMESteD82
	 dkP9qIMrnkuDCZ5qkB9U5JiVHTsBg0x7+bSYgFWImQqZxk3Zq83/AzVk2QqqnHX6ZX
	 ZR4T+SR2t4e8b5puwyA5hi/cAWWKwfm714X5/MIACYidIPfSsdvQ6NLakjCOkm8yhL
	 cPnLSBWt7DUmOYdd/rW8oFJ5YxRshE9G/7FrY07+EA/zPk9S/0opmO5J/0sr961Ie+
	 ek54j1LylgYUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9230FEB26E9
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074183359.8311.1584835216544955102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359f9d90b8763e31811e2778d9e7d8266d8ca2c8ed5b953e2179a60ab0f17eff
Date: Tue, 10 Feb 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770741833
