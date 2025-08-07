Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D483255F57
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754563194; cv=none; b=CcOJxy3JvqreWPq9gwE4sbjmssQsmdORcUwtqXXsaHp7f9qZvegLFmjSOq3oEAsU2IQJlu6vaWQI74PmoTunzzCNjjSlfvVZIrv5L6FavvBbT+qH/Q+qP5ze6SHwgGELpoMxCOLbA//rcKB3b3b8tLVFl+EIncW2iahQdS/BlhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754563194; c=relaxed/simple;
	bh=yK2wVUUJft0ae7bzQeW4GBFcleu0kTdCe3vyufhX/v8=;
	h=To:Subject:From:Message-Id:Date; b=aHLYvSmwJhik7Ps7GjMeu5MIHiCeiOWa0QrNZuWxsNMVX1cRzIS1qi2/CqOCaAO8JQ8A4pwjM3nMPUBklqxVQ738bTe2JzCDZSzj3x0e7cj9T0eIkecB4Tykh+4LoD2KSp/8M9cAUxWc5DwS1UCz4HnvqBM2nYNsnzmE19VJPqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rp4QgRo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rp4QgRo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1191C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754563193;
	bh=yK2wVUUJft0ae7bzQeW4GBFcleu0kTdCe3vyufhX/v8=;
	h=To:Subject:From:Date:From;
	b=Rp4QgRo42cFLiikxI+TcR5/iAkmKyt6rj0N8Jndrwz0kFtx2ERBczPTpcL10FRX62
	 QNYGvRvcNdRpJ0tR51WiZXYatS6k7HaLeusQThgNyHY79+BgGr0VjjmyZeaujUPhic
	 HYe+6POvxNhKzE39Lik0p/s76NSYJXXkjJw2k4eORcqX6dgtbsEV9Ay4FjBmsKDw/L
	 jPJgYo74hEIH0ppJSMsC4i0QtskDOJpNZ+GciRtQnCaPmkSqyG0RSIrrrUzF7bPHo7
	 BHnfB9l3E30oW/oLpbhZAijM1I5yBqIA9DNeJWkcyw7EN+hBEBmeFyrhR+8cJcY/40
	 Lti+WVKaiuA3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF8C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456319358.22453.17061818150168620853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51fd32ac2a89df4cbee8af76c3af75d87d33d592232479e1825b430ea6bb6691
Date: Thu, 07 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754563193
