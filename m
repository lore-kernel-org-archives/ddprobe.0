Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A9C308F26
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782329854; cv=none; b=mx9/YReeZ80iNNZIj9fQbCy5RkjbAQP6oFyyRg1Khs85Nhfwi3JnILskxkalfohvCKHmzZ9NGnd3MfelQWGkeYO7+R6iNMR6mPZFsqO3lWIw/8vIRfdnMz7/jfBgdvsru0Mo/hHJpYx3z/pHmVs4OxhJ3xhhbp5G+112eX8daEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782329854; c=relaxed/simple;
	bh=WaJxSWrJCiEYSnqDSDx4jme4FYsgdufZ23lCUeLGW1I=;
	h=To:Subject:From:Message-Id:Date; b=uTIdT2VpRj0bvJFgk5V31lQMXt2EeAAoD39nLEh50iBBT6ZUjwuHNKPOunAhrfcBrAY7sokxVKdwII3pFKTPnvaumqYJ6HkmrYG9yyQ8JP3uAbyB2ui7WLOYtPI4+B7hSlFd8krZ3N90YudNR3QDdSrIrIfEwdUClzoj1mlLUFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=un+q6mjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="un+q6mjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5FA3C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782329853;
	bh=WaJxSWrJCiEYSnqDSDx4jme4FYsgdufZ23lCUeLGW1I=;
	h=To:Subject:From:Date:From;
	b=un+q6mjNKKB574agN2g7Xa5/VJIUASLgUqj7FNfSAXeNRb5SXA2qai+EeuXxCqOgE
	 zA7zWbPxfoAaPPpHXGClH6rRoW0gyYNpCi4d0eI2kWU4L7IbMKncAs1NJOiewxstNd
	 Q/5KrN73Vfc3La0HKdrC4hXF90n8gn7DfPbR4AS/j98hVCrForQDe4u5V4gGUwLb/O
	 UZxGHHM2eTVchjeVqOvWDEJ46F+aM4QbYkNf9IXmDu4F6Nq/8sHeSYBlmSKXJTp914
	 Q5XjObgnpqQUXyrYTKvdtxq4e+pOhu60n3Vu3foKkdhvOssDr5NWsWiuFp/AvbXzus
	 aUp3DornxMMrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F94CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232985368.26237.9826311076305676186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470bf3dc7629b09ce90ef10a417087aa08920e335b930a5093cf8b3057976bad
Date: Wed, 24 Jun 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782329853
