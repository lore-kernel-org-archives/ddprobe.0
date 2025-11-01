Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F232DC348
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761996594; cv=none; b=rJw6PI7B9TUUWdVS2YbsCIujdk6T+vqFWvWpwaf6J2tr/JAokehIn560ZcqyQQ7DaEQYf+lmNytqMN9aL0Mlbalxht1V1snvT3q3IntKiBCLfGdWW5+ZOIG30dt+Ya9xnz6YPv7XuCXIVipAk7qkB6ctoGVxIGKPfUG6uMFPDV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761996594; c=relaxed/simple;
	bh=csI4kKHEjIxHqpSCGdjplndbfBchb7AVQDjiLLGEYjM=;
	h=To:Subject:From:Message-Id:Date; b=LqSUm3wgQQfinrhYCj4tBXxfJ1HrbzKDGn3JJP1nhwU52aA8scJMt/ajXP098FwpfRWE9feJ+AuwblMMo38MVxoz7zgtka2GurOovxp6GK/ortfnuuQqpALd2MUhVKe7zm5Dq6bhjU3zLh5DeooQgGR56hzh7tLUfRLKwSMA6mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/OiJII0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/OiJII0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B7AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761996593;
	bh=csI4kKHEjIxHqpSCGdjplndbfBchb7AVQDjiLLGEYjM=;
	h=To:Subject:From:Date:From;
	b=b/OiJII06PB9wveuolSig1j2vLn7OBgwPIOgPxsREX27w9lFTxfhktJwzvTgQ7kRe
	 xPX+k7THvsUvg6xuG0KzSeWrStM9YnUkqfu+nyBpJh9SnuRZDf7o+OITARPg/6JAHN
	 ilZMgv6UTeYgcL5sEgtTNvePNe3J7E5JcxPKFaMeDGUZ5QnO614cXJAjwP0xinaQyE
	 wHi4DAWiORH2oG9ivMI+BiH4Q1LNyTCPLmYXxLUSYSwmiR/ztSHrdoOqyKVx5vg3C2
	 Qip3Kef3M0EA6sGixKBwNxSGbNJR/JcHy1O2sfS9yHOy6JwF9xWDk8NkjtoKP1vGhY
	 WpBCIjsWYwG5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6FCCCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176199659363.31719.595735334935881870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a89d4efda66de8a7f0a9c97efe0ef9141d5292b5e4047a2aaf87a8159e415b
Date: Sat, 01 Nov 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761996593
