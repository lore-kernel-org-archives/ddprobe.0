Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C6E2F3E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736485554; cv=none; b=OAo+xXrUnOX7VK8HtGE3aRHUZp8pMJH2fDle+hX/1YotHqot/N7EDuXNXIZ0C1pxjp/NLYRfuJ3V3cXw9xmvb3ByyyXnlIGQA3cW7BkKJwWHIrJBRwJbkS4rb3FwhgeArj24Am1SXai1rj84obR5ymZxpPTMjdHU8JxhXpz4jFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736485554; c=relaxed/simple;
	bh=3dxTzM2tnB3Im0uSTc+CtLAfGXDvS5Jdpk9iDlDaTxw=;
	h=To:Subject:From:Message-Id:Date; b=k5uIM3yvUK8HAYBz3P1CsKtQ2ceDNCES0UrrDPQoYa7cwJvlS/+biFJus7j38R6w2vsJcrGIP0UyEwaCtNO6k7LhmGTEMSgv0f080b/FgfTDOLl0hzzeLb9ySBg4GpJqNsQ1oQVH/vKCPbuEcV0pqJmGVADFANPCt8epvwYKIhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cy/GIjwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cy/GIjwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E16C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736485553;
	bh=3dxTzM2tnB3Im0uSTc+CtLAfGXDvS5Jdpk9iDlDaTxw=;
	h=To:Subject:From:Date:From;
	b=cy/GIjwJsAPBPLujM+OtH8vipbTUWBarTTbfbALV/CjJs7XBWrbelVqeEFvz/pZh9
	 GLJkCLmAvSwX8qffEDS0eVZHus7G+jG+8FFxDi7U9jVhQBF03mXRgvNmPTRuRZZcOx
	 iba4dzWo8mhEtheIVJwqj6jrrw+8NSKJWMcpE2HUJJuYT2KQQIZW9Wqc13jItreEqU
	 uLPyhYBlPN3tIFYL/0JcyWsfaLyUV9GZFD9gStyj5HpPIm48Z3IlIJyafQ5NIGjHHi
	 ZNIah0A9hb2rhDx2uWU+rAa8T4M8pai6BjBojrKXIsFuG3gz/727SiOZe2sVQFqDXs
	 m+BxTksWh763A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A06E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173648555358.27701.635185956051770323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc0c90aecb21f29684526269b2e996f8b1b4e7858aee6e1123fe5dcbc518adb4
Date: Fri, 10 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736485553
