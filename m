Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB672563
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739081754; cv=none; b=uT1dHA4vp4kdubLF8VYiUM2gz4J3Los0gB0HirlZ42Pwi2SGet5+s/rtXcR+v1U2ipbaV7Fe8X0NNyO20G+SO397jAEHg5/eNPl/EWUFkTCDX5JgeJh468w3sIQK+PR5aiYkmsxaLYQv2KWkNjO9OEn4OYoahtYfAPExkfgheYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739081754; c=relaxed/simple;
	bh=93FXNoNSmrvuW0zlhkMRyTEF8p402EzYDniEaGSUzsg=;
	h=To:Subject:From:Message-Id:Date; b=AKlghBR5pYqlqqNK60j+jAdBaS2IPamYQ+o+Fp9SuHE62q5iR38B30OVSwMsD+SceY64qNz8Y5nkbaWLvlFRKg5RSWxElYNGCCSM+Y33Q4s1Xi73py5baKoFKLX3TOKfnDQOZSSFo8XuluJ3znzZihj587eqfKiPkTg+yA1hdyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKffFU+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKffFU+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB9EC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739081753;
	bh=93FXNoNSmrvuW0zlhkMRyTEF8p402EzYDniEaGSUzsg=;
	h=To:Subject:From:Date:From;
	b=LKffFU+ghSYqbs6gHB7nRrBbfzyZaywW3PGXkm94TQNZZjowt6XKtKhmGdeWYA9ta
	 13L2Kb2hps1ImMQQdUIbGa+ZKoc7k7GC18G0WVPbrwTIGUCi9JIxoD0Uuq+y2yns47
	 Nm0UZ/KtfGAqDKeZWX5HlCWiSyDPfDnAbHtBzBu9dhLQ0LIeGhFGu7Mxxqg6Ec3dq0
	 T9+nVDG/mTmUFegcFIFdFAMjRSYhrM8/B9el5+zqyBMAzYIQrp8S4axA0WwzXhbNft
	 u+tIlBc1g/DxTxU8HAwUPuMjDTT92sB9UozeL+tt35w4wmsfhdI0tbd8jTMPW0Gvp5
	 BKX2i86d+pk9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC32C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173908175362.17404.16477539668521682500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c2320001d45985d751b2d0e12e8a37771ea3f4f2cb1df139105bc59f4f4ce3
Date: Sun, 09 Feb 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739081753
