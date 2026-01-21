Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C3E355042
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769019234; cv=none; b=kBFt5dWOQbjKEE1eMiX6nTOoQaTb3otls6AMKkhfupXlfLjKKPoIjIGK+0FCVnVobPRo960/wTY+3XWdNaj49CVmujegt77M/74ujvYcamX8zSu5l3lKPPd4BLDzUbTJWSoqfDOsVNVeo/maYUa7jn+q1oPqqf6FFDMBBOnzab8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769019234; c=relaxed/simple;
	bh=Pb42Lr4CqO6TlFvDmM1nGikbCRapAU+EMO75VlrDhz8=;
	h=To:Subject:From:Message-Id:Date; b=tlsHPyQUovYqqUHX1XAkCvb1gUGysh4n7bQsFRujhlEQ2ZpMwUL0Lx5sdrAT9qZANlmgZkZ6Ea+g6sVHIzf/jsg7odxYeYRG45FVhNLLW/JOc8gtP+xo6Ast9WXTrNQGU4FZj6stNMFBq5+2D/9TI2ek8f7h3XWpqD7JVA+ucAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8djX2N7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8djX2N7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F5CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769019233;
	bh=Pb42Lr4CqO6TlFvDmM1nGikbCRapAU+EMO75VlrDhz8=;
	h=To:Subject:From:Date:From;
	b=i8djX2N7Sl0kpGpGbHHFcykTgO5rLIMnAe0huitXlUD6fSqFCXSc8za2PwNjwCWuc
	 dV0BO62ao7r+YD4tcbf9ZuoUM9Rl8MI0sNTJl4GaonjcnzFenqXwMxzOLtcI+ZBMqt
	 SNjhVuEpkAMXr39LAHVOWTWqee65oDthvthy7rczHjUCy85gtLKYT5qy3PcgRg7/8s
	 v/0LocdJPamG2YK9VaCVhlWLW+BgKekigBkoQY5h8CXUTtf6xnQqJyvRTISPPfohvk
	 jmOgOGLfrCybbb2U3ZpgnDhKTngpMGQQvWDTVbMVzoV6PBgqT0f6IcbIYM218ftjJh
	 nOemoKfWwCvZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D1C44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901923358.18214.465447755550494933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a775887e8d37e927b380cae14e802d647271d9ee23d226b7409916bb0aabf2
Date: Wed, 21 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769019233
