Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6E62D29CA
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756574994; cv=none; b=ubOjV8yn8p/zUMTlP9w6F+iBmUlYghWdgMTg64NEhCyoahEUgbr0c6Xk2FriL7hq5RizYN3FuRRtyeHjpJMyriua/phPIu+CcGgBKxU+95yBh97TEj0wiTpCzHqU9W9vgDQ55+Hbq9OHDh+mwokRapZXY6awqJSDgQs2MMHk0Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756574994; c=relaxed/simple;
	bh=JqXoGqgpA5ztEvXb7DaIOZn4pX+Gi1X51g3/lCxwTWI=;
	h=To:Subject:From:Message-Id:Date; b=D35bJf5pPz0PorrUxtnR5Z68GTNyKwPMSuq1KGA5aDTUqqaZd7ps3Po0d8CpYHHbuy3kdexhO6bcCwOLssq5v0LsEwqjxlL4yl56b1LWqxSz8zHoDP/pkD7ExFCv1f99sVsOBv7QKqTUtoW1Pi1KHK9QEN4kIMsZjYDZJHnW6dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T01EKbeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T01EKbeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A437DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756574993;
	bh=JqXoGqgpA5ztEvXb7DaIOZn4pX+Gi1X51g3/lCxwTWI=;
	h=To:Subject:From:Date:From;
	b=T01EKbePDzgTpeGZvnCLe6yHa/Biw82HJFABzRak5b41pwN7tBaY8Cn86ek33kzuV
	 WQDT9m1m030A2YPoMh4bb3axVyJ/ZTkudotnXPri8IYda0AbXDpc2praQJjcYrGwPI
	 F9YjLP8n55uL3/OnSS3H2vzazFTqJLpghNOCy+GuIT5RlCEkkA5jaRTV9OTLqjSzX1
	 uYlltKXVCEvBnmyJf+ezgjSr/iPTSlG+z06FiZ+7TcMb4Nvf0KpJwWDvZumZXUps3G
	 4j4JYwWAF3ADLElnb+EYt0TTOX3lSFeDHl+90LBftdZoeviT1CygIJXsDJRaCLir5S
	 0z0/ODhnyxQEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C96CA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657499358.20034.7627762423278667303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 599f840e6a96fb6a38a38cb2ed71efa13ed1f983a84b973671fd06ecc336da46
Date: Sat, 30 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756574993
