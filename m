Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B4827A465
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765756374; cv=none; b=tIvkXQGCt5sDy74ESyFTur5R7XdrS5MSYvcGMazeck9INLwaV5+CbhT4Ulh2/jVWbAv4IcU1WStwYY+JzUhCKLlrqyqz2vuTMNLiZCu0cQywUbaWHH9LF524WxYErNGClgAJcoKYG6yT0WtFrKdXnIOYqT8EaX9U8fHym0/w5H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765756374; c=relaxed/simple;
	bh=/NI65u+vLiJqgr3EoaO9scxEnN5kMQfSvfXQJpbS1DY=;
	h=To:Subject:From:Message-Id:Date; b=ln7wsb/aCIGc53OXkHJOvL+uGIgToZuUIe0X6PWUyHZ+6sEtZWiuFgEyIzT+yKIk+xMf+KFW7XW4M8JK4meutMDEukzRCcEqvSWhDx5/u77gYsqW3EFLS7usRnije1Qs5qo6DWleS0wSDGyUjWnSHpp3nfGBV37e0Ja50HiNsFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrrCd1Ef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrrCd1Ef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC8BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765756373;
	bh=/NI65u+vLiJqgr3EoaO9scxEnN5kMQfSvfXQJpbS1DY=;
	h=To:Subject:From:Date:From;
	b=WrrCd1EfNecihK7KZU2fpp4EcbH3MAwfy5IXW97k3iaF7XIT/7KAKYot/r/m5Y9vy
	 8r5Tn/+mIDYsg76O7P/ThRM6NMXqNiecZncwZmFWk+Z49YO/VKdcNJaANJnOVwft7x
	 Hs6Wv1oP11U+Q8ba+CTZl4X00AQehDIDWKpqenrC9v9s1BdJcRzTD4BVsONaM1YAvv
	 ieq4Bs7z1xxr20PDY0Is7Ibp1PVXVbGHkGbtzNwfV3+3orjCw4mN9b94SDXmeQIA1L
	 3to7BlHDeGwyhAbqAR5PYd0D7uMrQK+AdAy6V6B5IHMtxZ3WaVYRjE/lxswzuxW07B
	 eLq3TNdQn74Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D59D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575637358.18322.6048133624062566984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c44961583140a032d20f2882805e45f40aeef36d78ccbb3d2cf3e7a1c988a3
Date: Sun, 14 Dec 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765756373
