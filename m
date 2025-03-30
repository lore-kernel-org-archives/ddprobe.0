Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3545710785
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743359994; cv=none; b=JA7n97Wt8/Vtw6WhtVXL3HlzdlSvWSkn5Q0n7dNEAa/DFnVe7ddYU4LG/Klg29RAGjsNmTGkjNs+KgqqUxttk/UZ+U/2AtFnNw2MU2KGfCZWvfO9ext7ryU8lyOBue3k1pKtqnIf2ZfU7DKpOSNqL9CixVsrhbycnQRYIW2xP5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743359994; c=relaxed/simple;
	bh=UMjCIvNXDPisXOHZPS4CR3g6fxEB2vCkNi3WV0dSKVo=;
	h=To:Subject:From:Message-Id:Date; b=Pm/FKFr4gTzP1aNN+kp7A3ARzlhAzRUQwn+QtfGsKWgKtC+T60rp8K+N2GaNvrDOvg0NP4+w3xpelGqudxuOMIpNOvY9O2rfoueNSKlICTrGsJM669u1a3CIR9IJkNXbFq5zIcMzMk6J7S5QxJkLqmVzSASqcyaOzwWpwwteZWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiXi22bF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiXi22bF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8CAC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743359993;
	bh=UMjCIvNXDPisXOHZPS4CR3g6fxEB2vCkNi3WV0dSKVo=;
	h=To:Subject:From:Date:From;
	b=SiXi22bFosYbJQsKBzO+8Iwux5RYsed9YZI/JS9f2UAEqYPPhLdqAxboOHFUPsRcP
	 kw2uT/3kzB785bh/M0JrmQ9X9YhsdvWas2obDFyavhBOM/mvKHSWf7C0ZkGwUwox4k
	 Re7P3DybWOp8NL5gUgt6UVkNRrVDPWMA5CYjFNxo2kWSKarStg7Ldt0Gmg3Yo8WPLm
	 aSV+9mnIwgmjWtx0aXG10vpLFubeFF64cyjPMAUS06LAK4tPLJh14j4jhUtYH8g44J
	 y2I9IxMdRa35ucQI/1bqFc6Hd0nfVo0IWfeffxNZQd7+2KrgvIwh5RYv38hWAH0uK8
	 p4jMldVAnAeWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B87C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174335999359.10155.59361626554920021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d312bbbf6c6ec07769a9a980ab6c87c83291e23231023d331bced519f64cda0
Date: Sun, 30 Mar 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743359993
