Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390F885C4A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775524534; cv=none; b=SCB9gc0im6Q50H89rGAg1PuVPJYuMDSqdJHVHTp2jMUk1PwYPztd5G3k+epCsg7hH/CjUVboW5+lF26ktgX/pfPd1fBt3rcn2RUg9zYUTDwouKLcNAn3CkrFx+kB9E1IqSn+ZuL9cmmm39ATUTLuKJ4bqlBuKXZVJveDrt0Tv70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775524534; c=relaxed/simple;
	bh=6rhclxzI+miJlEJKsvRqrsmIpknI2mcAKd+6715Xz4Y=;
	h=To:Subject:From:Message-Id:Date; b=g2C91+CaAnmKs6fZSuxpyyA25QShYlSmUhguTpFPBthUqUmZjR62VaQL/EsYXRqPnDKZdxkM9OaN+aAT0iRXrWiIyUx2YBOTGlvpUMSyVH7xoi5rMc3GSHiBOWLnYq3Zsk0KyTzksaQbZi0ck9Afmx9r514BSfx62W4bNsrFrs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaANVGpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaANVGpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBDFAC19421
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775524533;
	bh=6rhclxzI+miJlEJKsvRqrsmIpknI2mcAKd+6715Xz4Y=;
	h=To:Subject:From:Date:From;
	b=EaANVGpCfG3EaU5SkB09C0o/V/eZWg33uBM1wkPcOZ33Q2q7RweozxCZPXjpk868V
	 MBqo5yiTGwItXN9Og0SNhY0yx/Q2JBgkwtA3EE9s7L6Vp4YJax760UQaBwpbWn7FUL
	 0R/yBM8ftDMygt/GYIBrwMzIehMaVuHzzMg40+zUebzHZn2cQKRBv9apjpLPIWf9aa
	 4dk2csXhNDLJW4j+keaks3388WPkMmUObJGCzmaokfJyhna6Dc7QDt2zjfhmqfE3mt
	 aYcfbQNfSw8Z0WU71kkc0kauqsF7aFdnCAY8HyssGVmIE77qRCDqA+mvPS69f7O2Tw
	 WwEhGfGvpmoNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF71FB517F
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552453369.32664.6001843865678598295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deec565d0673d2052e0313b92a3bcb24f75598042735e35ce4a2fc154845dbd6
Date: Tue, 07 Apr 2026 01:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775524533
