Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A8A3B19B5
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785412234; cv=none; b=tg6kW7m3665ZRWIoJZC8seDMfFxb4YunuGYkxB4zgJ7JklCg9Y98CTy3UX8dAYuIGBrnxmBnc+oxW5i5jc5NwBo1CPXK4My90893Cw6TmCBz9VzyWIaI8vCjsqBbGRgVQaIsFKKC6F1IwWFMUIHqZbBrRnKNB6cV425tfPJcWcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785412234; c=relaxed/simple;
	bh=2alxv0MpGQmMf9IkfFvfsgmMmGHr4nApWkDQraoSEXA=;
	h=To:Subject:From:Message-Id:Date; b=MVo6zfoxIeE9dyiGYNotNpcgqN2DbhmM9jNKPiPB75PrDOH3cHY23cCJCS4oVgm1ud5T6HFoVWoYtAgfIomQuR6LwUJkPV38iCNk6CM6iBg8pHiT15aFx3wvuln+wUUV+yT8+baz3PEZG2IgSQT4XSlfhNLOkf0zlJEreQkA4aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMBqCLHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMBqCLHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9535C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785412233;
	bh=2alxv0MpGQmMf9IkfFvfsgmMmGHr4nApWkDQraoSEXA=;
	h=To:Subject:From:Date:From;
	b=QMBqCLHdTk1odbaY/anbRwWR0AgNOZNDynGSk3R/p15gVLQLzwQ9wCLx0InBYA6TD
	 R1c9IK0Nfie5hfhGRaRjnowNUkIO1g8xmmA8UWhtUhOXwzSz2pMST8GjVamSXdq15X
	 M+/69eMnEhFfOaPl6dd5ExG5GO1tdZyhdKW9z6JY4gh0gsp0uxkqzkZMMFiaowsXkI
	 IzC4yqFHq3I32Ve3PGfd9wIsutXsbui97JjaKhPYa+nZ4kwAjDTdW5u4mQDyK9chi2
	 JYN/C69+SHAN2bZzrTAs779asE2Un7LRtqtjHJMWFkWBZoULCHPUTI2nyNoJz8snmS
	 9XltECtDSKs2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85E8C55160
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178541223368.28393.13091164037612587262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0007f5bedb22de2cf31979f139f8f6aed6906a338ac89aac316ac2a31c2738
Date: Thu, 30 Jul 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785412233
