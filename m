Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110802E370A
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754690994; cv=none; b=R5yLPYTDbO+r5vPP53qMj7dvGvltF1REqTUEGU3Dv0Wv56wBX3snkf3nk0Pq3rK0c/oAicCBje0cm+cQViN18EX9A+JZc14PSu0A18h5NIQWzMeBNqXRN5eIYTapNnBj43bHhcnkEWZemSr8AVEOPnCCQcbRQyQ/i0C1Wa9EiQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754690994; c=relaxed/simple;
	bh=uKrF9F+0KUHD+1j/tE8E/FnP4jGawIQFBwPGwrk8hGQ=;
	h=To:Subject:From:Message-Id:Date; b=DKRluY6EOtwaJHgcDuiT4rI7CjuEo0N78lyoceDqe/uWvUU3PVLu7DDz929uLfmQe9a9B35m1/f8i8Rzpk2wvBd83FVqDmIAYqfxvKagrqzVUKodDIED/qIRMR5pcSSL6g1vCd/gREpuWCFNoKycQAz6IXQIzbKEwaZrf0RA1xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRkio6OD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRkio6OD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E04EC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754690993;
	bh=uKrF9F+0KUHD+1j/tE8E/FnP4jGawIQFBwPGwrk8hGQ=;
	h=To:Subject:From:Date:From;
	b=qRkio6ODlwqcGlFqCHHjNhjr+yJ5AvUV7osGyyJr+rocmyOXOK1ilfcnKMVQcj0ND
	 ju1XVdPIExP5sqlPaJzFVX2P6AMighd7bt41GrIp9ZzLUx204ibIZ3nT11c2ldapDq
	 DGp6rqwOiA5bLKdK1pKlJ38HL7cpCc874KjBjII0qIkZM3K28RuEpsZN4ov2p41AXV
	 AvVRPgTsw5vPkzQaP+bGsyHxrQi+3lCxxtTIm0b3bpbUgC9IrtFG5oGsHJy11sRkNN
	 TrVyNnDfw0o8nN4Y+vq3t8m+tqnp5ES0lkLv6TqNuXVUis5EY37vb3yPOkECMlh/e9
	 MIYfxaL1BsdnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF05C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469099357.15826.9595026262670809538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfcd48c76c6d7172f8acfc2aaf263f64592a67e4d28cf69d5bd17bf66091ab6d
Date: Fri, 08 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754690993
