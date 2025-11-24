Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F4436D500
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764012774; cv=none; b=OC17fxLs2N0Kmi4+S2QGZApVDxnJlOgnPFsCzFTw5GvMsyyh/OSftcjzcmdFVo6tM2bb7i7d4YlOwBIV1goGajRDzcDI1zGIzqYugWpPE4H4/TxsoNprT22hZVoZl65cI8+Z3IEGtS7ruH+dcmFcN9BohWHV4AZYy7SQhGX1zx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764012774; c=relaxed/simple;
	bh=3vACN1fC71tETYoc0lBi4IhK4VGZtjd8QvamO7mSObE=;
	h=To:Subject:From:Message-Id:Date; b=terjrywlre36/DF0XBrl52NYghZp+HRf80hWowjIoaYonPDJmXzn2QQSjQ0hs6rxr3+Soe4l4HUwjS1p4gD9M/CnR5WSWu+yN/nGDnnid5iT8YZkhq3bhfbCDjv/4aRdYrKnQ08ccXXZFQOMw20jnyP3PT4DQnHwfsDcvBY9yLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7wENiUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7wENiUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9E4C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764012773;
	bh=3vACN1fC71tETYoc0lBi4IhK4VGZtjd8QvamO7mSObE=;
	h=To:Subject:From:Date:From;
	b=k7wENiUtx2kRWiBg6IhXsPfuMYGfd+LCeWVJa5bdDxubXqPluDzhfecxkdiZcGco0
	 qnc4MawGRMVoFBnv0NEzuDaxF79LcnPlkFMKHDmzWmDqg9Xj98gAtTLOtYNJOrssgQ
	 Cg6ujl1uh/xzQlAZ/EF6E4i3o7eVoHlcMSOlktloTEy48kr8WDNHEn5vcdJDg/1WCt
	 BBFt8W9JnDD0iwbWZd/A08tpAkyzCw8Wj3d1fjJIAX5Fdr8rl3jj3pfXpFThqJ1+sX
	 gablyqhyrt+B1H0gMx4IzlupHP6FkOMFoHKU0uzQALrpNFSjCicubzpJfc0ah8n1Sz
	 0BtXhjPECA/pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F10CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401277359.23898.4237745290810579642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795c3790b4bb45fb2a41b6dffaf69db1d1fb02eb436b34c808526e3eea2b8e75
Date: Mon, 24 Nov 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764012773
