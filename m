Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9DF2E8DE3
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777412254; cv=none; b=DYGySALUrZhn4lWd8zWfehZCgvV5NejF6D6GAwNIVhoY1ymMHfBL6eBeuEpZJslzB8Zu75kuqkvVJi921E27ebQYlDgrfvK4UC4NAmZmeWeMNOSXuZMFxwIaykX0jd5UfgukwOhJABRTD9Va6aQ7pxYewXELvjHaOiHaLgMEX7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777412254; c=relaxed/simple;
	bh=Ceux4OwCszD0s3BPrDZK6+rD8of9XVN34qh3aFUGLsc=;
	h=To:Subject:From:Message-Id:Date; b=WoAWChs9OvZztlJUFDGtbuC2QyUNL4WSyRSQWCCly1XcimPBTbgapk8pBLleqi3tK5RoUhbkt++5DAwUahtWzcJHDvP5rOaGbtJsX7zskzP7B2wOEISnmamdrHYAe40+A4YvZwjMeU6NNqthwSiqahS9tAUw/y6W7VbQXz74GK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPrB5tDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPrB5tDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC00C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777412253;
	bh=Ceux4OwCszD0s3BPrDZK6+rD8of9XVN34qh3aFUGLsc=;
	h=To:Subject:From:Date:From;
	b=DPrB5tDEcTHSxDq425GZZ7H1n4LukaKPGS5itWyt+iJzdsgJpXeBitLFhnTMEobAl
	 a79uui9FyKfVaJNxNwd7JvBufKr9Qd4mI4+t5Ov2x5kA03oiEt/x3iOCh21MC2MUgt
	 aC4ulV3Vevdmzw5MgCLRpDFXpgNkdeTbmZud2QNiHwBSj0LKVIA5/yeIAr3pXY9ooP
	 RWm6XULjLTOVeHYRC3UkTFhMP2PklLDsb1XVweIVUSOBpXmZE1qYW/YmjSBD8xRfBo
	 8I6M//KCvZr7z926PWJm2JB5/g1xzaSSowDTORjAloR72QyHlDfxkIGHBNhq9OXZ2J
	 4GiwlCcleplEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F1AFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177741225369.30722.9940329681039378590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673503e1ef0d20314fa06c7730e06854ee488e24769e129eb7d0480e895db8d5
Date: Tue, 28 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777412253
