Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A191C28E
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764917574; cv=none; b=UjGBAybq4oWfK7kVR/gQGUdymx1e4unfnlo7RQxp98WjMu4LprR4/aJMkDYRenie+DsGZsNOXT0f2y6dSgVEaomYmNBEMsgoxSLIN7RJHUC2OJnaoub2tnN72xNcE923e3WBJYIyWteOhLNBhgmy+v0xXzE0uu5OR626Gduw10g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764917574; c=relaxed/simple;
	bh=fpWrvrh71uUD1RuqT4VUH/IuirqCwJv2A2xi84qs7cg=;
	h=To:Subject:From:Message-Id:Date; b=IX+lGMckPUaRsTEaJy/s7LrqtpvqOhmGhT52Y917bcfxYwv1xjyipXaY9GcosYzBGf5p0DTBmYxEeP/+Ktje1SmhmPlSkEdzoW5+8ufB3ewZ0xsOOSkCbsOBbtkuCWJFTHBZsN5GUGkZbZPiB0O6hUNbxDvQr0ybZbEwYnH7LCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvFmOqpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvFmOqpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA581C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764917573;
	bh=fpWrvrh71uUD1RuqT4VUH/IuirqCwJv2A2xi84qs7cg=;
	h=To:Subject:From:Date:From;
	b=UvFmOqpMhlx73DUJnXIj/kXUQuVT+KIJrrivIa2SnD5dcmJ0kzbm9t/NYKq57YrcR
	 ktWWlZdURe8ip2eIjFM+UdtvVon//l//wEXbHRQ4mCSZvOpx21zY35sxaJLP3LaLig
	 C0ELiSuLwXoOTbVNigRm8GFpgB8rlm/DH1IGrgNOJT6Up30jwZSIzDqyJWee9Q1VHp
	 IX57zryGexCKbrfzrI4e+c7gBp5PttlI+g9cEs6qBgDrzcgVZbE7VgE5PHzVK6gL3O
	 HUdKQ3Q4A9J0IVfEbVFJjbKDNZiePgMACgyLyGc581ucGfMzlM1Rur1kg0VwZgi2Jp
	 sUzCisc61r3Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98082D2E00D
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176491757361.2529.11617884524787702098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8dbbb327f614c9cc51f8ec4c260c02f4b0235ebf550714bf0a6d4adfa86371
Date: Fri, 05 Dec 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764917573
