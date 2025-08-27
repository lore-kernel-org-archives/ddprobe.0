Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207F12D0C7E
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756300195; cv=none; b=K1yY2NXf5yvUqJExCitjsW530H9aoiE57SbcNtrOu77AJ86V+3C94fvIOukV9wcojHyvey+NjWFsKaazjSPrvQiQDtYPPtCvDiIJDMBaYnq/WmI5AH5MIw9LkPlKBDJf5O9xw1tqCDgbg+hMt1g44/1JIGUj7jws2EGwvWslm0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756300195; c=relaxed/simple;
	bh=eOjP7hTS2KgjQ1UJOPO1TKYg6knl8uWN3OY/gJ03gDI=;
	h=To:Subject:From:Message-Id:Date; b=gNV35EeLRgnX9VC/xMZyAT5SVNeBfvWZTqyh6A229QWOVo9FtoG6R91REhwkG8Bnd7044hBpnq7rr9x5iye3mgZm0WBOZScak4DqSPuifYWCX2wRtRv+Rts/hcGeXZ5+xj6U7YO5InGzqGdv840pSdh9NUA00Ihh9IyXQQeci+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzX+HMyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzX+HMyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5E8C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756300193;
	bh=eOjP7hTS2KgjQ1UJOPO1TKYg6knl8uWN3OY/gJ03gDI=;
	h=To:Subject:From:Date:From;
	b=XzX+HMyXql5XrNJnu+WAuAnJx5qYP0e6kOiHmv28ehBbzN4cnZaxx5cWGLhljaXC2
	 Klk+8pTpJ2i1rKc/yuRxflEtopDh5PfR6DmLdnxuES959WTqwLuLtkL17verRXvdNF
	 srN/12xoTEDwox3BQ3/f+11J71XvfPpRfh307ejqt1LKLBCBmShgAyC60H0AVQnewi
	 bXMzMv/gE4rDArWrPz1leXjLlEdvUbc8JJGBMK3+Cnt7yECuOO9GJh/s8H9U7Y8B7Q
	 tRcT7pi/fINwsrAeNKxno3OofN9RMdMNHVtTsY967MKHKeIPbJEMf/cmQixUipD3oU
	 P+PRYLvMEE3SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96425CA0FF7
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630019360.8640.5238176259132501710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf1552d422c6d678965b55b4e4a38e48a377be2e2686f6d347b7014e6f1dac9
Date: Wed, 27 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756300193
