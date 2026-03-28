Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD1E39FCE
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774715694; cv=none; b=BFOTbSuM+NbXcsaIuPTBOrbdObl+D/9hvHfrQzTW54O5BJxcQ08YNzuK1B30N6rZXlNu79IfwpcTVqeRMYpvQ+bCKzOjqp8Cmbw6BtdgNH4aqaz0HfBDuC3CIIMbMa1YsbSjzUtB8wZFZdT9wiNag/JDSXNTo7i3b8fCqWBM62w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774715694; c=relaxed/simple;
	bh=gubzUZ4javrd4g1LS0AhWOHjmQzsadA0s88VQymTgI8=;
	h=To:Subject:From:Message-Id:Date; b=Al3VuK3ia7lG2/IbBkcWLkSJcBm8kTS5LuHHZQPlAZNVYsuCgxA0xKIhe1QD/st7Ul3R5irb1RPuSU6rLNHZ5qmYWrUsRe5wMfzeMyL9LrHwzkleaOFRErboT3Xji3E/PFqyFEgZ/9swiPtCI7L3NZcU37FqrAKDcrmvlnCDo0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZarD2FK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZarD2FK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC620C2BC86
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774715693;
	bh=gubzUZ4javrd4g1LS0AhWOHjmQzsadA0s88VQymTgI8=;
	h=To:Subject:From:Date:From;
	b=VZarD2FK4nW55Vv5CpBbIcX1JTD3W1ITiYbK3aPxJb7BG1fssXbWEARqPjdBcCdxv
	 OISHiMrYcoolbmQbmwMbAoOkTHzzleffhE75VtR/v+pKJBFunJjHMolzDMaUw0094B
	 GCZgiIZXnAkMdx3lEzKBbQSBFsY8/IxIrCk4MI/emVCEQW0ZirfyNkoKxW9aKfYAH3
	 wk5F0c3bRt9juaJ8LTtG9ija6brtWLmupHkz/H2GcV4ngOwM0RFlCgtb3tAiKFCIjI
	 mS3Atv/9O7wpxC1wmKenHNSQ6If4SpTEfyr0ZkQlfJPbsLgnVD+017NEnzBDYzbm7G
	 M5toi7Hf4Jovw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CD210F3DE9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471569358.5464.9960050065458075349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c532d1bf9e0eacee3e6b660431d46f278f6111955e48c373b0bc29767a280c
Date: Sat, 28 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774715693
