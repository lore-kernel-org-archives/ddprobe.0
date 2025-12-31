Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEE630F52C
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767219834; cv=none; b=XdehyzBj2sg9bkxYWao46L9mFROkvNbkJcZrLObSzDIhWx3vT8dUBfNRXqIaTUk+pB7v1kq6uSFarUc3CEr4ez1J9oyYmjg4fWxpmxqAB6ebC5bbDfBLl7W9rSQLB7WXE+R6RE+I/xk88XaL1lwoIwWFkuUYB1jPJ5E5yYx90Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767219834; c=relaxed/simple;
	bh=Dcfmaw3deyHrKK1h+kkcPoYXXm28aLYzsyIOnL7lriE=;
	h=To:Subject:From:Message-Id:Date; b=BrWMsU0Zsgfm+zhwLM/D5SoqdYC7aHaSWn3maMIpuer6vFCKwrHUriHi/3p04bKgy/f7l3VB1Ak8D3a+9yWYgdrCOQCFm7rMrcMzG2eCnR3uAORc3fRsWcMTIDq1KPFPXoHNuU//ZyOKjvrno7keqXfO4LInW4v1sT7ZX03PKpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiOMbQzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiOMbQzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6812C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767219833;
	bh=Dcfmaw3deyHrKK1h+kkcPoYXXm28aLYzsyIOnL7lriE=;
	h=To:Subject:From:Date:From;
	b=HiOMbQzSQWjcUr2sp/UUoYuPlP+9v+taOinacMdh4svNZIGZv6i2eTYE3Bohv5d2h
	 p8l/mvL3ixcHoxeK9JAlbhbUra8GdvyKYGzltqnQGhJp3e/xuIvVKo/V2I5hkV69gf
	 DM9/7U32McFjYkLhu7xJ772TcSPxxRhh0TGk1jyKaxAuSipYzZPYchtE/GHyd2oaty
	 4zeqzy/ou3qNbCB/7TvHYURyk/1GIPQQlXE+Hm7rUHGoTwv87LM3Xu1cfojqFLBYk/
	 vyb/AxFPcvAHQwgXa9dDEEvOrYBv3usFDxoHorWzzSjVRp5WggX1aLV1klnsXe05Fu
	 FZsM39atE48Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D22EEB570
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721983358.833.8159050468089780857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d664890d4ece539c07208069813895da026acb07128de75062be7095e4977d
Date: Wed, 31 Dec 2025 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767219833
