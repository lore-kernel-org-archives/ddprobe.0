Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3F01C5D4D
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739968134; cv=none; b=gAmLfHQHo81hpzCqj7FRwUhJessKj0z0FgQffvbFWNE6/wHUqer/qXcsLG4nGEKTPr+NmMrYy/xb0ZIJ2EhjCbXPyJZslpKnSdGTWnnwoCYG09lNW2pGilegheLfE/nCo/fYlzLu7hwxPPaV769sKWqfmnTyoqdOaVDE2CN9H9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739968134; c=relaxed/simple;
	bh=zTcfVnuR13DXCbeTUDaY9LO5YHA24xGps3j3Y22W2rk=;
	h=To:Subject:From:Message-Id:Date; b=cJw3/6yHI9gv/dX7Am1vb1Mb+QGKiAps2cgC4g2Q6imRlxUiWRTl7AR8hZoyaKsvSxmcRHp31xzXsZHRSc0cmlSTg7FrQCsF7guGvAVtBEvY8kk48HUzMIWd2uZyzOjam0ys8jnFwUzfA0/zgByuRhYHOgTdHaV1MS0QMku5exE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B68nbJkU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B68nbJkU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95C0C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739968133;
	bh=zTcfVnuR13DXCbeTUDaY9LO5YHA24xGps3j3Y22W2rk=;
	h=To:Subject:From:Date:From;
	b=B68nbJkU1i4LqoSH8ib8CKpPiDKtLyqOfdnzEC5rEZX2RTWrrfhtx46kSvrSUKitH
	 koc0XOQBJvyBv9TlSiYXaGgtsXnCtd+y7PFY0YNklMbmGm+CyBQ6G5r/L44lL2KSB/
	 cTJd5CTnCjAPD7R7GT4Zn0xUcOWQ9kcUtKr38m740y9HnV0CopcBpsxMOR4fe8/Vh2
	 PEsWzPKrJr6dVRP85QAaai+mqK5a7Iyes74Lp80OAlU7nrYm2ntAkQvUx0X17wB34m
	 vkGhWXtgbiZneWtpYElsV4gWFek8euvCyxJ/BqakOxX1kZB2CIQuXwPZfvLgcQI4AK
	 jqgBHiZ0J2Hog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982C7C021B0
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173996813361.9310.16076852215240108235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5841629c8aace647ed8762b9c56e3a4521b3bd8f50027473a10cd1e450bf67da
Date: Wed, 19 Feb 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739968133
