Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2582E1DE4CD
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758407394; cv=none; b=dX9mQ+w5v+1psqfdM7WkgckOjm0hX5IWUbcW3cG2ODYKdSfD8We5aAfAd+2NUfsrTTxAD4wuPqcC8kbaIBASd6YtiyQxrw5jDcdh6d9lwJyLLs4OxSUNgrPH2pOVGCgJJ3TeKl7S7xpo3LLKFkUN0y/7hhEngQjGLAK5F8oxjpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758407394; c=relaxed/simple;
	bh=nlA2I4Kw/AnSXgXTpB7e0tNfdW5j3B/1KbdKK09/1HU=;
	h=To:Subject:From:Message-Id:Date; b=GDmcmSfMw/n/xYNQ5VDnctUe9/jbhSvY1C8TGPGcYmfhmNbgzGVOSjNV93i/Lrme8ewG9h/qPOe2sawNut+Dfp2/1194xPDlOjY9Iw4gOHUim7WqqIcpBlcEyl+pOVG6tey1GFepnXh+J7R5Mfub0zCeV+vH4qnzzLnOFLwHoSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnZvbE+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnZvbE+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68EFC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758407393;
	bh=nlA2I4Kw/AnSXgXTpB7e0tNfdW5j3B/1KbdKK09/1HU=;
	h=To:Subject:From:Date:From;
	b=EnZvbE+qiIBdBECC73G68Bbo2s636y/FvQ/p3aASDzASm+KH+FsaVZLuxGZHf6P8v
	 vTy3+s4TUD/xMo45R3+Dy261fUsWhJmtBXmxKu+A+IG3fUhRW8gUgsjqJWic6zEI6j
	 mEopyA5omKEvmOCj5iNYvTqNRilXHkxVhUSwTHmAZuDbV1DrxTHjY+hcHyPJVitraY
	 qK/qIKpk4aR+qWBn6MGzVrOUp/q4QkjY5tQIWsrDURaXUjNu9/3Q3AkfnRpU+Hk818
	 oeWjtSmrzZbUkxOJNDekpfG+hxRElf/ofdiBMjwdcTOQhpIsxnyi4g4dnnF4SYpmhq
	 IoFXl9OtZM5Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EF0CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840739357.14514.5770422895590934628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99173d5c823c4f267bd760fb7a9f48376d7b3b111ab24d93bcef1c5d58eb659b
Date: Sat, 20 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758407393
