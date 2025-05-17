Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3106715E8B
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747510795; cv=none; b=iS12vkN0X4iTS+I/N5hHKYjnosTTuP9/GLFDYiXk7R212ZU2yHYoE6CZ2ws/c91VaRJZ+gx+diL8qnPsthJOXXJ6bvP6e+xH4mo2Ftaf4FTFhPK6axZBsuuaodf8Mo3FpPxo1drXJ4FMbqCWhHkezK3i90T4+U4IefB8KSzzuZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747510795; c=relaxed/simple;
	bh=00wnslOT7RVu/a4NVzVsZqIwDVqSsOGwnUP/RtBFIsY=;
	h=To:Subject:From:Message-Id:Date; b=qgShpBk+8YpH4CVQwgoXIh/3OJ6He/TU6YgdzIXsB++EN2CREzc7iKn3VUwLsHy00+8mJKMzMw/4VMGjT+LW5XK0hQa7XtjCbnSjHpPSG0f+98XlPHnFpP4HzoUAci/SGgZqCb78PQyhT9YiSpsZHb/youqHrY/0zoGZ4qUKjD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S50+Ttxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S50+Ttxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A13C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747510793;
	bh=00wnslOT7RVu/a4NVzVsZqIwDVqSsOGwnUP/RtBFIsY=;
	h=To:Subject:From:Date:From;
	b=S50+TtxncSnd0bJUiAyrtUIzI04uYbN4p0co2+KsN32TaViCeQSxYMebdAqb+IvhF
	 fUofdww/dISuDJ0IaeKwMBaViBsazGE6RzcZ8gEOl+bzrlpFDhjpPkycGKoB45NmdY
	 8Jr5pLjONsjAu302Cjf//bpi+5kc4JvraF0P70WeIgBKp0KpawX3lkfx0xdDUyNYMJ
	 XkA9UbAl1izq4O4Xo61MNDj9SWC1BBhIFMXl+72c3J5pqAmn9z4A9DPXHZqpvALlyH
	 D+75gNBNoP9+QnY818CCmTSrE48oNSxH0n0RGsbVMCOQ2DDHwAgo/BBsMysW74Phut
	 /HiwwsYnW812w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90310C3ABDD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751079358.22003.1058666913688936124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b93686942f09ac68412a79ac51ed9a505211d8ad23eb1b38c59c1fe24318e15
Date: Sat, 17 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747510793
