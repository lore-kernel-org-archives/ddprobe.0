Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2230368D7E
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782119794; cv=none; b=L4YJWQkuh1xdy1oeJaR1fsXLbZk73wGfNXYDptk4YnZauzQVprOyXjKgTJu6B9DTwXk1Ydmsf2NpUeWDc5p9T1iyVVejqCfPjSLE4SGWtfsa4aADP9SCdxExwVDzWhL2wxWOPfXw8STMskxHLVh6QLuz9i+YG7pXcWVnZFUzOFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782119794; c=relaxed/simple;
	bh=FyNtrLiCaVAEc6fALZ3J5Xjo8VDpPcK+iC3UYVzau5Q=;
	h=To:Subject:From:Message-Id:Date; b=fISVwtDQGTTOjV1HfxcaTaKUHUbh2KdxQ4Op5g1tIQyA97bEPSSiJNbdJ1U04ebMmLPGxHTTTwPuXpj2B4DquPLoyXQFq4bdFsWArzlv704C8+XSKeF0gsp00UEX+hHZXXvtlpekruZRuM542zI4O/UF5AYQAymf7y3JmePtJ5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZ0OqUAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZ0OqUAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2BAC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782119793;
	bh=FyNtrLiCaVAEc6fALZ3J5Xjo8VDpPcK+iC3UYVzau5Q=;
	h=To:Subject:From:Date:From;
	b=bZ0OqUAHqhCTRu2MVH0TWYLoveTdBlIvEkA2rYodTz6ZxFdsG62KvrjYkqnHXRQwW
	 hlKSGtnt0RaRu1JrHNzQ7zq05r6Sc5fXaRSZFk71rbIxyoMUBOChheImwR1sNficaV
	 Pfm2zdakBAr3+6LE9NMC3HfVLRSiEVRvCnh/h4svZhhDqwaPSKRKxlBDFgixbix0DQ
	 2CebjIcLxSu/SdtWmPIceM1Q4EhR3STvXVlJzWeDjGQ/CrSbOg6T/bm7lQFLW82MC0
	 p/RNNd+NMe2OQ3yVtRG9fz/4zGXke/avfHPlYxMvLP/yznD8JNQWi28C7mCuVdE4PI
	 AAzugwDUFdQ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27F2CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211979372.25165.354791056405372520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499abc2dda76084820128debd6bddd84a1c5176334e9fddc0a6085d5b1cc8bcc
Date: Mon, 22 Jun 2026 09:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782119793
