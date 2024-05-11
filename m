Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638772F26
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 11:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715428343; cv=none; b=oBxgZKgdb5GF7aRWaks+lfORxuHYvZ0LzC3Tlp4yA+WWAxlhc9xP7aDwyJ7g8i2dV/GIO8jFcQ6bUt5kJy0uJKcM2JQqq1GH2KQLYEGd3Q1a/jRpLO4IoOLE2QCN7BdXz6zEFld+mDvhsAnxVkExxiAEyvcYxw0QrMV8b5eX5oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715428343; c=relaxed/simple;
	bh=I94AGfl+3HhyrnnXm+nokAStIFkcPvUu59S4dqy+7yE=;
	h=To:Subject:From:Message-Id:Date; b=VbCaxrOZhXHhcD2OcriYdIc9zvYReloz3kiYUoM31HQ3i/+yuVD1L1fHXbkqxIXOllrd0uoDeSwCapZ74osxxMQoprchGjNgzT0g8Cy9jMIqVJUNMl8hjdH4bF9WvZNdIHvG41rM7Qn/xejcI4ur6se+HDdz/OudBx+t5WNCAvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VI+48ddR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VI+48ddR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CD2C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715428342;
	bh=I94AGfl+3HhyrnnXm+nokAStIFkcPvUu59S4dqy+7yE=;
	h=To:Subject:From:Date:From;
	b=VI+48ddRiqb0VPaUZSkJ/KgOHIgoJY6oFwrr4NilCZ0Q0VQ6pf0RFvJqIxt0V+jYN
	 RQfAseO2RcfckFNk9cTw+cxaYoHfhfFM3DTr8aCL1VRCeeq2Plnp9JqUJsKABhqJmu
	 hZ+UH5Ve+mn0LxS//RW8k5XkIQm+B8OfwgNEE956NOjYOTPi4Q7Ap6g5l3F2nzsUuw
	 GgYcM78XBJbRT9CORiqBPdc/8ca8aVd/VitlE5pyZfI2RXnri3hXotV8d2nG1iXLDo
	 ckz4a2SvihP0949zyfmYad1uBzQR15HCjbNFGnw6pueMQYTOvuIm4L70bCBFC6AvKO
	 un6NIrPBIQ1EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38F7C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 11:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171542834277.13281.4357193894254575594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab14371ca342620c3e5b5d7a39d7db3dc3a3b89e3a263957b3694585db53739c
Date: Sat, 11 May 2024 11:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715428342
