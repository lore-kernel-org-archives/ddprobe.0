Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703573F54CB
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782478054; cv=none; b=m/98bt21WvIGvk3PK1ApgNFxR0xQ2ULahqpr/Ou4T6+diAegGrJ4WZwUpqNkYEnaHgO/D9bVw8qRssXDx3VkNRG2LX6ItjRS/JIx7m75klXwTCIj7+Z46AcICD4hmi60lYQLOl3qFUt9FpC7Hs3Za6clvzRVAZt3UGEjfA5SYKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782478054; c=relaxed/simple;
	bh=onfk7eqQZI3gvzSY6q8I3i0qZouoUr8pe7lVtqNJOAo=;
	h=To:Subject:From:Message-Id:Date; b=OoCpBwmhLQgJvl7ZgQKd5WkAS0qimVgRXdkL5WVbmU4lCeXqwA7978GYQFVv5HvVz32cDlpiwrdsf7su5t6zAGtgrLeR9CS4DF19iWDdoBfuIF+D4Q/kCHVEPCbZOd8HWjt+hQfvVY5OooCs5hz/htOvkCf2/nVKMOYcvwStay8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAOCuX6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAOCuX6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9120C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782478053;
	bh=onfk7eqQZI3gvzSY6q8I3i0qZouoUr8pe7lVtqNJOAo=;
	h=To:Subject:From:Date:From;
	b=VAOCuX6NSZcDROxhRXq7ogImaloR3vm1y/TzgRlNeUuHvAE/6dtDsIXaoERlTNhQ4
	 IGLKApwqcleK2la78DbNFuPyf5C3NPjRoq7p1u1qbBX04qkDV5ifFyOA4r6IHClfAG
	 BUIiZferJdrHYDMhS6ZP2yqqZonbkubBKJOSvd5wSce6FSlydj0tKXAD1Nd6vw6ND4
	 7Xrj4PLtbHYhZtgU8Zxaa9J+G1tFbYI4Gg9eDECsJJurEAoHEVf6+MtREEtTs0u5bM
	 eDJB9VAZeknYmW8vL0/PjrgNbkVO4YepkFOoC7SHENEDj09wm/x58c8DH/2gALkDOI
	 7L7XTMUUHrlAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB048CDE00E
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247805369.23231.5807146248781948026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0439821b69eee52e17f1900aae390651d1d5383efa126c084ec54e6908c40bd1
Date: Fri, 26 Jun 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782478053
