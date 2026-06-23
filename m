Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374BE3955F6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782244594; cv=none; b=fpNevXORiTnH5Aeyy9fJgbZnTPwV4RfbpqsHoUx5S+AdT37o+9SWkHE9qDWmYtnzrUuhjDSUh/2d4OE9vo7UMg0+BfM4WEU/dIc5qegiNU4NphwL3sz62IpVz9+ySJsfGJcMpNlvgBHw5UHpGWlrhzxZlyUA4UNH24K7LU92LSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782244594; c=relaxed/simple;
	bh=3SjHU7umE2L/fKwl/UFm4DSSFWrU0v69KCGbV674en4=;
	h=To:Subject:From:Message-Id:Date; b=e2ZbblKHA52EdQf8IuV0eqSAw3DJjUOFnJ3qjNR2qUMJAwzKkvMYg9c7BqRj28CKb8gfcSyUII7ahMgTCLXk8HNoacb8Q0FulVHXlOO55NkqfJ4kZ9hp4R1jm3HwSNShiGUCZirKhyXr7GhyRAWZcu8F9H6Ei4EVOY1o9v9KtJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWE1UhRr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWE1UhRr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D8AC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782244593;
	bh=3SjHU7umE2L/fKwl/UFm4DSSFWrU0v69KCGbV674en4=;
	h=To:Subject:From:Date:From;
	b=eWE1UhRru+1f3BNONObRSJtrd6XyxzlyGCvzfd3E8zc+dFWUW2x9eCk+EPvv3fTWo
	 a5vy1SXCSf+pfp3BZiTZJVhmmjAbAcMWNR1w+VwNQbaWvCIG0bONOInrjFgiYKhDmX
	 yowUDCI/ibdrftIKMYXSQUsTHyfHx41La/3z91Tet5Q5THdS/CkRwLQ92Vcmk+eDUf
	 MwQmcuoNGyObFpTN0qC4H0xI4/q9aIguM8FTZBYkvPqLSsqolCOw1r3vpMNUOMIrdr
	 7bPVYApyu4Oe1bmIRUYpvzmruII4jX6g7AT45+1r6+TnUAP1X9RhTRnbC5pP1yZaMr
	 Wu2DVD6I6Fdsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07F0CDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224459369.30502.7292646380349511815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e32d07b7972d907cb0480161c2d89ccc6e6d053e79e06deb6684709b4799e04
Date: Tue, 23 Jun 2026 19:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782244593
