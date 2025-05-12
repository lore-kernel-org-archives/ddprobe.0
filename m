Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418B176034
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747085994; cv=none; b=SuvnIKTQkXlipeo6IvOvKKbLDBpVp2mlTyUCOX8UKt8FYhCKotmUKr9GgQNOch2VW2I/cw9C5KeKM29D+zzM4vbV/Gha66Wx2IXb3D1tKhxD9HlWyX/u1Nd8TdcMQt/wr/kyUIikmJzKupSQ6/p+lWY1tCoNgcH807NvOn/XyPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747085994; c=relaxed/simple;
	bh=B41eaI+8rze3fGSrRdeQz6MoynN+XCHMmyfB3qQUpnQ=;
	h=To:Subject:From:Message-Id:Date; b=MvslXf4kzy/7IKg6y04plyXTo8Hc1bEiEnwlMWky/UHLDan8kZk0KpWIb/M304w9qz8sEpfBOnDmiWUyrjfS0+Tck+XS0Ahe35oXDuhLP/JUrCckdhvRWkJeAPfu0nqNgjly6eXt6ojBFGyXMSr3Q8Crgb5HQz1o9pEMx39xE+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeKf1ZTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeKf1ZTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A469BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747085993;
	bh=B41eaI+8rze3fGSrRdeQz6MoynN+XCHMmyfB3qQUpnQ=;
	h=To:Subject:From:Date:From;
	b=qeKf1ZTyUsCEIeNq8hmLve0u0tSkII+jtT0eBGgGZ/dejtpB+V7YoCqBh8ONkJ17O
	 jmfcF+MA24OCfbm2eS+5bzqlWu76RxmNFMIdb2cCa5VONNXPWLlB6xsfGkJhR+5E49
	 JItcYIgDZEeI3THRJufNLLvhJV8RH4eB38vvhxiiGDl5HObHC4Khrw0vdb25aqjtZV
	 H6Z8/sIvnTomEVgLJhIvHdm7ZmY9YbEGVH5eilXTGFf6is8/n8/An9jWSg5NRYMyRy
	 xViRG94OuUgcq/+zLNhHYCB23lVXsS9AXKBwfB6Gz9oPZ/p+HOiWTDH0Tq8HwGvsJ4
	 k9oMRC4yvXFvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F986C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174708599358.8894.9164335258312734864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c82a40d975e7f22ac76160389a996655073dd7b3d1f6f820a9b49672bc5d26
Date: Mon, 12 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747085993
