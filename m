Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1323FB7F2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783593514; cv=none; b=Cd2JM4LWvhdRh8ghKxHxpIAlIPlZ9tTfQOEoFmfru80sb/oQEzU+OfGldTyoh0ktpdijzmzG9lV0021XjJZlRkvbqWUHQ4cCDnqTG40CjFv4xGOp0oKxjbSFYQLMQ9hscozLa79PkupI7nIwPi3sqsRRWsX8b6McEkBfNoLPqHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783593514; c=relaxed/simple;
	bh=abkqp2D9nBmvqffqifz4mM2SZc9cU2EP/J99ne4n6Tw=;
	h=To:Subject:From:Message-Id:Date; b=RzzecPHrSwzu/vGAdUfBaxgb75JSD3IGYJeEVh9nHZpEUqOf5BanbT6n1gNj15i1bmm5potMPc4IA4+kb93G3+mtBPHX+RhBPQc9fY4g8227m1k3awtk92WnT+b9v6SXnTF5JA98ct192kWykHCTOMo6R4Kb7d/juEcJpt7M708=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OM6EDtKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OM6EDtKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D186EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783593513;
	bh=abkqp2D9nBmvqffqifz4mM2SZc9cU2EP/J99ne4n6Tw=;
	h=To:Subject:From:Date:From;
	b=OM6EDtKoOk4Nrac2bBQYfalmiXC8YVHr3jdCRNVBVhtkJQNUl2wXyHsGN+lFOT5bs
	 ba3c9bXfwukNNIdhCs1YJOlPAPMyZsD3JpoGWDzvtN07lMaaUFn1zQRYc9RSCdKkVE
	 w8R/g0+kH8LrcOqzY/56NkoCobMbJOsTwtg8ZIfHkPNbc09SCJgxmOdiw455MfFrq1
	 Fmb8xPuHb0NodSx34qQeGt6p57sgxNGyNNpQY5iXNmr3fhTh9fAZMEp/mdCANvKynP
	 Sga0VNRS3m1SKWKITSPpg0as1iXAdco5pLnF+Gk9pTRjcNztfTNFjzl5ftXeBs15Ny
	 KsBDlsj2mPI7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8465C44506
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178359351368.3813.2355139822834455530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d07b8f988ca9cc4bd35a32fc2e8183a2d5f55fabb72933b5b6b9f2dfbceb630
Date: Thu, 09 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783593513
