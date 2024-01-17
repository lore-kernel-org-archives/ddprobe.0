Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D35A241E0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705517897; cv=none; b=VqduWttFMBn5xjrSutKZPeCIvCa78yu20W2RRlsvEpf412zPP9AxuDxzjjaUXbHCUGWcTxH4PCp1/uPFSjtR2JiBwQ3+6Keic2nuDeQgImY/gn4fmUTMPRUHnELKP3jLbn+C/QJNa861DzdXBJf4eSwXe4/VMiVMMOG+7hGtexk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705517897; c=relaxed/simple;
	bh=6MFfbFbMlRdi36h881A+Kpvi0ddrRTduDi61E6Yy8+Y=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=Z5cdky9NnRDfQ4LK4QUDVjAhjIcstigGRFgWCoq++hzFD3+Fr0MRKKyWgGDXNgm+RH5ORm0B3RCyfMBo6HYC47I/gVsFugrJXN5UPWmGKANcmySVpSVQDURstfzrUJiukYWjdO97wjew3KcAPehEZFfxda9DvdRqTmNmy9Ny8xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXv/wAX3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXv/wAX3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5F7C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705517896;
	bh=6MFfbFbMlRdi36h881A+Kpvi0ddrRTduDi61E6Yy8+Y=;
	h=To:Subject:From:Date:From;
	b=mXv/wAX35a48PNtF4d615zs5PXMw1YFv/XXT9Nx9Q7KgWtc9eLZXmqWIlUOMA72SD
	 wBgIL3mAqw0Bq5RKVtIvdmMR4xBr1NqwZiPQ283xLhob5AtXzTO/y+hWm6WSRl4kQE
	 nV7TqCThB5X8I1Iuq5eHJ+aFK/so9sfxP9FS9ERhkMrDt0ICQ/L+xV1Y9k8jyj637g
	 Xt3qts5BlfiUsxRWwoKc5suifrUyrQRPAvjbG2HA/Hg1LHGS2ltxt07nAkivhUMA4L
	 kD8oMBxUESzmt1tAc5hMkSlJxmWhwPR4jRFLi7j/Kw4RXnfe5cNRhpZrU/zQo5eEz7
	 pgfGY4TNtZ0lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621C2C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170551789637.17424.15796610127278195351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d054d6af7a2e5d8bb0255dfd58f8bb7d1071833527b84a0f62bf19eeb316c8f
Date: Wed, 17 Jan 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705517896
