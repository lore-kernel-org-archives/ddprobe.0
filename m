Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D5A22A7E7
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750450794; cv=none; b=OlNhw5y6mzwq4dxGoL9NTpN9q3UOZxQKfqDOM2nxdLNyL21AA4l3DWMXYdiVW9Y8AHimg47Xz0VkflZeQpWqA7zUyAXpC9saxfKoJbIg/jBvOT3Y6L+Xk/p/Vin/zuMG7FH+kCzVjIWX72eP+BpYLUjiGHMErD9pt2WeBHeEjhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750450794; c=relaxed/simple;
	bh=Tqa4ty6sgBj18zmHG0FMlXGFAN1BzhaD0IhKKbEBCRc=;
	h=To:Subject:From:Message-Id:Date; b=uQK5OzHXGLZHX2GVNQ6ZX9EQHp2ek0r19LZTqlGT8euRm3uUI6BwD3F3XPpGqdBb0AZzRp/U6k7gG6BnoX3TMNJrh69/Qr7S90TxRj7GCq3X5H8XZSejKzR1vqXi8yWiWC2ddHh76JCpk+zQaxuU9XqhuvNqYjAoMp5nU0USlp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mn4BYnlI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mn4BYnlI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C682C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750450793;
	bh=Tqa4ty6sgBj18zmHG0FMlXGFAN1BzhaD0IhKKbEBCRc=;
	h=To:Subject:From:Date:From;
	b=mn4BYnlIqQ6ro+M8Wl90VzQTHaOBqIboJgQWCI6EB8WwnNkWhG8tx5WUCUSKAitU4
	 XVkLCzaIdC9qpJSpTDvmdgeQMoVg4Az73m6ubgoJxY/glXvCTCexF+a/ai6s0Xx0lQ
	 Bt+J2ajkKoDxK/VXmMvN4aib6tw+mOt6gVabBBWFCle+nibCXmSQEsFX8HLiF3rbtt
	 HvWCAuUnq7xfJZAd3ZarHyfE21Os6BfvKqvtmvBTdLbrALtUsf+KeItc0MTWX1YipH
	 RKpDIUJIWum0MgjwFeQrWnhf+QnXvd/4iPzSuXMK1LTAmPKF/2+5vbUvsGYkfY9r5G
	 zVh8WQgxwDi/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF81C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045079357.32118.14207606942501923757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d308c6f424577e27097f1f246ff6fff183bce7405eecb75955b7f01215214d
Date: Fri, 20 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750450793
