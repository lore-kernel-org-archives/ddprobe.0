Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBAB02D77E8
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751636993; cv=none; b=uYsmcaCgjwRztBjGIfoMVmagPo4CT5ZnFNQXFghFXB6fmL5bLIPFGm/15VbPfAwojOgSEQz5K9gTgdVumYwcwHXY/Azd9vgHhDO6KXztLHceHBG1J729Z1IkYz0s2U5AEUm+faxExzgp4WvlsEfCtsB+S8nyHQrQIZtaqfDLJRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751636993; c=relaxed/simple;
	bh=CXJ3Lb++CJ6mai29m0py9B0VqO65iqJjuXzMb4mZCIE=;
	h=To:Subject:From:Message-Id:Date; b=VXipebuDA/aFn4BejajlvfCdrhwVvj0m1gGgqXz+DC+evIEZUIZXPz1OlEHmRrIQ63HFvudPccrhiAVgT4FBg/ZHixykI+yVNmhCG0VdKk5v8ZVP1vLyGnzYFEZI66Z27DZejeagUnwkR/p8UCv879FeZnFwEAwzvyiGW0+ZK84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIzs8uY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIzs8uY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2873C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751636993;
	bh=CXJ3Lb++CJ6mai29m0py9B0VqO65iqJjuXzMb4mZCIE=;
	h=To:Subject:From:Date:From;
	b=kIzs8uY3b/8rf4NLm0Ng21N1RCBCzQy+2PPhtQ3an2NqV+JX2/sKi6yCDHMP0PA2I
	 M6/P6UZDUMR0s4PhyOx/j1CJJFfsDLkSEMEs4/Qy6ckgn+/Sok7z5lmGSY3T5YiXSE
	 bHJh7geDbjcky6UJ33hJxS/OTp9ohUgfPj63TlR7AvhdrwEorVptTCm5y2yOITiA7N
	 49di58Vf/7X3z8PJstj3x51GNS/D/Dx4+xMtx/nBnc49sqMFBM/sAHuOuSYW2o3Ik9
	 5ryYoPHtQdnk37NF0TMA8lmPger/IZQJL3N3svClqc/eFntHNUqkXQzr6bCwXB/M69
	 gTVT8zTFOzFXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91262C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163699358.3767.12888392880413106638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0768da573e26dd509c0d0966b499bd5ddff621e4f524df7219bd6a6681289d
Date: Fri, 04 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751636993
