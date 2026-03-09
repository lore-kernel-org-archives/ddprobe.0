Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2DE3D544
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773100494; cv=none; b=CC6vyXn1I3PkYpNQrSdoqxxNs/fk/MoG1KP9r0mThHfLzUjgzwJ6rq0cAQkcPMoWbQ4u8Q0S5TNJYyBozRkzkZbU3HBpgS1D1Iqn0Ox0Hw0An9FdmokR1TqWwPbVXfqXIcVo46rAGKa9HWYDniU5Pi2z1Ys50BU1Ew2OH1vivec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773100494; c=relaxed/simple;
	bh=1yI0SsX6Yrpgpvkr50Bxcp2uW8GO08woSeYujDiADgY=;
	h=To:Subject:From:Message-Id:Date; b=j3vGf18+hoaissHbmWwO87TVsdB4DhTpROGNgZjIypywrcvBIXGAQh+vs8QTY71oXxQRhnsDaTlgZ07M7AnsWY+Rgj54SiXS1ZecNqmmG2TiTBxosE3TXBAjxTUzUuAMlE7qpvINAw5bILYd4k94R7SbtywMvJZGZIJwC22JAVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJUEXgas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJUEXgas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68DEC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773100493;
	bh=1yI0SsX6Yrpgpvkr50Bxcp2uW8GO08woSeYujDiADgY=;
	h=To:Subject:From:Date:From;
	b=bJUEXgasn8HuWw4eJ7fsi6DTBTGnzM/lcprh5mcc9oi3RMgz7sdzmK4NCeWUKZHjT
	 /tVL3gQUEPSKFXk2iyh/xpHNdJ9m3b+3keBbGMPZwcsTo9YX7h9Qz4YnQG2tORY0Vc
	 C194bzQPqdO4Cbf7zHSvalzG4kcq0SohZHVVZKvVQBPJDc6x081oiq1xmx9KPHP2OJ
	 OJ37cyO6a/yuEBC0hPHSYukXhWoVz1s4h3DqlTzDcUM5pWJSS79Ys7jbO40B4DxeKI
	 sYHIv42Vwab5qF7ArgD+LWhi/lt5kcj3dheHWdxftnSjv9K/N/gh4oB590UybRZGcN
	 xfj8Zx2llYL3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EDFFCC9A5
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177310049358.23217.3173611219080848806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a40e40debbe3e5be4f7509ebbabced0ea3f98fa97a8594ac44da6644835010d
Date: Mon, 09 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773100493
