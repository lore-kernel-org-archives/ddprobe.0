Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2054C1F9F47
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756533594; cv=none; b=OruvYeRH+wOXIa1I3RiXS+LFADvNSLL1uJZTUMnW/jxIMSmcrgI+XO/H+MRDPc4SBFzIZWKuM40gq28UqKaqDaZ8vwy/5CQUK/hUPcigULb8Q00HsHYAhqw8EIuiZvPOCEqVQP6+GuMFjEj4dhDdRJEtFmbqEsvl+4jx9a58/pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756533594; c=relaxed/simple;
	bh=EeuSa0st4kS0E9SHT17K8ux2PNE4cuUv2QNZ1xl5K3Q=;
	h=To:Subject:From:Message-Id:Date; b=BGG6F7lYzMUSgaTY2470n1sXpAp3cOmHTjEssaHvapsFBwZa9PnfeL9V3UVt+bzlSCAuxv+yJaIBvw24uXWf0p8dHPTw2FiHVAB5vIimFqpEQbR4CbZ/ECpw0biIB62W/3R74DXzZLzP1SzRnlllRjDsQUf8FM3zzG2DqsUpIhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zez1BF92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zez1BF92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F86C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756533593;
	bh=EeuSa0st4kS0E9SHT17K8ux2PNE4cuUv2QNZ1xl5K3Q=;
	h=To:Subject:From:Date:From;
	b=Zez1BF927lwQ4FTwD6h3ZBXMMnWN02uNxSS8NQsgrXJ2h8UK0+A3B9MWAmSZC3GY5
	 1+tNnLgL8Oy3UIqOTgfC8o1c53MD+/RMov7RSk8z8/V614XGnBD8mLX4ReehRBQLZW
	 +6HbsETEGYQCdgpeYj4PbMZFS363FYysaFnUX6EYHT88cndf2sJa2ZHn+Gvv+gQBrb
	 gxTSUe2QwqVMZnPZQOrIXinaMGWBDPdP7dgkzDKcI499k9Lurmn1sMCWxa+kyisN8j
	 pRYgCL44uOScSnBLxdT4ijwalEQCwXrAC2jpsSM1qxxsziEM7zq/vPmPaD1+bdyNXN
	 nBLHjcm7n7APw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91204CA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175653359357.23611.12194126363567838416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76331f2e9f4364c1abaacb20cc95574395c2ec05b57d51df2804daa7cb3ded54
Date: Sat, 30 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756533593
