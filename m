Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDC417F7
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746242994; cv=none; b=emTnyenvz13iax5mcl2QNEyJdHSrg0b3bHvYE8h0WLTFMILUnNSfWKZ2q6T61yRUAC7PMNyVkDdsh8GAvfsNV1/mnuJw0wWOGYzahqULM6nxx4J2aIebA/uuAuAM/al0m8OFc3gJvmzKnN30DckIeCVVA6IZloHNmlGT2BKGZq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746242994; c=relaxed/simple;
	bh=YOcvoVVNovu0g2BmwlM4DZH/NQBhniqI/EyGFgZcZS0=;
	h=To:Subject:From:Message-Id:Date; b=juvouCNbwH+W88aQN8BDqjuQPOFDIi2G2AQtuPkBFQH0nE91C/HcBIe5at9EAPb822RAYZAFWxBhdLsHGU02aW9RKFlhXS32lEu12L3SXPS7KbAb+CSx6SZ+E8GXgPd0TCT4ZLjOJmj3/sKTrBw7klTxBVfkMgTUz5mQ6cyGgKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=li3Yek1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="li3Yek1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B18C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746242993;
	bh=YOcvoVVNovu0g2BmwlM4DZH/NQBhniqI/EyGFgZcZS0=;
	h=To:Subject:From:Date:From;
	b=li3Yek1Or78JtyR9CzfI6R6Hc7E+KhAK0JuyHhJl2vfr30XJ2z+a0XOSHml2mPT4I
	 o4evkU2t8K6FcXvyVhSEeolNKSPtfHbTBLbuXEukmXAdvbo+8O54+AKJS73w3xXV9c
	 HDmsVvTaVALt6BDOP5tu+0fdHHpTCuJb6wguo6uGTVlSPALS1QEd3gY/+pGw30An+8
	 OS/jWgf3F+jH3wevqN0Nh0BIMsv7qLiScpIt0W4QouWcvNEprUVJPBxqIhHFY6LG3C
	 87Eq9jlGIJpMhpv0HPpQ3qrEoQccUSMnjpYdlZc3tHCK5dOcUrZ1FVQCKE/zI5G2se
	 p4Ps6oT6neGcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916BCC3ABAA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174624299358.21900.3742374956329510401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06963e52e01048d2f10b2d07af4c53603c78049cb2153922d95a0add75864ae3
Date: Sat, 03 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746242993
