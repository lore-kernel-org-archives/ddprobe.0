Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2287D2877C0
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756036794; cv=none; b=OQNJGFOxYbNYrq3pWrypIpTinBrH2NWzwLkl5dTs2N8uYsaFMs7i+X6a5vpS6GozHPdnwSZ7/GS2lCLamLbRGWWJxzMeJCU6W0lr2V+XEZY9ejY+rNZaY+SmtpWIdv4Tl7FZk0xJCYjPWKaCy+hHV6PdfCtRttHK1SwnSqBzj/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756036794; c=relaxed/simple;
	bh=NVIY8GhEDElrun8SJ9RrcsVPPlNl+La1HVaoh4RW430=;
	h=To:Subject:From:Message-Id:Date; b=LSFMUAuW3KLgd6zzk1E9Plp2SgbCKfw4qBjzHQHoa81RxxaAMmYMo0KKLm6Nw8GPTgbXHhMjfrpVfzK5hJcmz6XfmXb0wAzJK2c1oXSlXE704U/rX8QMSuUO00HMqXHTHIN2dVLs2tPm2ytXwPG24h7u7GAQY0/WnMUq3OJOwYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cq++EOJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cq++EOJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A348DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756036793;
	bh=NVIY8GhEDElrun8SJ9RrcsVPPlNl+La1HVaoh4RW430=;
	h=To:Subject:From:Date:From;
	b=cq++EOJvyOoajP/RLWaw+04iRFhT/8Xv7zT/YidDnNnJyYnpqMdOBaJ5e3JxL6rvU
	 RXNUSbskTO11W7vsTVcAd8yktFkeuFNq24H4oCG3H3A9QrdhgjZUvvqE1fBiDqCI/T
	 qYLcOEHzOjYU+7kDxj0nMKK+zI9DjZl1lwperAS6s1iRhuEcbXOIudi7iG/K/EAupz
	 vV7hTuTkm1UQefsbsX8o06tTWQemznAuIb2jIWxcJ09JZCax8yK4M1S0QsmLWMaIeD
	 soTOxamosJVyPEH5efYARYGU3fhCVF29Bo57EVQQ/KmU+PxcZpwCXaHI/V15yExapo
	 JvvqC41PBj+CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C3CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175603679357.32455.5366297342874628837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 593bed53960fb38419762d62f9ab709a61b73c390cffd3d109eb641790828231
Date: Sun, 24 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756036793
