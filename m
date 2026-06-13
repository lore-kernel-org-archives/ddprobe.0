Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B4F314A9E
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781375794; cv=none; b=FzVEI77Q9VkgXcDvkVyCyGwDCwYHXdbsvRBs7MzoUk59Ei4ifOL4KRCY8OLpr5+cWVZGseGfWa+BtWvvEgXk517tFSuUzPJiof5PtjElploXt4+Y62mC5IdYu06pW6cv6mNGxAX0aGB77VCvfQZR9kRl0NTIEZd/3Vbc/XBJVjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781375794; c=relaxed/simple;
	bh=EsMJ3mrJby6Aq2H05EaL4yKeW+u2az1i/tBXgVrg0X0=;
	h=To:Subject:From:Message-Id:Date; b=kV8e9uADNR3nZMQXnUMfvbtagULrp2caUhse6wRvYRNnavVERnSt3QXalmlteW2PcNpEAZkhZ/qEyB8xeG5v7jnCth6GjvQ7hEwllF982aAEOac9wPNCA8bwc3XRh6IU/1P2PraOtgbYuE7sFKdeOfj/D32zvqJwZTmJvZQGnDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnETlrZd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnETlrZd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30E6C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781375793;
	bh=EsMJ3mrJby6Aq2H05EaL4yKeW+u2az1i/tBXgVrg0X0=;
	h=To:Subject:From:Date:From;
	b=jnETlrZd1OdzKZug9YB81nsieWBJSrQ39hKzTgj1H8UjivNl+zL/wurbdyDAoXVn4
	 9QtSzo95MdKmZepsuRg4il8zfSjkHoKc1KqYFldmeOgfnKyVb6HoyXDr+jWFUjBBLN
	 dIsL2v3eDPVSLY0bLBzbW/87X+y2l6mir8hOgqX8gpNG+e1RgBU0ETF3OhcnwZSH2U
	 e2AIO2vBj8Jh2WlBhAvaXxDduxQhqMS27l4HOe74idWYQGLxFS4hiWR5sFGEVQeRoB
	 GLeVU65KDFRPaNeAJ4znyWW8xPhBybz1t9QREJcjk4GRDjQmpaJqvrjQZvaEwGGNka
	 it5HE1ZFEzuNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D3ACD98DA
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137579367.8380.355179885925431005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2784b1cb33063326464ed292fbf59dedf09eeb16ef5afdbc42126799c12b9ba9
Date: Sat, 13 Jun 2026 18:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781375793
