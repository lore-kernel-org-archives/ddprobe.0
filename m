Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F4726E715
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759426194; cv=none; b=WDe9RInMyp4BYZhtBv7qulNbq6h2qIa3bJeBEBtml0GMrHhkUcLeYLtP83ccDMhVpIOKFdSz/H37OCPLTjp610HgB9leQ+UUYhXXwU7dVJL1dCmGd/pzbmre9mO0DwN4grnJK1i/tCSJOjnmvGLNduY/qkoonhwEuGFTxFoMCS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759426194; c=relaxed/simple;
	bh=sbRT5ccwocE2zooyIvjZgpXnUmqBEWwJBztwnGRgcL8=;
	h=To:Subject:From:Message-Id:Date; b=N3rTv4Sia+q/WN5u/vBoS2Wveid0ZQsmLLk0Ouv8rgLnxwQGUK/RSbNl05ky+jXxNgkoLgiz3cmUn+Q2HLkppUw7nk4K5fCefdTirNugY/YRoJJCl3vuy6EFbJ/qr7b/YQaNTNsuZr76ImeTJilfFsjH5o4aaK8qRJEShCwfQH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwxI7aHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwxI7aHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2990C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759426193;
	bh=sbRT5ccwocE2zooyIvjZgpXnUmqBEWwJBztwnGRgcL8=;
	h=To:Subject:From:Date:From;
	b=jwxI7aHRKqkEIoN9wvI3ayCAvK3z7pwEbYVGOrT21CNQ/7JvOATRENOoW6sOc40MN
	 zbYz9//ymercnOAKX2SSsipLg2I8VV8fIxK07FoA3AsoUmOYHedljoti2wYEQ36Om5
	 SLUM5ltcEfqR1KlX8t8TKh/kw3SK7Jgilk7XsrKncOH25rl/Tw1NCCoguxkKv7Lhmx
	 s4Z1Wk3AvSX0BzTT92sKVgAxK7uyKogmbvmq/LwcLXXzV1jzPY3Fo5/xbyPEeIgIjg
	 ureh5ekB/e66JXOr1Uip/8PEXhuEyU4TgyCX92cfbuoCtfcQpbpdiF/A92VJVGv/Ld
	 69ITiq/q8s1ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF98CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942619358.13760.4426915401202585609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c82aa80f8be511bf6ec98901839e69ca06a22166117247c9b6309222bb43618
Date: Thu, 02 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759426193
