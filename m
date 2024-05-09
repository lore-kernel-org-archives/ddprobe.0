Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6C83A8CB
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 15:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715266943; cv=none; b=Dj/a1UxIYYFLKnJcMqWE41TL1RQQ+eO65anHYBabYtgVNSq6cNmW/5730R3K+W6DlqCrA7Ksb8zZ+hFzOkagq27wZow3Bdl01ukLJwOMXo0rfaFmvNc1pM+87E8I6dkP39LUFLSncjnNiZufCKyE77jMlyWZLuBJ3WnN33ZDLOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715266943; c=relaxed/simple;
	bh=5zQnO6nnVcrlYqOaHJluEF9GOIjt9CE+8pixNnju/D4=;
	h=To:Subject:From:Message-Id:Date; b=nviHN6KcHLfk0bQc6eCuRhC2Bb8Sy7MAkrt8HFZZbufUpt3BB5n2eQ3/zcObqm/6OlLlRmln+pNsVo/yiTfJ511eNL0n0ocyYd/js2juwshSSEdo2nwB/d/mK2EEk/hIv90CzymtTVz/go4vMIUnJihzeSbpIDLiYfKtq9kJKUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrrTxQKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrrTxQKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E21BCC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715266942;
	bh=5zQnO6nnVcrlYqOaHJluEF9GOIjt9CE+8pixNnju/D4=;
	h=To:Subject:From:Date:From;
	b=hrrTxQKIzFWiKxolykzypw6iGemZvPnBoO0DMZkvBFe9Vywklyi3+F+aeC/vNX/cX
	 A5jU+m5MZ2xvrX13sSQPLtutcYlkpnm7FGa7pz/1VW+OVdsXQ1c5qAm6YLENjY+H7Q
	 9es2z49wcrxcUwCv0lCgru8wUAD3gRtfsf9phi0S72yMx/9UVwUc8RcNAf7ypz2s01
	 rw1sPch5BYgKRkmGmLhUpZymb0s+IiTpVN3R9RmfqylDMF+Uq8FLw5oDJg7Igeozme
	 LqeMrYcBSFTXJCimKNmiagkXx83F0anrmlgzKs9qC1QOBhTV+gkypeyQ7nKw7OmHQW
	 hRcbEJXm15AOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDFD6C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171526694283.2219.6554089684320041263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7804add42065ec731d024e5a7d382c7c085cbd08d74349dfdcde67e59c09c7f
Date: Thu, 09 May 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715266942
