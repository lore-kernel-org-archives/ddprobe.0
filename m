Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090DA2D8DDF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754899194; cv=none; b=McpDHGPUidgHTCGULYTum6gUnz7IlotyVozzLeuWLpB21acnCFfWSiglhzXjt8rPFGSPNasyHRzCdthNa8Sg6hOPG+MMKvJwTg2t3FUUI9qJFuEQq1H+9LCacDQxIj7CZxtJuuhxE1rmRZGNABENvf+hG/q27zx16/8L6LBl6UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754899194; c=relaxed/simple;
	bh=yPsqSfL/1YSpn6AamW4XAyABYOUGOwaD29j9CNuYHh0=;
	h=To:Subject:From:Message-Id:Date; b=PUH+qNnMqHrFdS41r5sFD+cO9bRRX0A0BTYq5AdM5mihR9D4zoxTDIvOCPOa+DtXGfgDZybd30cniK7hPDAYo++zC6bnRhecIB547gdRMvt5z3/30Vvhr3NkgnAK2Qvqu5jZIwnAwW3RDnBhTGlWQNzb04uOG9VNQeWip5gpFj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohB/jT1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohB/jT1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD0BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754899193;
	bh=yPsqSfL/1YSpn6AamW4XAyABYOUGOwaD29j9CNuYHh0=;
	h=To:Subject:From:Date:From;
	b=ohB/jT1DxkjmgERmuUlI73bWQVANkvH1PwWKPoT/HNXZ9xazRjxP56Av3lvenTTvX
	 LfGzIv/5jWXEhlyFVDvE9u26grLvs3rbBRY9F9XBD5wQM5VirJdYCGfvCga6dHewpL
	 OBogXItH4LenGJSu1Rp8X3oiJ23CYZ84zaUxDTtLBkjya0KwNZA+rrEUFF4FsQ5oYK
	 aPTZGegWnVit0oIWmV9qMVQfPrEDTHVp/zxrPYQLPphPb6Wj3hdY8TcNFXcJS0BSTF
	 k2/QjosfDigbsefwARro+IIUIl8MO2WfGNjKJRlr/0nd9uetmh0yslJpL5WgUnTtgj
	 WZVuGWhqoIlfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC01C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489919357.7306.11404758609237799937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b2020f275328e7a2087c4a5f7f8ee2694a2d3cefd55ee275beba1eb3dda0f2
Date: Mon, 11 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754899193
