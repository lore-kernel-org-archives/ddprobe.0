Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386F91C36
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743209394; cv=none; b=N+bw11gl6e+sU9fbItYKsmBcOUea7lobxH1W5QyTwafWe8VBz7P08S2T8JqnuXx3DZ9Y8ClW/UKAVSv47FZkQOO+brhRsAs7TpIlPoXRKSxDUr1WsFMw1mt4RhPLpEoW9JSVSt3D07TGgxjMcgQNrlqfWHkVZpwyVNOBPlOiRuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743209394; c=relaxed/simple;
	bh=gwO33jJRv136OBUUPksL3sNgv4ZmEaqbAzY5A2YeVzQ=;
	h=To:Subject:From:Message-Id:Date; b=Z9ThEbKxITGoC16Kd2OnqLTYuKm5GziY+96eOhapByH9qS3wONiAJplFJZAzB0mvaGjPY1nPYJTfaZVy1oyLAN15SmvDNZT/QwgWC6sofXMH7vokPhYosEI1Hbsb06jgOvBTyJQ7NcMsjlKVymZTqX3i32WIajX29ljH/b27aTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6dj5ql1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6dj5ql1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEEFC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743209393;
	bh=gwO33jJRv136OBUUPksL3sNgv4ZmEaqbAzY5A2YeVzQ=;
	h=To:Subject:From:Date:From;
	b=g6dj5ql1CEOkaT/xEuR4jHhpny86Rosv27nji7CxtnwJhc8ujYM2/tG+pNSwuTyZh
	 lasmdalN0SxXEfadsw3BRsKCN09mufR1t1lmh+L91I9CE2RtKGRpt9+7GfMoT9CcTQ
	 Pna0zj+lXrIFjQxMZc3owqzMGTFpg0pTfBya0Vh/45uzpBDrunuEODjQJPdP5gapu2
	 Tcivra443AZlEu04eDHTKMfDHqA6X8R+U3dBnlX+NiDRXos4Ij7TNRu0TL0rdtpeiT
	 6eRlDFpfH69MrvFrHLduWsd659j9aalzR8TVx2gUykINe5E3n1aF9dZTnHwPdFd2aw
	 +rv+NqeBshdbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93106C36011
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174320939358.26921.13540525727679107801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aef7f79e192dd000d9f8a62b03f51d2f2f29ea8a80b480727daa8c73d28a06c
Date: Sat, 29 Mar 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743209393
