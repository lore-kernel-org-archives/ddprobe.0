Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0492C859
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774667694; cv=none; b=KGDs/Gy/OmCvlvsQgpuh+UTxX/M6piNtfPG09KQ9eICrYil5x2hDD61SIOY9fhJGN+PeG0BjdIYQBYg6PGvp+BM62zfXeX/rfskE7DsuRYFsToV/NGwyvlVIE0aLmMq9o5AOYhquOalKIo/wyAotTaO4BzMYjREJ3jfBVA+s7Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774667694; c=relaxed/simple;
	bh=9fOpQwoFvNd3p6n2Z0MrnF+cbATLTWr/KgjWMxnlgpo=;
	h=To:Subject:From:Message-Id:Date; b=sDHbpFi0y2hg7ZDKUE+7xSkWsIRql3Ydf9R61/phLAI9PVBhWesfBROZC2O7tnSz1lAeUN2EH8fch1Tpkf4PIao9nce1VqCaXV1eJVnx+I3HxSdihPAmwDhMOTyBJICY2jjFyo+3fCU6uH80oanU8OB7wCSeWDu9avxRYe6xCiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epTM40qG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epTM40qG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A377EC19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774667693;
	bh=9fOpQwoFvNd3p6n2Z0MrnF+cbATLTWr/KgjWMxnlgpo=;
	h=To:Subject:From:Date:From;
	b=epTM40qGg1K5F/hdQ925Z4ymawcIsfpe/rNVtL6byF9u7dZ0wuPCJUAMGERx4mKvH
	 Zl49U7Q74pApM6wng+nOrxUn02Od2wKUucp5EB9NNqi6RztaBqyus/4j404q4WkLRU
	 U1N6r86++hS6bis2ZNu3gx46gBLsEz38EV0YciYFZwFjcy758lT9D8dv9K9BYqGRuT
	 CRC2aTilrjFW7ZiB5ObAADOuAh86QyG063aituU4ut6XKaDDKV2z4KUr0mK1sAD1Ff
	 /T2u+yyGRnsYPtHIlNwcm+BlTTuJtJ/jFgfRz9S19SfSL4ccOm+3mZDSTOyfEdXM4s
	 OEC8U8IHnNBWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9048B10F3DCA
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177466769358.11919.10322699809074032419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e5d75518e766f5cbd564069581db162e4cf780824506cf9deb91c5a21f4e63
Date: Sat, 28 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774667693
