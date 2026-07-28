Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC6941F5D4
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785233434; cv=none; b=CIqbk175GA2nCJMUsDYZ1fU3T5hW/i1s7iHNHlDYcz3SYjE1LbOn6eL1a49u56Ib+Rqpdh0p7j+4VyWUq4n/9/AUixeCS+rvUdUcw+ADQEPRswiIWUCOuX1KPJ05l1aKyhd8DnSepa3M3kRvubecvMjfjV9tl7IYvS2zsgFFKnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785233434; c=relaxed/simple;
	bh=2TKqpkcAfome5+tmoSGR3WKjbn3mKKrc6gjpoVBJscA=;
	h=To:Subject:From:Message-Id:Date; b=sJcDOKbDSO6Mn0njMz7QpC7Ftn19Gs2XBSh4k7Va7OvBuS5XHzS2XuU2ARK56eB3hezs/InidrmXkH38biizpe+P6cBTD/lLv2Y50oZ3Bll2XRr2CcphCIaZKU0jDB2FYN4kPoXlW16KR54soRkwFwkfU2VdPfGCxGDI2zk75xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbZeTw6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbZeTw6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E12C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785233433;
	bh=2TKqpkcAfome5+tmoSGR3WKjbn3mKKrc6gjpoVBJscA=;
	h=To:Subject:From:Date:From;
	b=TbZeTw6xyNZR2zd3KikdeUaegXn9hzRy8ZlpJXrnlBMUPrAi+imN2pxg8Scgzqu/f
	 YvVYdRX8HTOkjG0X2DUDaz6BYxg9qqJDO3QaQcXNiSNJMaNVE+Ttcrnhbke8xF1Afs
	 px5g1QCKilxf80J7UbMyJWkb0IZqFuGAGuZXkoUUnh5zBWhIOfd/hAnyP8tPN0Ttb7
	 GN9eARzIm8u85pxwOC8zw0LH2Og0Iaf63iYjSMXJX2cjdz6QjmwUoiVus6i8qcMZKe
	 Xh72C0gXKkRzc+NpqMud87SWEKkIuE6irP850gy3QHeR6i8fYMXWXT3OlosF1eGGFn
	 FUbDPWs9U/1jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6849C531F9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178523343373.20782.13712044063827663636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fce02f224212ba85870f9461179ee84b8774385ada2ea8c53f158ee44566260
Date: Tue, 28 Jul 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785233433
