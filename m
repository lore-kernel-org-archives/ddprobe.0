Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145C01D5150
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756296594; cv=none; b=E/huHdOClieMmFiVs/oFFgblCXJ0oorNTZ51LUPOLOzN2Oi3QUogRKQDvqSGElDt5gkGfzUrIIvR3VgQrf7Y9CFZcC/YSzwqvHAePjBycRa1dyC4uBzu4fVt4DuFVDIymYGP3u7yCPAm84ZoRNioX5AFNftofX5mvSi3hnNkLdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756296594; c=relaxed/simple;
	bh=h1WzXaS+fnujFcn4/P40sUr5i8BXWFtZF4tkSJ55gfk=;
	h=To:Subject:From:Message-Id:Date; b=q16U66PQ2lvTig7JgWLMgg6mfs8imv0yF/YoFzNk5H4cjHInTKvl/1MouVJAyXjwmpJb7bCnOs1REHuRMDvFUwNaM1ggiCHfTWPl/qpHBiRtfFpsv+vgt6kPgiFNiw2JXsiFriWMgpgx82r9KnCqAGjE2br0/BwepXTkUm4ekTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBeoZd7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBeoZd7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC44C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756296593;
	bh=h1WzXaS+fnujFcn4/P40sUr5i8BXWFtZF4tkSJ55gfk=;
	h=To:Subject:From:Date:From;
	b=aBeoZd7a6Kn4gkNKzkQMcU4A05NEYqNJeUn5hdns36y1rWg+1FYA3f9VZ1w8emKG8
	 7f5uP8LDoC56r80tqfN+joaMJHZfTtv5MGurdyBofcb4jBWPNVTrTSZPnkAcXUvFBP
	 UnuUfw6WWFiGejwPXr8vXiywAT86gCVSu9pU0cI6YNPo2g3xCj/ryB/0CMKPtMI3Ma
	 UduDpBoCAH5exoupf94I88UnHy7ICGEGEQkjoxNF2oTQrZ8dncEhiGLXXXG5TohI8X
	 p/sZMZ9XURJQTXIcr+GvMO0PlCSXOwMpoHR06mEPHoRJhBD6BV/JdWg3Ks6oZNQ4uz
	 Cr4uRGVbsiFTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A0CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175629659357.7260.15748308365331728922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3346f582a33c9d9745a41ff5c73c754fee93f0c6532c9fdb69e7149ed0697752
Date: Wed, 27 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756296593
