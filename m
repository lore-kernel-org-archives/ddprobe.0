Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3946F1925AF
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741703934; cv=none; b=PMuqsOxcGX3m0Y5SQRTn9KbL97e2bG5HOcyp9K4n9rx06OrV56YACqbnuKMOaJFUQ6PAtcIlu6uapEVyQZwz9zuhAo3s8BKjgzWeyp2PluzS4wEyNsacujcj/aP8Ex/hiTpqZZXxIILf/r6wHTzn+cWFZn0A7phcYyTV3h7FNzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741703934; c=relaxed/simple;
	bh=x5v0OtPr3/2d5fW1zU6Q6Z23tUfPHDxzHHDvLxKIyq8=;
	h=To:Subject:From:Message-Id:Date; b=YKFRUteAJiDUlwd0O0XI5Sor1QRxolDqhoOI7zEYwUo7p0h/51xbhWPdHBc1NiencMO57CXzfywd33fPvAvjSaoOepVhFqPrGkozlfikdHoEYfuSI6I3pYKOk7tGUr591HUHskFzf9GsKZe4N0sXC/aSvNRK9S5Oax4J1OMXvYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUWTNF+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUWTNF+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FE3C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741703933;
	bh=x5v0OtPr3/2d5fW1zU6Q6Z23tUfPHDxzHHDvLxKIyq8=;
	h=To:Subject:From:Date:From;
	b=eUWTNF+XjI2al55S3u8x1I63TSpoMGvXHWzSitBthGQwaYaQHtdGXJ8CunmLOh/9N
	 EYSgux7up9XQ+FzR2Ekn0PFdfWsQX6hxLgCwX1ZMoY9i/qxtIXBVcotUEAX/sKuMLD
	 MuT7BzUL+ZmFw2E2HHGHyUSbbcsmcu9uRDXMWbYWcqzzMf+aReI0Mnsvrb7n+qZUkF
	 DPbF2dvD5TQOdcSOk6swcjxGkkPAyIJW4b6PJlZI38GKvTTnRE0yzuniGvVgxyDEjv
	 C5EKHsKuhFEghIgu62W/R2cT1nyLxakBdYK/brasShW8zgTxI3aUBgyxYmCQXKdZWj
	 B8nioCeBEkYBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9742FC282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 14:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174170393361.23708.3888176244814497986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e65717328881c0d8b5185e476caeb3efc225af102fddd33f0e41498e93f36cc
Date: Tue, 11 Mar 2025 14:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741703933
