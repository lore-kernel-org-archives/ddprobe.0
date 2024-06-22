Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FA514D281
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 10:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719053543; cv=none; b=fhKiuaEQO/QiskTSNpl7Gj8MZa857nU2FLNJylWYXogjBMsbyQ3bfVUFnzDUqv+glk6+M/1awinv333cUh4MCmN3xtDOAxajtmLD2yYgWMtyKpxRw09y3ytPogr4Wa+yy6OBr47HjD2xt+QVMCjT4fsZDhhd2NFaLv0e3huWdIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719053543; c=relaxed/simple;
	bh=9hnubSJy4fi5E2t8LxvjKUnza4/+/3fpoOP5MGrALbc=;
	h=To:Subject:From:Message-Id:Date; b=uSB9VUt1hKvdcC5DP+NjDILNedYiaSDBteMZQl7SPLNVVYvvz15azzv/QSvFgyPcIYPNUI7kqq0acxQXVmAJDU7ITFsuv3Wis7Ho3iWE5aWNPC7tpwCYZQ0th44Hyjly9ttmgnF3dGwkI8RnpYGZsv/H+j95KlaDUbWY6NwwxoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvBTxQaY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvBTxQaY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1CC3C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 10:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719053542;
	bh=9hnubSJy4fi5E2t8LxvjKUnza4/+/3fpoOP5MGrALbc=;
	h=To:Subject:From:Date:From;
	b=LvBTxQaYVv6x9UwVz7YWlXl6UJwPQrHPyPYErak3l1Xa4joE2qqe8FhurbK0GjEs7
	 LdSWCaMSSEfnikOH5BQHFDFiVVz0Q9XmLndeVddPPn6u7jeJm8h6K7kRtz4gYYf1ql
	 iryWoCn6EgPI24MgOzDmFodRh73oVZiT6CbZpNIX33u16tWINiOYNIqKTE9Z7mSFMV
	 VNX2gK+kOz67ZL8GBzXwIj80ht2lx4vIK5kMBUv1FJoBKpvAGN5YUDQgyb99QT4wc3
	 h7jpHal4gH6trZlo1NnFLTsVR7XceSnkmJKQjmvEq5bC8Ma49VzKUzq9aiUm4xI1TD
	 lmlLoBRsCHrUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C900CC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 10:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171905354280.31644.13973572250501940591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71356e0ad1a29027c15a78fbf7a463b9999536815f1701f7d315820db21b2488
Date: Sat, 22 Jun 2024 10:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719053542
