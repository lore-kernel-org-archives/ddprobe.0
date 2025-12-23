Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159351624C0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766529234; cv=none; b=EEqocg5RMzQ+1T7czXIAhLo88PGEYKEXaydeR3l3hL3hUiSATnz/bmhgFB7Nx8Nfs4flEphEmU8EPmQ1kc8QPD1L5xwfjsaDfplry4ydjxsM2KnQSWMv/OSBppAC7cRnREshEtc/u6q+W3bNTc2ilLc0SA5ZsW1kGKL957LRsrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766529234; c=relaxed/simple;
	bh=bQlclfg9q4uvFc5SSkD03lBoge++Df85IajqbqSdfEo=;
	h=To:Subject:From:Message-Id:Date; b=kXRzYw20ilZxGd4+JWwl2kFiQhouNDVmyNFPSv2IT4bJb+6y/0ofF+qObwPby3Bt+otSYPjjbP+IYG+0VBtvkPUVOYiYpn422w68qEcaleWNELhhylM8LJKLnzq7NYJKUYBJEQRzUBGAOTND7U3wimDKbD3AKu5OtYnn/5AtwAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8Ld/kRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8Ld/kRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06F3C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766529233;
	bh=bQlclfg9q4uvFc5SSkD03lBoge++Df85IajqbqSdfEo=;
	h=To:Subject:From:Date:From;
	b=C8Ld/kRZxPiRrX3BedAycWnJElhYEy7jyoLPZU5jwznbFzkQZPUVt6gjThiyscYTB
	 KW6jubYFN9fh8P13uk9Zou1+fJTbOZga+yvGEFffAuHf+iiumCI81F/Cj+lhcpQBOr
	 gUzsnKoqKGlpbcBJFrE2e3p8F9gDobdXgcN7tJM9tZjL/bIbtYWCkt/NFWPqls2aq+
	 PoLz+U5HSboNCCjYifK9DHYiZPUUbOrHTvyP+95IrLk7DTQZ+ixJ8Hc3AfwKaRdBXC
	 SLBMA2Lal7agnQykU3B4VohQE8dtqTk46ycE6/Z8NE26p7fvD+siQRECNslmd/H6T4
	 oIuR4s9f/kevw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90082E74900
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652923358.20555.9632094505120950740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66919214583cd02e0c43d47800e4b9c990f8559b9c13b38393c6f666137bc97e
Date: Tue, 23 Dec 2025 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766529233
