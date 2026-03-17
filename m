Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CD4371D06
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773786294; cv=none; b=bIePuxCpedj1SI/M9aCztFlW6MkwcaFDbAtAyPDnqfpG2314Wh+5B4cV7YRvQtDC6CE6+yw/4YZOoLpRrd6HZis/8NyzU6VivzPoSwcTHIC75OujtUk2EFiALXdy7WAaL4bPt9U1vyI72kOSj6KKiXYUdj2EKdFtOnQ7k0i+7C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773786294; c=relaxed/simple;
	bh=Y1IAefSKUcm63IlZY6eBIBwXJvXXCSEQbN+SHVWMf4w=;
	h=To:Subject:From:Message-Id:Date; b=RVD9CBbWvGVDwpstMwQtt0Afg8CqgjVyP5E8A6o5tYQyDBz5dfdhWT9GFoPAQL7FPhLEkxquBSRzk2fVB6G5+bRJd8HkStUvGDY0Yt6C0qUANcPyG/UvF2Qjw4Y75bexrVVffREyNe75WWr9GmyBp9Y/Sd5H5SjGrAQRv2kxZxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mu3VFnku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mu3VFnku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2930C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773786293;
	bh=Y1IAefSKUcm63IlZY6eBIBwXJvXXCSEQbN+SHVWMf4w=;
	h=To:Subject:From:Date:From;
	b=Mu3VFnkuhRfVd5exkuXUYMiKmr1nIxRr4WN+1HyD5/0bsG5OKjcg01NksGj4H3chL
	 Ust+2ja7gYoGgVu0pAaDgcq0B305osJsYByydg3GkWCsqIemHBN5ajJg+Hujdm7264
	 ZfrWFvB8u3B0xfyrJ6Wt+z6nfU/EXmd3nsQ/GQRl7F8PYFGIQCgx8IUg3cN5fKGIFR
	 KUcq8C6Dw5v7u1uv5OBmRPIK3B2F5zZkKoKuJX0tAQkmIuxKc5i5g/52O6qHX93tKH
	 wAFAv8iXI6j6j9Fnns++7u5zwMMwtOZRlCFQFPGYbh1BoERy+/z4s2rH0cMMzKWS54
	 zUNNyKy48HbQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DC4FF6E8D
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378629359.6004.6218595861097742744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a69451d07e17d39049b97483f8c4b2697fe81cca5a806e65df977bde8f5cf88
Date: Tue, 17 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773786293
