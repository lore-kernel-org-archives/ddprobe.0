Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282D3381BA
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758311994; cv=none; b=evbAf2/lz9Dos7xiK7yyxl5jIpv6ry8m8X43oWqf1WAM4JVd6KheHSQMozcc1DljgRpMr9bDnGclceGyaUEi/jyfq8Ox/n20EFgI4SdMAXHxXfk6r4G7q8SyowHFS0tV6GSrdkXRISjaAtkuMsV3CJjhKVShJFMMmOK/iUeBx3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758311994; c=relaxed/simple;
	bh=8eRIcXMbxO6bwaGHaKBedtXA+sZKjSLTyweaJpEdjso=;
	h=To:Subject:From:Message-Id:Date; b=NEcJwyFIx7Wwft6BhDNG1nS5v1IYuaSdzXB22k+cv9jVEIkecSTWoyekLm0Fe5y9qZ4p4Cwp/1h8G/D+wu8evlrr+yXGDc2Ccg31LELcWSUiwTfR+KssytaGnggIj/w+ecV/yBeY3diR4CWjJ7NJfg73Sy/OIvb2qRZx/nWj48U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHeBAkU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHeBAkU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A575CC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758311993;
	bh=8eRIcXMbxO6bwaGHaKBedtXA+sZKjSLTyweaJpEdjso=;
	h=To:Subject:From:Date:From;
	b=mHeBAkU64qZID4n1ZLBLH83P2C9Rb5iP8CBsxeNAhfGyU+xJ3kZc8s87kEzXegoet
	 p5E4KooXpPFEDbUfL09afM5t5n9nUF+/JzvlqEJUYDseOF98BVTn2Z+mWc23Ngz9bZ
	 lTuXtRs7tsQMVQd5anu4LaQBEDnlydoYucj3/LobIP+Awoo8n8+TzXWtbkL+lOPeGo
	 cRUrwXh70hGQNIe5BWpoVbVyjGvENiy9CG6iOFYGCSuonOM2YBk8rN+jFxDIl3ovAi
	 NNUEec8pY1YOtgdmZ66ZbYcU9mKBQRWtgnA5vwUy9LrC4EQS+dj/esNaTPAHiW4oB5
	 LXQOBNeNzhDPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D57CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831199358.10700.1486628382610150697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221062eebfcda2295f59c4a854cc19e5089f4ba375b6530d824d83f74949a2cb
Date: Fri, 19 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758311993
