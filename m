Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E9F17C203
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782934114; cv=none; b=qcGgbv5/LiayT52gyc2YZyy/obp39g5jpwJ+iIipwb9ceNCY4UUgfrK9dP9FPlQVT1Zj7FV53oZOFEWviWWS3F7pmEFjBdB7EYGn3bb1v8AjWcaGrR9u1XpAFyRsKxBUp4m7tqb5k2mEmxEb4sn+xEANu9arJq4DV0jSYI/E+Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782934114; c=relaxed/simple;
	bh=N/31TJ2LGeiN+taQj2UdVGVACopo4titPLRxyw4opIU=;
	h=To:Subject:From:Message-Id:Date; b=EQryI9DX68dpO1M6YTYGLp2BLY0BRS7jfBDlsRoFCshPxHD0lEGQz7C/L6EowyyKPRzc2qkcJV6TEHAR0LqnsmGCzT6WmqtzIxadLPgXg7rLqTXEY3PfNgQqEQpPJTtsJ1b5OI61dsbEuW4tpdFwk9QtxeGKhguSAMFIedszjVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tx/LVZfI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tx/LVZfI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32AFC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782934113;
	bh=N/31TJ2LGeiN+taQj2UdVGVACopo4titPLRxyw4opIU=;
	h=To:Subject:From:Date:From;
	b=tx/LVZfIP4niTZ0ex8KdyoicY4zHc6dPBbDatRvQQpJyLWWFUhw44mN0xszYg/xpm
	 xIVRaF4wExQlHpGcr6/gYI0szA08IYJh95K7Q565JRiU+4gAjBKoTTDPaG1t5VC4hp
	 6aJQ4d/zL8wQ7fZATwLQxT24IQAAZOiyUpRXqID4FPTbsvMSiC7o84fJou/Q384izv
	 68LvR+NKWyc0IBEZO1Lo7RoHJAsMlnNZ0k/XbQtXpniU6LBAZSvR/TaHZkZ1a1W1AF
	 DcghzRCUTDxKaNdZLufyynbBjVa/HsiBPy3eJRMUyyiSjv8XA0KC8bTKVsKKmHqlVT
	 oAW45oBjkgdLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F06C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178293411368.22710.1790485029649474320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b622709674607bc1397d4f57b533a9ebf8c72a55790e75c8dd4f721a6e88bd
Date: Wed, 01 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782934113
