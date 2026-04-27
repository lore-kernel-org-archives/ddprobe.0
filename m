Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352F63DA5CF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777334254; cv=none; b=m36A+xIT6luqJvHnE09aAdkw355zFSMS4GCBjPo4b98gPZXeXpgoAvoNMS8zm1mBez46M2yddKwZd+SP43Of66WUUVKu1wF4gABHHPZsDQsTNIPhse5nYzme3c7nqHL0G4cbl6RMoHYN7renyB3ynEdGcF49NSAa/8Dad2IFVl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777334254; c=relaxed/simple;
	bh=B5FeaPVFhDKfEvK/CSGEIvURvyppuhURB/Pgg1A6ImU=;
	h=To:Subject:From:Message-Id:Date; b=TaFLa7ZJ+DxVTBjzv89yM8c7d+Nvr9NBux/SyKnFvXAvvqXvvD16AvDaZXF1X5lgDJC11T32C2DFiM56LTR/qV0id9W3xwftmSZ/krTaFN6jj8WkvR5Ra1b/WggY8Jn9KWCaat+YcDpm+rn4qzjbSxvjaF76LVOwFwhSwMUCx6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCfcWbKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCfcWbKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD34DC2BCB5
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777334253;
	bh=B5FeaPVFhDKfEvK/CSGEIvURvyppuhURB/Pgg1A6ImU=;
	h=To:Subject:From:Date:From;
	b=uCfcWbKtf9TGy4/k4vRiIyfdNv/6rPjR2Zu2exEvLtVX/eAthn90L6Oag2dUl4NPi
	 MUe54e0Zc8kIKH4nCdCsPOhEn1U6rIICq+56ABSCef493lLNhi1bmEj5KZWpLZjYab
	 T4w9/2d4Qp5cPdGB9Wm1QqAqAZsAd2d6oaqrKB9dgloSY5C7v1bwKkHmTRc3U2bdPx
	 HliT7SA37I8jWgWMGkxjQQA1J9rk5q5b2YZAJLr/HiFIswF2Aglc6xin8C6rVG4XNl
	 A5X9ybhi7FlTOGl/2UMPXSUof/FEPO3aa9/yHMflzXNGCWwa2s/HdyRru/KwgYOU4c
	 jkUg6AFPPKFdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFACFF8864
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733425368.10621.1055640933397657107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7773d4808a0513065db3873aa7aa2f264311319099350a828104940bc3bacf47
Date: Mon, 27 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777334253
