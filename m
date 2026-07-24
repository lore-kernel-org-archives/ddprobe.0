Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AB0477E4C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784936434; cv=none; b=eUXNIc4QldPVABrkosuq0mtf8QbE1zzGXP9nGzi8wh5RzTmo806/PrE13f0+V9wt4pGVSAsdAn17Ev9PV3PX/bdKzGhpP+n4qFcUzmhAqlF71fdHg831GAk2p5mFQzoGMwirlgk87X2Mvm5t5HGaDKLM6c/eX8I7oAp+2SJpL4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784936434; c=relaxed/simple;
	bh=n8oZwrjhissQwEqUXbJfqDmUg4KTpxyw8ltDY+JbFDI=;
	h=To:Subject:From:Message-Id:Date; b=us6Q2VneD5L4Dznmz7F433adJ9QmWDiSkGahkI7HIkclrqNt0nvzGgBebCwrSwXFQOAD35c4SCrX81yuJc/ylopZa+j9pz+GjGyeKolgQnzYL42O3imJZDvt0jzM0f0VHPbB1x7AnoqqP1/gcA78zqqOCzqymws4qkUaTngAw0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQAc5fvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQAc5fvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC880C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784936433;
	bh=n8oZwrjhissQwEqUXbJfqDmUg4KTpxyw8ltDY+JbFDI=;
	h=To:Subject:From:Date:From;
	b=kQAc5fvGfRkhxe9YJ/6M6/GgCAzvy9qB2ZYHA1NdUX/nCBeyNSwLwCEVVK6wUKqZU
	 99KtMYWhORGlW656NI0k5C7pioa9b4EZoY09Wh34b3Z4YWZaXrybJki6Z4vXRR091q
	 QzLPcIclw4VN/+mupwLeo0iP5xhT8J/3WlSGmL5A0PQ4Z+GiVAnZ6+KU+Idir5SrZm
	 GMLldE6tJuIG5L5D+RYebvhjvvHE1XeaA63U9aCZRZoawvI6JNTjIbYUm4hACglzKZ
	 3qJZQ5J3Q79tANaukO287x+RkxNn/WRyLtkZTbLKzuklthgptTU3IcitxWb2mkCT4c
	 L25lb0V7wF6vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B3CC531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178493643368.18034.17455053688036191995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8877540f615681be1ab23c6abc1e73d2d361cfd7c24c8a7bfdd9716a50563708
Date: Fri, 24 Jul 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784936433
