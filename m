Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB1A355037
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769886834; cv=none; b=NBdQVn29+dYBxf+X36Ur4wO+C8Yd1S/tb5DoOTl8GUbaPmURpq8kzwRt1rO2Rtx4cBsYmbBnIBNNURbj9Po3nk3QKYvrpxlox7TPTUotWcKNm7tX8YPso+hmlzEZUswt8jmYQ6V699qgcPTXWzUgBOvX0DmaR7fBlSYg65/lcNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769886834; c=relaxed/simple;
	bh=IuhxKCF1taiuKWq6tfAj57VI+Z2P3pLjLjuJvAJC5Ok=;
	h=To:Subject:From:Message-Id:Date; b=pCcdZbkyIkRYwPaOoKRZBV9qftACFwXYy6HaUO+DInAFzuSR2Oa8RK0lfNGM6biinwbXJjLFG4lS/v3FbyMmOQTpWO/We32gkk2uyhaF3YPpquFon+8CfBcdNWykQbexeOTRvL5nVOfU+rB+YsXY/j8ZzXSNPnBaBEFQ0ItwiZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p42m682M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p42m682M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6819C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769886833;
	bh=IuhxKCF1taiuKWq6tfAj57VI+Z2P3pLjLjuJvAJC5Ok=;
	h=To:Subject:From:Date:From;
	b=p42m682M9sKG7n+Yc32wfpM6cHPhdjajKuQg3j9g9E7Ymt3H8Qfm7fqp/DThmXy9r
	 b+tOJZ8yXKv2OvIZIYDhg7FSIJdWzYc3Xmx7XL/ELLAKFDN8OcwiADdzEJIEhjsyd5
	 K5q03DsjxlL2wdXjO+KL5JGowXYvS8lqZePDOSGSBtwIQJedPR/n5wxw5gwAo6mX/O
	 C/shizDrvTLXP5iSeravPQXC04Leczwing5m+VYMCcJ6jqSfup6le/mSrgXoEpcSKB
	 OpnN9ibSVUJrprT565thtGEiKZiIqigXI7nImhaPR0cx6iQQs19PPJEHOEJV739AVV
	 GhHxSyYMu7bFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91932D73EB5
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988683357.8209.17507686594989034863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e7305dff529daa9da4b4e4d129e5b9aa7645eb08748a407e0e62b273133718
Date: Sat, 31 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769886833
