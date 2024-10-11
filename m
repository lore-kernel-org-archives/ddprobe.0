Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDCC56FB0
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728608753; cv=none; b=JCglquJP9EMnrwCHtmmHyXr0nB1VoE1+9tGEWlaXY4aOLgrUNoRAtKvo+Bn82gSAh5nFWCb91KflMxLlKvm8AF2aJ71uBgU4zC++JJgrrqZdcMQLCdL7UmV98vuQ5n3Pi/T/PG+DmPmkwYAPvmj1+/TKrk0ANXak14MmtpjuUEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728608753; c=relaxed/simple;
	bh=wNeJYpiXHygUvmMJp8EyonC4202Kzd9m556aqkok8pk=;
	h=To:Subject:From:Message-Id:Date; b=d6iReicU7nJV6gI58G2Mx7xJsjYyGRPyV1uIajrTGWcaurQFP3y0W04XA5za93EiX3alp6ofLXiP79EpOr0fZCKD5PDuxvM41UEMWIY8GEGkG7iqrMYHL5nQ53fLIVcy5ElYUjahl1bcK3Ro4l0iCzplVL+b1YpiWq0yJhNSce0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pr4t8fLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pr4t8fLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF92CC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728608753;
	bh=wNeJYpiXHygUvmMJp8EyonC4202Kzd9m556aqkok8pk=;
	h=To:Subject:From:Date:From;
	b=Pr4t8fLmkuxgRJiEDKfSxdf97ZGjGhZSQSeeJu79eaTnp7qhovODmnPd7vTLzEowx
	 /GrUV961Xy7nJCifitqW1fYQaKXN/fcyYGVkuIA2KiDZx3WTWHruffgS2ny+8iQEZM
	 5kZwhz+KX2VsSfdGxQHPhmaqsZ9UJvzUVcSbTt9RLM+qEzjK/SvtpDovPzV93HO0BG
	 d9M6NUs/HNdAGZOjBPW3RTQEchQ8nbCyy6kxTW/g6HWDjJj7D84XDH3BsBFJEJhku2
	 ZoL6Wf5/QT7mu9ZXAVHtWmgGIteZ/OTOGqYctBZsJPVUvz5JEnd3u24E+e8dlNcXpa
	 qoiM5igBAgh2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9120D2444F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172860875361.14485.1632278201401748382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1522cc2638a9b53a34e97302df43b0dc3b214d0490b58ab4079c762d023a2e7
Date: Fri, 11 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728608753
