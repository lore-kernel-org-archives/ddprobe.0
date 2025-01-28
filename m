Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4251917D9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738080956; cv=none; b=LvPRXBBx1HOk3fSEUBEIv7Ok+P7sI3KIvTkhYU1TGFYs2czr4eybbhNcSI66OnyEfJqOvMS/joV5NsENfDmaY2wECgj7mYhiTWtW7SOEpbrtkFLDGcBXw1YYQkZha/HXVhI7MyJlHb0xAKuJLTDtssaR9y/lKSERxJgh1ozftNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738080956; c=relaxed/simple;
	bh=eujIIHwy8FTMnwqvO5jS5FAnlt1rKAmmAiRt36e2npk=;
	h=To:Subject:From:Message-Id:Date; b=Nx1/YhaG9pWeQtzoKxLr/5U38UfsFN7aerMlVLMBLqhBV16uGdmDgUkzZqCsviFzgk9aHVrDM75rvVvv5qP038PlGwfYMi5012/bTODMGIbsnkcjkBUole/fTQTugnPtz4jg35TxC0/iDAmqnesYmZO3Bj8F3QC1qZ06aGHBk90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmd156Ps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmd156Ps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B68F7C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738080953;
	bh=eujIIHwy8FTMnwqvO5jS5FAnlt1rKAmmAiRt36e2npk=;
	h=To:Subject:From:Date:From;
	b=nmd156PsCyFAIkDg+uEAIZVWIXYXZoA3RjDWFuzwKDUjr2sCow9AlwJtbhxk+00YN
	 UU2OhA7l8Lib+8RNgNwMpPsTtKxVR39o3pndkVQ6OSNyZ/AZiIQFSDFMRjphunpWlQ
	 g6v8KlaeGS7oFg5aBoi9bANUCeno9/tvob5+EKyWTZ9UaZd2WBncI4gFGwjsJ+2fC5
	 tNNR7KQQTBa4gPkL1lnU20jK2bmdX0Ch9qJCJdTiww/KQZVt0b4/hRWAxDIJZuZJXs
	 1WYzJHYYjjX/DYsynySPNuuu8Km55JgdGC6WrdmMCtxgFxTepbTRqyEpn/KAivZM1m
	 qTG0oC2P6uyWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA92C02190
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173808095363.8973.8947366052526551840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cefe1208163007650ca6385a83b76fed94d75c6d5b77d7ec68d4609a2cdc547
Date: Tue, 28 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738080953
