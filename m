Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390C23B7752
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790008236; cv=none; b=N/s2zE72IAaAKqaO4pKpNOTRUU/ZQu5YQyfLgLuauylehuNX9gt+dgQMQYTXUfvLsMj/Ty6ETBHUv/2iQm3cx1m1c+tmuIhsH3vt4gdvA4oM7/RRr3vDwSxoCXMBPr59U4LG2gLOVx2cY1a8tJDwiIK33fBDKAQzW+pyp2E/8I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790008236; c=relaxed/simple;
	bh=18ZizxnvT96ylxjB0mHbixfeHHBsHgJt8jcmFTVmbHU=;
	h=To:Subject:From:Message-Id:Date; b=p+PTWtnagbHnedbYbw9qOyyXWDZ90ENYUQakBvndno/2KcZWiedO0PWgWwOiApZHTcZlHI1WpJZUykGEk7lePWShb77zmATYYGpMM5OSWbmZUnblyL4kKwA1Z0HUdK1/yoavphvfK+KymxQZE0Tv7AQ+LE8fqtL7e8K1tDeqvyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6O93iky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6O93iky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7761C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790008233;
	bh=18ZizxnvT96ylxjB0mHbixfeHHBsHgJt8jcmFTVmbHU=;
	h=To:Subject:From:Date:From;
	b=K6O93iky4grqVDANYCc9BEBHNQ02nBPfwa+ZHZK9mt13JdmY2W3IOl5ZSf48mVMzO
	 1RJYiBTmPhcnRBvwrGzQufHIIPJat1H1RK+WigazAPwBBLWzBkhEkNA/rIvmffT5By
	 +hJcZTnt3X5pgZHAO52AKJZq/vCkbUtCjopcNSu/qlTJ1C2ImrAcxG7VvPfh+/ogJD
	 wbDGgzcd9CF8TpUgTDEY2uwtUM//vUxg4Tz+GwKSr9+YNa/532/K5yCSvUA5p+Jf6O
	 5WQs7Mv3/oHJdsZmi6qAuyr2D+GTdgXTdGPNuW1Opulq+rnv7eERHbDHefZ2cKT+tr
	 5qE+ubExuzZKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1051C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179000823371.4263.18305472692946343482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9525fda0a8f5c680ad49cfba35c62e000556c50050318448aaabf93fede8f810
Date: Mon, 21 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790008233
