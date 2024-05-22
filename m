Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E3C6CDA6
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 03:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716348803; cv=none; b=LgMCUTquN8cj0tnX7thGFIJIYN4FX71Dq0CiepiDlWor6cYMrBhYzc8u81upcOA1C1mxZutGMYkomiOs59/V4l6/rlfFe7/qOJ/Yio+tqKqf5dlmk8qatMc9TTWOE/hERipqv+LUTESHWzZ9GXZaMFx1C0Y95xQhQNOnaE/QvQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716348803; c=relaxed/simple;
	bh=YBhgB0ZIXOGH0a5qAQ5Z9niHNAYuVjFoh+sBpcNVuBk=;
	h=To:Subject:From:Message-Id:Date; b=Q22QjonGbPfGyzIZqn+nNfJ0E5cj51UpRANyWyBERy/o8mPMwozD2jdm/rbtDFc20oThGuus1GOZEeQC+Vmt3CUrOu49FImKBFDcCENoH4qK6LTIfhpsqoDCKdjKs8CLjlPQAY4P7/ktZUoFAU8QmgCdZN33KCOe7LOlddsWC9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqAfCvuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqAfCvuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED5A1C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 03:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716348803;
	bh=YBhgB0ZIXOGH0a5qAQ5Z9niHNAYuVjFoh+sBpcNVuBk=;
	h=To:Subject:From:Date:From;
	b=lqAfCvuBpkXHDkb9KD7tV1ocS6ujraY7FxGmKRiI2UiogOMMRl2IlwG/LPSh56Qgg
	 jYWM23UnqVuAnt1ettg9lvldv9hAnQFpW0JARDAyzXaDYG7RxKo3vrROPoogWgwehy
	 nTvNeq0J8Cd+moKOQ58DtkwtPD0Lx/jv4bw+pTpXT47myfETRbmS2Lw4jj3Qb4WGrD
	 VJxV7JiWGH9v1YuY9b5rBrn82KyW3c22lsmhX76rxosbq88Lw304TO7Lx1KVeCAzvi
	 KiXtqHg2ZorEcDH528ClHKTLno4/hmLZk3goShQOvw62US9lVof3fgb24Ql655yDoX
	 HGYm6p+QCb54A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2C61C25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 03:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171634880285.4247.12813351619612550201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7945b72cfbfcaad8d62550676b015b5dceb836508e5c42684f0ae2e69e5f37ba
Date: Wed, 22 May 2024 03:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716348802
