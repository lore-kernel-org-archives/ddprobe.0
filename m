Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C443381E9C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789551635; cv=none; b=KlbLOAu2MtsYBggnuNuTE8cFmY6oDoF1El6+eG9kXyV9+f3lp0RsAzDYpvxX5XdAvm8dJe5NxkjykV07tqMtFF2NwUEI2zFoD4NpyGnLwPN2fyEMBcwLN7rc0DUde7G/RHxjeq0JHdgy2UnGZ/NUlpjZqdNjpTOjqxtaMsqxTYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789551635; c=relaxed/simple;
	bh=71pIdfxruVUMKe2Rr8iM3BomZ6ZgjmSDOj53YQjXYyg=;
	h=To:Subject:From:Message-Id:Date; b=h0ptsZ7ou2JspKIvyNPylz9rTAN2oMBbkSekSu9O6L7OZd9egVSEFPP/Xeqv1YlUZucYoKuLk9SI+WSiB1gjP3G78e88YvCZmOQ8V+JGM+Uxt6CAq/xVrduAioSkbJHXQJHtgOFd1H7ESMe625oYEtG+Gl762yEbCkOCqHM9lT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLiNaCyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLiNaCyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3570C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789551633;
	bh=71pIdfxruVUMKe2Rr8iM3BomZ6ZgjmSDOj53YQjXYyg=;
	h=To:Subject:From:Date:From;
	b=hLiNaCyGEQA1mNPHpivY/JU4mS1JUYo9Iq2oU7r7SZB4ijKXSbMtqdUdsluX7/FkU
	 zzRed3jtjHkw5upBLWIBHBc8/Tn0Tiknrh0RjwEPuNT4THkV1i/kAkbCTAyQNapQGe
	 jslGDtXcTPjQrxGSbAipQn/xsW9B58BVIdZI3Bum2PoFkFKKL8k113Xazv9E8ppTiw
	 ekevZouoXqWOi1Wx1x6JN/s7pTJCVJorqIuRq0d8OuaMtVJeIwKDZySXe43QgbTEUm
	 JJ9d5m/nGv6yYtFbWe5gQYM7Y/EMZivs+tjq3To2kxTb8ldl3Tgahmr3zcZ6cD1h7g
	 C2P5V74xxY1tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB7BC88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178955163369.24858.13379645370247510058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed28111254b216450a754369258f0bfa8a80aa038ed324703d6b017850fe140
Date: Wed, 16 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789551633
