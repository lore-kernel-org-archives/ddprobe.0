Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC1214A095
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 04:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738643754; cv=none; b=FsQOaC5ksCpGOYRY5gQJAXPCwpPWBbprwr3eVy3xF8q+uSdPQb6NPG09gU7g6K15bpsS1j2cJGbJyb6AqbEkcrGdhNymdXcQFHYzezfLtEVPd4i9YKAIQilw9yCsP+tAfKLbBazeUElMR/xZDzOuz525y/ZRSuw0DAba7wWH/4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738643754; c=relaxed/simple;
	bh=UfcyJR80L1e+W3s8mWWO9q5Asr4PA+ozXtBqFeU+mX8=;
	h=To:Subject:From:Message-Id:Date; b=R9ypeigE4ABM/69VF0/Ne6imER95ApFLIAaQY7NWgB3v+wrk0peB4A2WKdwuBHfmOiHK+KwCceMlDp9BVVzdJgE/zFkJnyIVgPSm4lrH7p7MCfpaRe3KOxWzXSqqdy7XSst1qWjngvrN1MteTOosJKdqJnDuCuwQf/8s+ju91A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvFzSnUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvFzSnUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A51C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738643753;
	bh=UfcyJR80L1e+W3s8mWWO9q5Asr4PA+ozXtBqFeU+mX8=;
	h=To:Subject:From:Date:From;
	b=gvFzSnUZ5xcOCHY9ICjNVDQwkBOlf0ffNxr9ysVCALVyG+fkEDLxLOsaecbDtwL1L
	 1a0VwMJULbP0e5rsW563AQRfYHe75u71emZe7KPbr1dSTNZ30NvCKZu1NFsQ39WJ0j
	 t9swsPHrXjEGa0qSi0p1j/EWJ+k5V4lnwZoiXA/fXcu3iyxLWKUvwB6cWRAKb873E3
	 T0ipYbo6TCVU5BgmMgcfXK4tlMFypJXoN37Gd+Z21taFJqd7LycER14Z9EoHEEfdTe
	 miBQky0jOIEfdJPD79ofOMrJOLm0YP7ywmsaB7sk5209sLUzBqXGiklZbJ73S/rODZ
	 gl68PFlv3gxlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F08C0218F
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173864375373.29340.9469831331027580690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33052e030cbc1a0e148e0fe06e29e7e89c8e40ed20b414810aa150e2bc86eed2
Date: Tue, 04 Feb 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738643753
