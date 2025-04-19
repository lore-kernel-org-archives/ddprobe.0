Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B80134AC
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745054394; cv=none; b=mMkeUGqpiUT2nJnywzkAvZ5nz826K3/umm8dc27IOVOpuOW+WhRiSzC/qfUGEaGqwS7PijcLO8AlbGDTtMHoxnhPH7A0Ty6WcN/BoahstG2OWTuDHsh13aMHAvAr/yO2FfYvWSV6iamcwpM38ormtxhBFyEb4FVjL32YYykeJuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745054394; c=relaxed/simple;
	bh=GaSWr/gfsQg3aPHszmjiKiRlugJoDn1X7C2FHtyUxI8=;
	h=To:Subject:From:Message-Id:Date; b=uAZqOgRcDxls0LNP/ai2kjSi+XAJ7NIQFMW5nXeHOLPBGhfxE+jb76yus01bB+HqGGe8dU5BptQMpMsn9t8sQQoM2LTYb3lCzKCcXmZJ6QcYbeYAc56IlS5Ey4Scm4EUGRPaPc52hCyOjZgkM7WExidKFRCIhpwUXEP4dShBiUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fisAy4LZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fisAy4LZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41B0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745054393;
	bh=GaSWr/gfsQg3aPHszmjiKiRlugJoDn1X7C2FHtyUxI8=;
	h=To:Subject:From:Date:From;
	b=fisAy4LZoKxMlsG1YGsfZaB4Ywp5Iq+GagiNTzjWzs2Ao8/jFC1Npz3UFr4NqzTCD
	 KzvEnTTmEhkaIP/MgZ/NxLy8AvU6kNrhtwkaFJOXwmKVBjn4Pt1CdE0YsQ21yzQILz
	 vZ/8pfb1OGJIF0OVns+pOQrJ7wk3zOsvOkkiQf9IsIzNHTfl1Sx/7DDOY+5SOS+oG3
	 luTHEVlNqf81Z4AFcSR3C6sVk3/3mXsTuQb2WSA7GRzwAdQUp3BhRFgLtePfIjDJjg
	 wuDc0xdmMe+rXPXZwtMgzp9zHdlhmQvRebgEM/Fy/WC6jpmoa8aHzmGigMiErlf3Zy
	 B+hFvRdlQDRtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D852C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174505439360.4967.1854516930659855587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec53f1e660b05dac8390448115598e01c3e0b40ac88d46d6ddb3577df3c3f0f
Date: Sat, 19 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745054393
