Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BB67F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 00:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714351943; cv=none; b=ZO2+iIKBM/MndO5aN7f4N5uS8l6ExwqR5+RWOhyIa4iXxCVffOSYROywzj4Jxn3WxrB6OBj/JFuQ5r1ypRPbsZjC2Gx1mPyQ8ZU8Hixx1NL76KrbRQaQI5pY2yQ96/BMLcHZolUDvBCsgDgI1CfxGWV92k3GtJyRnlEOZSQM1Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714351943; c=relaxed/simple;
	bh=gg8aCPC+xBdccnCRwszAZR54wO3OZbn+34LlccQPrxY=;
	h=To:Subject:From:Message-Id:Date; b=QlciVawyrRDboZQeHyQt93jq3VNELHonlQuRvu74iQndM+v39Qwbrg7j1VQ38DH17IY03rG58seMPIs7WgEgViGdr/aP/bj01NRYbzGQ6ArXyrXpxFXFOzWrfz2n2i6vB1J00Q2o5g+118qBzFk9XVEU7bnJtx6re1AUKgOOOfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6XjZW91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6XjZW91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D13C113CC
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 00:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714351942;
	bh=gg8aCPC+xBdccnCRwszAZR54wO3OZbn+34LlccQPrxY=;
	h=To:Subject:From:Date:From;
	b=k6XjZW91ohPxtI4jDW5wjbDIFRB5dANKKGEWdNx/oZGDBxLSJ4CXEEEGgWYPxmboM
	 G6tnqdF3fegZ5yQqBAPHl7Nn6eMGl3fpRmtdVwActi113wPRX9+uveFsbb4+6MWdpE
	 gd602xlZjd5RrgDuHMlGRd64l4MRn0KQLhcnDkRuAC5exdfI/gAhikFtti2tSRA05q
	 VDNLWnj+uv1PJS3PBlqmOuiHAml0gwfRYFMJn3r7D/Ox5AiKzdxxyUVNNbR9UG17C/
	 TD/2vAMTeVPi+3yKbNg2OkINCmASuht33dE9/ug0AfSoMP9QizJf9X+Qr9n6Q8JmYS
	 NgEobzQfC19/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4141C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171435194276.19694.6819099177617050759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61a3f811dbc992733aaea6e16ef2bafb549dfdce3305b4ebe7140f2306a6d455
Date: Mon, 29 Apr 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714351942
