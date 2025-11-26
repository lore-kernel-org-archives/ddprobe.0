Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF371FF5E3
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764169973; cv=none; b=g/Gs4pVy5IagizuJaPi6rm1QqeWmxtbWBZDv1CAIuCg9fZ2V3Rf9R0uVOgZaOFiCsmavS0M8Sg41ao6td7AcHsGcrAYGJbpAiG6UJlOstKwa4gI+kNBJUeSpv88w/inDpJdY3OyCq40qyi3CG0M1+wmv0mu55oGz77J8XMOkEOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764169973; c=relaxed/simple;
	bh=0kPnUNJA3fZ8+VWUb52A4gdAjvENbxPVnEo79ZFzP5I=;
	h=To:Subject:From:Message-Id:Date; b=MuwCgSmGoFy7Z3F12cIECev/G471IvhgspqZ66yAYO8ifzqIXPKsG2lBOBgWRw9x8GjpjN+hcesaK9U4E3U/vttekT5Wrl7cGzyP1l25vBpAyLSc137n7oOZSulF+P4ciTQRleG82HEcxy/Jh83HJ0YkoKRHZGyfT05xe6MPrR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTIi0Usw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTIi0Usw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14E3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764169973;
	bh=0kPnUNJA3fZ8+VWUb52A4gdAjvENbxPVnEo79ZFzP5I=;
	h=To:Subject:From:Date:From;
	b=OTIi0Uswtw8nJjJz0e4UdL22ounCCLcGlC46xpnEPRsbkhCCeUuB6nYwf16Tb3GqZ
	 422pHl7iPnm4azQRy7ONqs9w5ptFPkl3fJpop0ojfzoojcBh7Gwr/EHulzw5jZEnn0
	 aL7CexLro84GbovPHBOyUwUajCU6ncZGIhuhAVQwDrDUvc82a3bYJpjMgZOaGx61fh
	 dsykhdz6BgckuLdqBRizdEsPu3DGsOHE4qr4zAbEdPEP8bRpWO/8jRQrW8EMOcFYqE
	 0JqzEqzXBAtKqCdve2a9Qm79ytz5mE7aXYCdjt/jeh50yMqjj7ByUqLwmYYz0B4i6L
	 A8zUq5XnB6Kjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B3FD10F5D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416997358.29725.310859581504586609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6d41ca0afedd569800fb7417254916df03c90af3ef7a6d7528932cc3c0cc70
Date: Wed, 26 Nov 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764169973
