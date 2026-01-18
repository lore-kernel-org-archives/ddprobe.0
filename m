Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BBB31076B
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768740834; cv=none; b=C+4QLxEs81tedcpQNcpd3ZaH28aodm83ThX92TkQ/jrxq//7ceSpZvTXZ1UchFmQdnYqcWaWCRQJl1w9+yS4USqvozb498QUU1ev7Slm1Tg9YyyaUxMBg55i5MH6GEgWVtozuk1wSFtgK4jEkwfaKhyHRSGkXfmxutdxprprDvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768740834; c=relaxed/simple;
	bh=htInjkd3vYUa+Mo3jPXnKwZt8v2FER9yJK7cOniem5Q=;
	h=To:Subject:From:Message-Id:Date; b=qaN3uv9xS+9FcEMoemXbDRN3jXtMVG/GS4TcUIHT+irnVInnZxJc9aCCywgWCebVPigLRDh1VF0dMw6Op6qzs/WlAu5UvlqU9/3FybMqI+ycW8ButuxeKKr3VVmoXr/KOcP7kFaoMYZyHj/0V8WTkl0/xFcAszyOIf3zGkG6JpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+OFaAVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+OFaAVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2A4C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768740833;
	bh=htInjkd3vYUa+Mo3jPXnKwZt8v2FER9yJK7cOniem5Q=;
	h=To:Subject:From:Date:From;
	b=r+OFaAVRKuSinDhuNzibMXLMAy2QlylnBYJudLAedkPsQtOxKre5M3QKPMfVV/cRd
	 NABLj0mWGMQcpoZ+mOeaqKUZJrLAN8wNfLlHLoQJkVh85CKvG3R3aoZwvhW5etgWul
	 TbyatER7/168oI363BU8xvf7/521rJnlw1bpATKhvCSqrG3vNHClflKNNLJsfpVaFK
	 ieRM7QHuMjEvJG2r6GBONeatyb0/cmg3aT2ZmTGj566BBoPS9Gg5Zj0HZRz8rZmnPK
	 SxDWFkSgFcwvM3HfNhA0j5e+jlDGH5mXz4CekZhxkyEvnKQRFd0H4s4YSajDqybRtq
	 ZT+sd/6Arm4sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA11D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874083357.32252.6527939306128495819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f20d02a738985b4d4d604e6e659144bbb3b02ffc4b3cc98368b48c9f9a011b41
Date: Sun, 18 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768740833
