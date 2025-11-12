Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228272D1911
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762932594; cv=none; b=aOP9pX2+1br4FBvkOCRsK7bspKHNqkmDGoDRkbbNOOLnfOyF+zDTwLQHqkam7m1ou5iBQc0E9hT2V0Fuv19X3DZRC0IIrRNaVYMtxfeL959+Mjs4F7IJ9RPw7IB2wZeCOyhKUa3gtvSM3kjqnV0oJujeSXhNDn7q7EYdCrQ4sts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762932594; c=relaxed/simple;
	bh=DaSqZU5WTjnLlFNdS62ESIUlDiQ2I47i2TH1DJEpIvg=;
	h=To:Subject:From:Message-Id:Date; b=RL0bgRLgfsKU+ED/s19QWpTBqByX2+lzAScQCid6vM1hdP8UwkxMH1s2rlmepVVYTkT7gtVDsa51i3wXT/YnvSYsdoGIX2OCFiDraddrRNPzPXiYRu0qzIn0fOvjYQg4M4AzKiQv3rxM81a/RhIgiboCeSRl9ZVefCaMJbXvkec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XU71VE+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XU71VE+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C62CC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762932593;
	bh=DaSqZU5WTjnLlFNdS62ESIUlDiQ2I47i2TH1DJEpIvg=;
	h=To:Subject:From:Date:From;
	b=XU71VE+V9RVDdDExE2HiTVAyaAuOmsMPaZG2kJzDA2Fjpd+7+DEbc3ZdEhhPHS2dl
	 CemHqTjtKRrlj5ukx4iGVFnt6W/q0Z4KX0AWBDYO+t86O4Xy18UZwlzPOrPsKIat7m
	 LVv60gH1N1NdsIXRTReYs39Umf6BjKO9VQ+JtrKun69c278BvGAzA4lRNA7vWzIf0Q
	 AFlA7k0YbBwT/M3M0xC2rgzd/idgj/V9Vwpbiv4TySrBjBqb/sTQiGUmE0R7FAdXaN
	 /OQLNKH2lNiUezXQdBn4z3/h225Mxtj6JOmuKtspvtpDZ0W1YtWBDAaUjVgUFMP0rP
	 6F6QMXQYSVX2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3ABCCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293259357.31470.7319965869066376384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec189d7945bb9c32d7e2bb6e50e9b5f5978fb65a826f89a91c6bd44e915f42a0
Date: Wed, 12 Nov 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762932593
