Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB4B221264
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759525194; cv=none; b=Lj4nWdh7tl+RXkKnc79mIYzkYBpj5o5wFegVJUCNd455lIPGVwcuyrilCbkSd7C8GbJIaUkzUo8fW3vSgy+K/LvzzxbjyvDSrlaKKSP0bD1hPy3m2iSGE10rCBD6uylF0elIOJRJxJB06iRHIgabT7OLOpGohjShnSzTVtJ6FyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759525194; c=relaxed/simple;
	bh=vCbu3ojcCIiQA0UuFsnrjopXrb73BDBCk2/4rQ187Rk=;
	h=To:Subject:From:Message-Id:Date; b=FoEwwHPGxr/1OQlh29Jp/PaUt02yAnbl6aqJeWW7TeBPNEEyjc2Kab2pOesu6iGDUkUDQjiTGLYgG6yeTd9UrDqS9GGxiB64dp/GbR/E00DNJowCvt1CDGjFAoC5FN/6+rUYLl63V1pWaQBIDo7ffGEeoudvgeL7xpn5I3T1V18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l02Mp5lI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l02Mp5lI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24EDC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759525193;
	bh=vCbu3ojcCIiQA0UuFsnrjopXrb73BDBCk2/4rQ187Rk=;
	h=To:Subject:From:Date:From;
	b=l02Mp5lIJePMBRvX3ne03Ftd1XlSunWbfMm2XAFDBTS4BHDVmqGzlyPRjMEytQ+Pl
	 GtA5QDJzBmJYRhnZYIODecRJt2ngHfLbn+WhurptoGxAFChzIIJyruiFpRzr0wPDxl
	 us7hlKzZ+fCECVYvRJrTyQPBxp181LdX9fz+3wG3TVicbyOuapTVqq2C3lVbS0kHk3
	 Y9yJBS9F6Lrt57CJLcvf7We6EN22ICIFLhGMymY6gAJCedNQ2BnwgDLnHBklv2vo/O
	 MRvbSsy8ABDlJ+BImEPKKAbw11Q7vFBKhlCq5okl5ZNjNEuwP5O/z3T+kqugRF6INu
	 MHQsWYDRQ2NZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB3FCCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952519358.10577.9118206244507131164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325ae47c86e3a4378c5914956d19ff3fa2df6b3ef8b0252e7e37d5ca7ddfeb4a
Date: Fri, 03 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759525193
