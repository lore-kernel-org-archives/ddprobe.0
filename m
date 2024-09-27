Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6DA166F33
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727407554; cv=none; b=MDIuV6nzYxQhPtt6sNz4PYfotPJE8ToTXveu6DpQZuPzZoykKIglGLMN5XnoSvrdgrerrYwxe1+ut30PaTsECQw0hzZX+Vl/nc5DZRtvU86ftNnhGNtQtvipN/pMcxeqsU4sO3jJmgBVxNT55u0Jegry2zEmzIOz+DeeleJ8Ypg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727407554; c=relaxed/simple;
	bh=R/83qpjlbTnfM5p19z5JctyKzLPS1aZ13FR5B2aaNdc=;
	h=To:Subject:From:Message-Id:Date; b=PFlc6lA+ClFcnfU4CLFz+gwdP5LJUUS1jDBw7soxuK5/F4PDYqt25kTWUGzEDIwJ9xPOvTl6BL6utjZdlNLNC+82FbRYzCCtkl1F2mAZ9vPHVUaLOhmjHkEKHl4Ifrr6YUnlBRXt0U4xlrWyqlxRQvn3daPfR4fkmvMNaOOgyhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTYvb291; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTYvb291"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF79C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727407553;
	bh=R/83qpjlbTnfM5p19z5JctyKzLPS1aZ13FR5B2aaNdc=;
	h=To:Subject:From:Date:From;
	b=gTYvb291UBbJwVbcG1McVInaNG7rlgVptf5P0e3QRjG+uKVy087aHh2K6VU/Lzfqq
	 pUoLSdqcLYk6I7YxVRK/3i9POqcjlz/VNPBKlQ2jW6lJEITH3vbPJLocJxYxQ6i4hR
	 QpWIIxMcn9U3LdVYKcz/b17vXE8JodEj2xHG8kKDau9S5QbAMMbHO/cVyWxcSN/z5S
	 O8qSvW2Pc4mlew8Z4Ygsfo5X9AcY3tKxUY0x8f5Q6cnlNnRC4sbcMcGai2olo0Tc1E
	 Y+sH9slSevLqt0yG1tCobNrgJM1wVlEiC3r+O4UXruMw/AMQQSZ/sMng+fb2MKce/h
	 0b39EwYkljcNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4632CEBF69
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172740755362.24695.6007688289121847140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d546eef1ed17b32bfcbea2b8e9718fea6ed6ccb96d9268491ba845d8bcd7121c
Date: Fri, 27 Sep 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727407553
