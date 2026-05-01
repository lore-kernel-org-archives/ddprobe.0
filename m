Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4C72D97B8
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777669654; cv=none; b=qnA4Dz3R5VqoxcFIx579vgIe5nEitWTUFeusyEPWR+EKBeI4MThOMn2RPMAAqjctjy7h/sGvZoN07iEQWUuSFXyQ+Q5BfnXUp7jcjrGXGmWddTMv44fjm37QGgjh3eQKD2NgbMtk1WAuDSsgu5OxBdSK9dYNFtw5z5h42rPFudY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777669654; c=relaxed/simple;
	bh=JLysnuH0dA4TL/zl0tWPSONYLNrgRQT3rD3PNeh07fM=;
	h=To:Subject:From:Message-Id:Date; b=m7RU6su0rz0pGemQ8OKRN0b/b7YjWeOYRhHFDhzLzpddLgXRoyZ/0mmQ8SZ4juzoLMerdGq7Xt/Nd6Rf06WqrEv6L2yPW+5oTph0WySqiyKamb79nSvKzyB5jIYxKcgIc1LMnioW90TBMt0JiZP617uaTa9h5/FWVqWmAxXEiAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJdZ4dUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJdZ4dUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC72AC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777669653;
	bh=JLysnuH0dA4TL/zl0tWPSONYLNrgRQT3rD3PNeh07fM=;
	h=To:Subject:From:Date:From;
	b=dJdZ4dUlou/i6R5qLKrShbAMmfqUXUHb3+ECTuwX0Z3H+8wz4YmIC5Xm5vl9g/egJ
	 +1INzyqFQiiVdKidJ10L3fJBKhu8lEjC/aY7TWaQqhV1JZoqG+/P9/yjQn3wRBruaR
	 BCJ/I7D3OipyofmHmBrsTtNtrd3JpJ3py1cfitRpe1Xl8WjnLPY8TBtJaoZOs+mrmu
	 DHZqqcovhS3/BmcUBeEuI6ipi5c0G+MAkXjAHmMuO4OzuvkqGFUqTrBhumAfkPJb3k
	 Uge9GrswtTVo19NPSCB24qGgA9HsqZabdJhrlN0S+26eETeilTZ6HvYx6+xoAeKDD1
	 Vy2wTAGfDAqJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9C0CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766965368.27533.18097266175599492165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77905336e50779c0233570288f3b2cbe41db3865557ad8cee71f47d9cbfbac2d
Date: Fri, 01 May 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777669653
