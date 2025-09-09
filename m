Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140C278C9C
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757410196; cv=none; b=rUFgMm7dv/N9/2btswzRXTsSGH7c2LIa2PggJGVG61d2WRBPTPVXbtuLGyyRwYYmYQwnlll2AGICygim2t+K98kdV7j2XoscvGC1g51M/C6hO+Ol2+pIGijJ5z6Yb+EfUB9LdiLDmPRy9ymOc1BM/NjRekuF8Zlrw1JizauXh4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757410196; c=relaxed/simple;
	bh=MhR2KSnyAeRNU5e+kIh42f52YTjuzT6tW8iObTlvBP4=;
	h=To:Subject:From:Message-Id:Date; b=BxO1u2yf5TAL+0xyCuCc1oHUk7Qn13la8xvoXGoZF+aPnlKjpcKRe4qHuuL2qp8DRz2CRafbK4P+YcDE4fEV07+TN3zT2DxIc9k3/AtMkR/In/uf/1/DBwZs/RX0zyiK8lTrqTCOlOw8QV1xInqNfJI9qKLKrNjZr7KoGTVTNOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2OgDuKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2OgDuKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BE4C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757410193;
	bh=MhR2KSnyAeRNU5e+kIh42f52YTjuzT6tW8iObTlvBP4=;
	h=To:Subject:From:Date:From;
	b=t2OgDuKfZlre4vUMG6MJBl5/Ys6Iz7APlwsp/B/GFb/le4kmj/3g8f/qygKUrkwrY
	 0cfoSjx+GUnxB7oQri1ohuk3bCDhY5jziHAsx3p3Dmq+rb8vVKOFXqqWN6LhEoiviY
	 5gfNln3MMloUUe4JKUhLIJjB06ItDmPTzJv2CSwryDmjmx/ePEvqyhEmFrQ6fErNft
	 E4jZZ3R+hU01+1+XahWb9LosXoiKDdwtIoK+E/sbpcZUHqApORseXfS+s3gUy08GOi
	 V1h3kU5AZgEViC3QT/eKCX7eLFkeTGjWye4hGKrggSgLRQyzLZ11d/q3u1CFg9k1qh
	 ZoOuRU/XzYIpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B0CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741019357.12756.17721195391185863338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e6281e54d9876e574068530fd1b7b5e2186d3a4ff6798ce1b0fd9092c2b498b
Date: Tue, 09 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757410193
