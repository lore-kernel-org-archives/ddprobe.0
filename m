Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA9435F19B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780970074; cv=none; b=R2Ien/AlpbeBEwa/TpcxVErs0Spis+TAUXyXGHu0IUlW3cWRYpMqMmuY3xnoLNEZpM3G7UIKwyqXvsppP87hU/FOvZBJDpzC975Iqg6h5l9pkqp0MglSH65/wxByxZy4EIIqqadC0Pyl0PG+hBgdPkhQaavUltpAacsHAxVHIoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780970074; c=relaxed/simple;
	bh=9uA0dx3Yg0gS95in3/EsFXGbeGPooaPY45sepsNFqEw=;
	h=To:Subject:From:Message-Id:Date; b=J07m3x8cvTZUCnMtwSTo1U4eaf7qKw7vzJP4NyevAwWouvODfNbqEW9ABOd145y5R4hEVA82+LNiIv4JCHU5EI0uj/YpuYhk+qOtlVgEQ9KRIjn3QpVM/rldGYeHpFswoaQZL2iYPuHCAxzMX7Wykom1y+y252hYHEm/ZGPcR/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXxfH+wW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXxfH+wW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EB9C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780970073;
	bh=9uA0dx3Yg0gS95in3/EsFXGbeGPooaPY45sepsNFqEw=;
	h=To:Subject:From:Date:From;
	b=QXxfH+wWHyz+aE61jPRBZbOrVQTPEow185/DKUDEutv1GjboCMpy5Uo0P2rHE/muj
	 YGf7Dq64ronruHQvieiQcDXKBJ7MJaU5XwYGEq3wmdHdMtWTw7GQ+CTcv4NBJ4004i
	 5S1W9x8MfSzoHrX66euqvPo236AyuQzwYN6+zRjzl24Lk/zBvu5dXUSYdcSACjZNLa
	 JeDTu8slJRI6DUt45BR+5NkLzqcjuvh1np1kCUwoOePxTxeHf51/jvNc4fjQJvJvUt
	 Va/LbA8Upd1U1RYY0MYT3n+qdDl6oL9qRMg/kzy+l9UcHue+YgjoOBNjXA2xdxNkUL
	 qVpfrMatiq+Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5344CD8C9D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 01:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097007372.22651.15245835287322924513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 979cb691a6804fcbcb7de8af526fed10c7578a22dfded2e2a4ee8cc7ca7a2036
Date: Tue, 09 Jun 2026 01:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780970073
