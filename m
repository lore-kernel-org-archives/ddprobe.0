Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D27FBE4E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720622783; cv=none; b=SHuROaRslnQcGYdbksFDL2o0OMJJVq8TbSAFX5t2EFB7N2S/bpwu3Dwxo7Yr+bGDxRrtyfm3JQR/Oh4SWtB1MluPbDz2r4ebwFS9gXLn9q6Tk7juvE7wbP3FmbSJKZ4NcUSHbHy4ggbTbudE33Rh1YDRi9naEUcg0B+zaw98x7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720622783; c=relaxed/simple;
	bh=02tqWZZPK7sjduIGZIJpdfPQin7O0nfIwa5ZMWBaUgk=;
	h=To:Subject:From:Message-Id:Date; b=Wpkq8pbPjRaJK/5w04dV7/F6eCagv0Wz0uF9Fh/iALTwrZa5kSYgDt6Q7qRsxpljLNbJdVMkKEHXy6fSHLY5XrrGRjahG92aevQNUg9W41AUsMuj88BRXnIwQPTn2G97Cxz3djmg62OgmnoOKERTWORlCmfweqlf+8+a1cY/rGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrlAdjUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrlAdjUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E70F8C4AF07
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720622782;
	bh=02tqWZZPK7sjduIGZIJpdfPQin7O0nfIwa5ZMWBaUgk=;
	h=To:Subject:From:Date:From;
	b=BrlAdjUoFwgeIhBYhE8UHLVnKIKGP1vOy1bnX9/5F3XhHJBziWEeC0CrOBLTiGXl3
	 5GIjN/Nn8E+pvhJQrKRlDc7kbznkn4OUfyLheVC4Zk9W6ooWCxO0HvC6XQg60Pppdw
	 DU6wtx6RILtgfcDPgK6n2wxKwF8ktUP8Wg9PaZOcmIcWdSem/DFM7qX6q0eUjFWvDJ
	 dgMYmm5wuR4mvMYWqFcX+uLVKazQ8wFqDwfcbOLJwP9trR/CL0jc9blYpBIYvMmiXv
	 b2oDt39LpikAUskY3bhGph3IjDeRO0C77Bm9gn4gBCb4hcMhv7YPjC+eZbRpY/eVT+
	 t/I4gF0RFjadw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD6A3C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062278283.20308.12930365353997493877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c25da0076d6a29455a201f1094ccb2009102741ccecdc2e6318e6ead3a1693d
Date: Wed, 10 Jul 2024 14:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720622782
