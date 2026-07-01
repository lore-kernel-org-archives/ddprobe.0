Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C22B3612F3
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782887314; cv=none; b=VshrFPzqAJ1qcdtkxMiLDh2jaiioDovmkeIydEtlOWiDeb+eJTU8Mwc00nWru/dNKNh8Dv4Zn6DB5iJMgoDFdo+czyCDRi8b2iIr441l3YqjUKNzFqRQMT9jOlwgG6VJQ7g3QXx0O/rkQbMxugjnWofdV0qO3AFKeGwp5jUNLdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782887314; c=relaxed/simple;
	bh=MLOZZS/8WTAqtMoJQk5c5F0FGeD3WR/8E8WzehkZck0=;
	h=To:Subject:From:Message-Id:Date; b=SThrnl4a+O9r2obHk2dCC5Jm6vgoQEzHuCjlcsJ/LfDm/XFO4ltM53KFYrJSSQE8wa/gC2tm/qOPcpugzph0+zNkt3+gZc/AiSOWjmcjM6s3x6lp+zFxpXw0g8dmDYkxDup9ceI+YoXEajXrYrbNF2Kuz6F3p/FgVF81ffN7JUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzVylHJb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzVylHJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C166AC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782887313;
	bh=MLOZZS/8WTAqtMoJQk5c5F0FGeD3WR/8E8WzehkZck0=;
	h=To:Subject:From:Date:From;
	b=WzVylHJbkjpUuolRmBH4jjzT4jhe882n9paneyvuxdM41E+y0z/B2E8BapOgFZXw9
	 YWxSNSxOLYKF2Q3A4eVzXgOWFMrbc3Gqr5+qfzUplkbKJbetSRUPyye9Ez2UIfEtyR
	 Z1EgQpBoYn08tuQXsmQRvnJRfw7JUNmk6FH9WoB96d1O9ckAIq8Gw2DoMLNFuEma6o
	 AfEiwv+hbBsBRIIzwLfkEp4ee2LQv59QEVGXtNNppGiCjbwjfjL/PIIGohhhU7JqY4
	 jlLJ8O6ioZZjDeortwPhEld8BB2LqLnbE2L5Zx5tmImw4xzn1/9ubGLivDTGp9+yjH
	 qGZN3hYAdeTYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA497C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288731368.24129.7174295851817859001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50630e0830e02a653c07708730e235b723ad1bbc40cc5864509e75fcf6be410c
Date: Wed, 01 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782887313
