Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D84A1F8AC8
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751814594; cv=none; b=ArCZO7Fzp1rtgtfMFpmx23p67BMiOb2FPQ3JzUqfHCgEtbSYO1fSKk/pI0YufpYcUtBdP0+yK4HekxTbYkMKR+gziY207BQey2Y/NXrkxuJii7bbxmoItYnjKdnzvwh3Jn3n7Dpzx2QqRlOFY73iY7HZLsXiv3kslfx718e7lug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751814594; c=relaxed/simple;
	bh=bdwIstXWLiOYTL8bY/XEsz/UCrT9v2ivI5Ie5vvH8Sk=;
	h=To:Subject:From:Message-Id:Date; b=DMizdiqCKztJ+8PoYYwAj5H0DAkokSVUrjwN+7W3qkY8xLe5qUkNoZ2tp5s0ACMI3QxdV8jh2i8lTmBFfU+yCjk2IyyWOIJOEG5sJcy0M7lG2pP/5U8S4BS0VW79hrTpfLd4IMkL6k7bVxbbPI5yvtI58OFTpXJEgWDRpSoUVlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXrKCFDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXrKCFDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE35C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751814593;
	bh=bdwIstXWLiOYTL8bY/XEsz/UCrT9v2ivI5Ie5vvH8Sk=;
	h=To:Subject:From:Date:From;
	b=mXrKCFDCJhmkyg1l6Z0h7TWJybiJnRj+Wq7ZAgBcdGEWb3JORHRfj4eBNz167N+P2
	 2ujKZQjnMQm3WBwIW7zQgQld6S6qm3QcS2na56oPs0xyfECGzU4RzzWmfqe9OC1bec
	 8q1oHz9KbLzaApu5fVcoywgi7swi96j3lKcHkTyAbMamZw70gL8O/JHtX19JUJ9mHC
	 I0N38iDiWOrs2wO1RH8xd2Tz+CboHkqRfF9a8K1xrBR74pR7ra21gpvwTju4qaZKsw
	 kGCIkTqPEH2CpFadSbtf2nmOGYBO7ajqIUADQAOfL4kMScV5G+8I7bh8lTCI9+sHwD
	 J1I4mG94wyjVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DAE2C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181459357.4274.5524735875325960054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d03990b7acc4aaf13a9fc7c5969f63e456ddfc22b0a837300331925287c5019
Date: Sun, 06 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751814593
