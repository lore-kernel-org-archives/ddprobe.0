Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3EB30C619
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787413834; cv=none; b=mRRbxqAeRDJriCPFaJhndc/kLNCCk7IOXUmYhllxNaMyciIdyuUHGZrIEqxLaiivMDP9fAqPZvFNBvAVYKaY2pSw6mrzNkydrdy3kkuP6AWxanctWh/CXH2ka7vgap7RnJHUiVglgwkmxH42BsZTexlJadrfQ3dPizh5A/Fe+F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787413834; c=relaxed/simple;
	bh=rU+t0ZMevMWYvtdLHiZyOfYZi2y4sAQny/6a5/3h5fA=;
	h=To:Subject:From:Message-Id:Date; b=jM7jNxb+u3FE4ElGdKGXwc0DmIwGWJOg79V0+uLWETyR/2wie1+f/nSCTxUWQ9+tpUz8dely/Oi52atl1t/AiCWqWXQsfk5Ac+4LTAv6tY9Udwg42ZOF8x6276ompaXdJKdjocMZkaQGREu62Kv/MDlQqQj266W3oBpN+PAfC1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/2dK7m3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/2dK7m3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6C2C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787413833;
	bh=rU+t0ZMevMWYvtdLHiZyOfYZi2y4sAQny/6a5/3h5fA=;
	h=To:Subject:From:Date:From;
	b=R/2dK7m3v9eSiKNDxbn3d9tkBNQDbDm2TcfWK9NCsiAYWq7BykkzTLw8euly425H1
	 LmfYKnVVgyaetvzqlKUfSGiohEOVGfGciKxu5qybjTn81Bf53ogqYK0XS8ElLqxjRQ
	 7AxCEHEuW6LTLPNcyKybmj9jqzo1Irv5cb0R/J0+3qMofcsVFyDXfzw9FVxoWAWwWr
	 Glyei2MkCsSI2oM8kgO60jcINmSAUCK784e4Th73MC7/60B6ikMhaFYeXyfKX1uVzI
	 PfVG4AbGpNfvc6RuX/DhMCYH2PJ6cCrtb0W8SS2MW9C8PGwF8PIugD3SzrwMaDc303
	 rq1qgaTtLJ5ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0781C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741383368.31440.17873893863819269888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa7b2de68acd9c7e2ae20bb3be05eb0e81d71675f3aa480ed9dec169536c27c
Date: Sat, 22 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787413833
