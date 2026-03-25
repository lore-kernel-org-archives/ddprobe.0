Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186DA375F88
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774471494; cv=none; b=nWzwEP3KmUigGiNEBVa3vYUJOcmfDOXzefeHkdcUhmxmHPhdQjBcJhII8C4W3e+GL0bFPeRnd808/QxNPdR8cKSW5yZV7taLCLxuoIxHUCWZc/cSDB/0mUZ3vnFBM0BgkqHYoMuSL1D0p5PY1kUpoph8l/eUyqEhsVRRueKw7kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774471494; c=relaxed/simple;
	bh=K39Otcd3sRn7WdX4MadGtBtUmOmKiLr3vsrnV2nn79Q=;
	h=To:Subject:From:Message-Id:Date; b=K2J97xYkSmMIzTNI5ILdzP3zlJcw1L6PaNORO+8yMFmFuWFdnAKT+gqbSnCaLCzVJY0mugl+oe/DGiYOFdgl0wOXagp64DwE1fwMBGYKP+enxfLoEp7LjMoJALDzCrTqlFIPAX9cIV9T6v9ca8X4Ti1z+jgSohrj8yMFxXzK3jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hdi3Mb4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hdi3Mb4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5313C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774471493;
	bh=K39Otcd3sRn7WdX4MadGtBtUmOmKiLr3vsrnV2nn79Q=;
	h=To:Subject:From:Date:From;
	b=Hdi3Mb4t3Imhm3a2YK/O1ZE0c8Gxc81tGpLH6R4LbLyhyzASkHlsR45tOsW83DP3L
	 3Pl1/1LraT3M0dEfHPXGRZX4zdAhCAh0rPRZuwf8L6rB+9jsif8byHSdFAbXzpL58R
	 hQUkVFtx6LAeYLgxJBmViD5/v40AODvBjB1OvFHEeeDQlc8iH0vJEWQF07CUjnIPrA
	 FbqGpdL9xXl7aNc1ECaxmVh7lySUZbQWoNNzXzLfzILAJBKuMOKwRYjvVOaeQ1pMFw
	 dQNy0mFrJxGA92vfYssbdmJlu9RjproCzAFIl6nt+GcZoCTy/qSpbBxN9J9KFJvd8m
	 0hBCGn9s04GAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF7106B504
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447149358.14524.16002648470143556699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c1e2fe079b57a6c868e51d37a8d3c70a38f16682e8381c93ccfdef59ee424b
Date: Wed, 25 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774471493
