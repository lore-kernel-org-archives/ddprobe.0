Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C0F3A1CFF
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997034; cv=none; b=nw51D2KFlmfckThJdfDFrBxiiRhgOnKnoEOgsuRgFoYGSZBSRTOqNGbzBbxVx02m5vb6ObHEE8MesGCZ8nflWYdu5VN577rLStQdbvTWiIoaLVtqRwzOFGhlg+/vzLT+/Kgu9RYcDjqGhY2PBhwXVlqawh413YHkKKB/pIgGV1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997034; c=relaxed/simple;
	bh=dxXZvwT0J9YLKoFXl8A12HxmJvSbjVIDFLxlIWk1wxo=;
	h=To:Subject:From:Message-Id:Date; b=fFQhlGPHR81Pd0wxuznhP9xtM1eGGILcnQqEX885oLQuBLzYuDqIQ7czSc1ZeAnhwC13KWJlX9Fpi1tqbCxLyNRV6w5ay/rjCwlDgyt58Bo4Hc7MFc4002JH4gUk60nwgGeRrSx2Wl3bg4IMUgHd1XLwc2s8x80wmvQCpBjjEWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmVDEtro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmVDEtro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1119C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768997033;
	bh=dxXZvwT0J9YLKoFXl8A12HxmJvSbjVIDFLxlIWk1wxo=;
	h=To:Subject:From:Date:From;
	b=LmVDEtroGpeINNvHJvMhUhPw3q3yGQ/qZfjoF+Boje5LwhBaP9K4xUr4PRAPLF/Gg
	 /XdIt0x7pRq6G7uoRde44X2xXJO3+1Yp650jhnJXK7FNz4Pywa6oWMZ34ytw96BcSi
	 Rjc9FLFvViIyvHOoq7AbukfvqkhILXlsjy/TNOKpWTqyd+6JlAGmM/gZ4Hajp6kgQh
	 h/j7ujJCes75S+ZNojbFBmauJ4WLBsNLenTn5K9rGfTkZvR5lICK1/1YL2FES4BF3V
	 rO2LFN493KQ99ja5k3GPRdbZyAO/lm7PnZSwYEgvJBSvY87oirNXoZL2Rfw/COWaZc
	 wdXaxLVLULmYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CEBC4450D
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176899703362.13916.6285588538129724289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81a018486e65d6dc83611958208f9b37eb681667c99303e568e18246ff7e1cb
Date: Wed, 21 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768997033
