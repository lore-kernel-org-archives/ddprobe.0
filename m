Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493E419D8A2
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727820354; cv=none; b=WQS1TwnZNqXG7hyKDvUQehOIyLe8AjNCe5jsOeVxxL7Ui+X0n0WJ3nnu7yJkaJaKNSTWAuUI/Tlag2ddYqMM+lZw8WRzaiNaOuplxbtI4fjA6w9lWs+tLg4MmAwtbjYW42DKszC9Y+5iIRR7Hkx2yL/SbAnamKCq2fMDAI01WZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727820354; c=relaxed/simple;
	bh=D7gzeh7s30PUA4qIFtkgnvWvVcifx/A9b+DiWASXlO4=;
	h=To:Subject:From:Message-Id:Date; b=cSqWlhbZ4qBrahl4CfsUG+N9255fEJbBsfNtzgGoBjhAdKr7LZrYopI18z6+dSACdJessmUZvlIAXm+esifaNrQ92+hK++gIOSREr1c6I6SKF6aQ4by071VjmH4avlEgfghjlB4dS7iTfckiOduQeFMo3uxAoKIB4LLg6GdqYUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUZ3nYJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUZ3nYJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5010C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727820353;
	bh=D7gzeh7s30PUA4qIFtkgnvWvVcifx/A9b+DiWASXlO4=;
	h=To:Subject:From:Date:From;
	b=jUZ3nYJCoQl64C5dhFcCMsN4xVBxORAdNSfJptI+3SMzmaakbYti7bzZ8clBgvhEE
	 sK3lm/4TxB0BoMI42/TdeBaiYK9bv7NpAW083lJPhqMOH1aNTx4OA/D2a/r6G0xXXB
	 /WpEKOoDBdcZe94hVLKA70EGRtV+QO68fZ9lFglw0aNBycCi7gvdRURrW7uTp7nELA
	 jpMY48soXbqbBEa49Gf1EesuXFmK49gEBcJUhsThzc670ePNZW02srOzfAOT/YdsdV
	 ViMcLrJAxGleo2RdQ0/OQtVbvy4dLy2krXedvz1jTFuzZHDeq8Ux8JTdeSdWFOKyTn
	 ivFKoJubKYABw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A346BCF3185
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172782035365.7454.15460603308855901446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b7febbed8a793399e4a0b1ad916fa267f88f6f7b3463f9a0d6385dea003d5f
Date: Tue, 01 Oct 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727820353
