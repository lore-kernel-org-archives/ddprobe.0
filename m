Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465BB1798F
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748184594; cv=none; b=WAoDPoMwQOkL0wEJsW07aRbiDxqo7hK/YMtzuRHex/lANxgzBgQMZ6vQn2NnBqZu5pcy+/uZpJTtlDvz8PVSNMcv95K3p8gPTXhkevi9FgUX74+vFS+laKQEekFM0VIgdmwUb+0QM8kbVmID7uJ3TfrHSz91vbk2nLyEPyYuEEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748184594; c=relaxed/simple;
	bh=jEJYlRMdCmJoMpBHSkVG4AQSzA9bN5xdOPR+4tidAwE=;
	h=To:Subject:From:Message-Id:Date; b=s129my/9HA1wHpGSpek9zk2GfY8q6GmgNLMzjTPYRo2IF2OaMR9ghNkCKNSAEd4WaWLRKxDeV/Na7IkZ7pgnELIDhuvbQBBNU2VPRqcQz5tJwQmMF3uksC600MWTInifLOZxHKgtETW5hmU1JFu21pK4lSJPHj+CZqcf4VaovjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbb5xBeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbb5xBeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70ADC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748184593;
	bh=jEJYlRMdCmJoMpBHSkVG4AQSzA9bN5xdOPR+4tidAwE=;
	h=To:Subject:From:Date:From;
	b=rbb5xBeogq9HiGrOjQLYSxvic/+vy7P6iKQfDD5ux2gxzQMioqIk9iW4wBe/SJAIY
	 dIdVynKLItxfmQMnD/eK3FyZxwHzpdtI5uoqzOiGnHhawPDPitZgrXZJSYw8nzlDYQ
	 bUZdPw9hi+cSfZ6gQ0015y53Eaf67QBJh3hortOWrqigI7N3l8rI2ELkSh0Aap+N6/
	 rHiuli2BiBAT4gEch/mrhYEsCaJF/h8auhqk098nVY5p/Tys47bChdBkhQeA8lrfe4
	 WDYtf1AJCgNGcA+YOG6/8oSpz7pC1W+MI7UPGoTXT0u/QepgKxVf0n0ONQJj3AoX/g
	 y7TAyHPU182Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A75C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174818459357.19680.654069162152169257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b345c3cd11c7560b237cd23f741bd05a47923713ba295158f3de69c7a0508209
Date: Sun, 25 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748184593
