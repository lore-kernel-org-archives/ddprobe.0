Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0E528FA
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 02:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716257543; cv=none; b=Q43stoeh2PBaOPF4QYJCZG3Zg+xi0NzhRq5LZ1FInL27zBQkUkR0sTJJIFX/ANMz0nOe8H9UZ0i6vFvli1cmUoLUSZ+plSq4J31lR/dJEdenzVjFUh2V8RpG+4hx9ABzwXmLSAFTftDdYNa3G1tPs6Yeyau4eLg1/N3JQJenBk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716257543; c=relaxed/simple;
	bh=cRpcqoCMZ5WbTrrmV0xcbWxcww9wTfyRI5W14bjFOZ8=;
	h=To:Subject:From:Message-Id:Date; b=qUIC3uB9x2r4YxNudwRjIvh9gQt3joA2uu/F8H42eB0AwOR3x5PodMo/HElsx12XKtHBoHEBwg314EGTNR8yJwachGpeCy2p10vHIVpkj3hshkm4aFDnqPGP9Hw0fCfSkjH89ffC56B+fZC7wo81KNnRH+mNcDugrQ9wlAi1P+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbjMKijZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbjMKijZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0D4C32786
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716257542;
	bh=cRpcqoCMZ5WbTrrmV0xcbWxcww9wTfyRI5W14bjFOZ8=;
	h=To:Subject:From:Date:From;
	b=JbjMKijZ/irmaCLev3QXJA2R7uoDPwz2PM4hh8+UUI+Q6sAEl+Cv8ksMnJw5jmS+V
	 lUFdf3V6yluvQn57tUFlxwMiB2CYTQ6AGiOdhtbFKpHBZjlq2419GXcDbz1Of7yO/B
	 54+pXvX9hMlEeU5GdOiZAiPXUuBEE7Cdt8fLA3PBVsxMXsLmK0zt3htpcrNYbBeHy8
	 WTuLjwaGwjjXeIKmTTa65MgTzuBKqXvO71nkaRBuDPgZVQulb9AjmnF0hjbcfa0gMu
	 NipD1kC8qgxWKuFT7Raqeecm/A3+Kyktwp6JzmauMfU5H0psAExt9UytEA0mM4mybk
	 WhT8gqXaiaXDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93DEC25B77
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171625754276.12912.225846365891909996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f18420c8040b1fba80d2a6d338715b35d0867c6601fa8ab86decb1359e1be83
Date: Tue, 21 May 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716257542
