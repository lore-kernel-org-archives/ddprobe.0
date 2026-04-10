Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29221330B14
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775797054; cv=none; b=bOVTUjG47GcGNqbS4YvQ7q2av7EeH1YTHtGDRs4ucKShpr3/qNdChCdUGSfvCskDZNWozAhNfmXxKrakIPTzMeb3h/b2a+NsaAEs1/MtlKpToFn8VinAdzgAespSMNMV9YdtQkcdjxDoODvd9iHrh2GG1FKLtgiJ5o5DIc26DhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775797054; c=relaxed/simple;
	bh=r5Ssr/4ClzYwgeLJFHh12Zkfo+7i9sPdx3fIhlySmzs=;
	h=To:Subject:From:Message-Id:Date; b=Yero8YLiG3LgqWlV1fb106uDj5YNm5t2S1iH1mjbdO1gif9ztKLmGB+oOKICHhhErsrpv8QJDNAzXcVqsRzEhJxKxqfHA1vDwrotQpA2mA+JVOIXZEY9zRIyKnbDxxaZnN9c+BAeaYk9lry8GIjvEnbIOcUfIeZYSZQ+Qbhhu5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDaPRGU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDaPRGU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD662C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775797053;
	bh=r5Ssr/4ClzYwgeLJFHh12Zkfo+7i9sPdx3fIhlySmzs=;
	h=To:Subject:From:Date:From;
	b=IDaPRGU83QeHvw249JjqR4dpUL17d19u1ImhcLezVoX50f/8u58bgq7VMx61L+ZoE
	 ss+ApEtWVKcZEOBlaoVRk9BiELiSxoeZAnaYnAU5ksMNRulVCtV1YOBYGPJwfqDQpd
	 rek4lWQwfHi+Un3A+8Qn+UBUvkCAjxQw9Ms/NzAGAG5U7TLLwXOkDOYS5r1rX+j3hR
	 dLsfqRR7+rQ/msHhOfMtFdlZD+swudEOyUdb5biYPxC1Lx4ml4x2gRtmAqU32zXrn1
	 oeC9F3wbjaiBFTqHYVBAMUUgURK0rV4Du25rKy9zsjRkH0KGocHpwpTpvYfTlKL+hR
	 cvfXRdWGOKtNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD36F36BA9
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177579705368.12538.15544576742091156963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4f4c483759719561661f17e17b2fa1c38228bf108bec6edecc26ed5a264aeb
Date: Fri, 10 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775797053
