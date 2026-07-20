Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D323B42F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784576314; cv=none; b=pB5JvlrXiu/VaAC+KLXpPIIPPhW7xPNICCU/zI+I0ntBwptEeGFT4Hxxu2AcxPcrcjrtiLtRgEAtNVfwy7cWQL1PvDLC2iVF9/sTm8es/XGMCInBHL7U/6xWs1vPFyTojSvZbRk+c/zdfaGPd7qgzIvenwbDN9awxunpyTEk6Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784576314; c=relaxed/simple;
	bh=WRUt42Q1yNUgifZeU7G8QPNO+V3XTarx7yGbmB72JAc=;
	h=To:Subject:From:Message-Id:Date; b=qe47u1/kbhk7LbbNE/53+gCQ989+64a/8/1/BOCTdN0pviAh0BXfCvBzsjbbRDee0y2PU5Z2nB95yb+Xk8YhQVGjjNHfaifPJI7rCaCXrXGIpjaLxfGTz5R5JD8TsotgrXupTjz3EgIL7VuO6xiQjpG40mlczmwAkDXnt31xIxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioAit37W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioAit37W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3F6C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784576313;
	bh=WRUt42Q1yNUgifZeU7G8QPNO+V3XTarx7yGbmB72JAc=;
	h=To:Subject:From:Date:From;
	b=ioAit37WbUa1VY3aNMvrlWvk6bLVwagae0JuNV/dkAZu7myyY2X9MH+fIBIdO/TF+
	 2HtcjYwaR6Z+/bhxBJ88Uhz8pIRX0Qh9USWSkcP+sjwULUviRiDJrKAGT/LNDDa34N
	 MBftZSvwogPOzD2nsW+VBB/55+XupRKuzKUBWzQQBtstpvqEMSJT8F2kAUjsnwAlsP
	 Y12YAfIM0KZvQi9oox0ZX5ylGYrQDnugMj3qYTpfy0riSsr1CphyuCr/mqomZgYke6
	 IOkc8h8zw/XiQ1CAJFPJcSoIlwZ/+qUNDsjjkperJUBQRcqQX6E1vFrBq5vnI/aHBv
	 u8s/00SbBF+bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7006C44529
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457631374.27524.13566815362731024646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21e9c9b29e2cfb564c78ab0c9034ad66457c00e80c01a838dbacb9e39807844
Date: Mon, 20 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784576313
