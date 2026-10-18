Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D7C386441
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792318234; cv=none; b=UjPIp0uRqNj7T9htN96HMgJHoTQWpuCWit1XMlkipNnRBB4uLeJzxgKGfko+iMkIHgRaCEE2dfAKvddqGm3KMRj4EpblpPvaQkG73L4WDPcYKhq05V91CR9f5ebU5okqeQFTp/cZ0V2wpI/EX91/DDJbjw6Olvp0JoONY4fROdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792318234; c=relaxed/simple;
	bh=wVchjy7SAxezo9Gbp2n2MhDsLFMn1/AHf29hmTy+bok=;
	h=To:Subject:From:Message-Id:Date; b=AXLGrkkWHX/ag9bwOMzeeCqekU8lVD6jTju9XQ2mMfwJwvyhsuy3yh0v9X6AHHLoqBcLcuxAo5Cg4YdSr6Tmbb3tjdzYRqd2xSyG6EquzIvtJ7zdkrWT01yENLPJt8J6gAOFfSlid+9YCRoPb+25hRG0KaDKUXCXE16gQQiPfqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWv+1AR8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWv+1AR8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2025C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792318233;
	bh=wVchjy7SAxezo9Gbp2n2MhDsLFMn1/AHf29hmTy+bok=;
	h=To:Subject:From:Date:From;
	b=fWv+1AR8yW4QZ/zhL8hEJTp3AOkn1zzeFD+zNCP1OiN96kJljWL7E477eb58SGNLj
	 GR+Y7geNsxbEDHwt4AtxejgmH9Er6I53itCW5xCvwAv1ef0CuosKjLSau1z7tb+PPr
	 xVsCJVPGv+tb21hKmKams8jjZKsNxej01JxsDyfrDlD60lKXDIoHl7h/Xs/X+Im+/f
	 tQxV1EnGTMw+KyyMSl7jSi/3EZs2kEAUr1xC9ZEPfrpOxgWeSJQIl4cfZj5gQZf6KV
	 qHkqRj65izoOJvgm1K2L/uA/aeUjQZET42dnPa01VmP92AAKyp27AQu+5hBw9aasm1
	 CMvXTHX1C+C+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF22CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179231823368.22744.13797772527009727462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036b1edbea2456af99018db564219d7b6d13d8aa1cfd8d204b60229b26159429
Date: Sun, 18 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792318233
