Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471E6134724
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 15:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713107963; cv=none; b=qaKAwiDqbq8O3enphlMr51l3SuI8Ii298GFpvTZr3i3QHiFXQd9fFnorrjvYp7YQzZ5awRW84WzMWoUdOO3GEd1J6LXt4gV8Ub5MC4tGQ0ijjg9pP2uwje6D/rxRxv6Bf4LNFY3lcgnoB+kgfzOxIQKywbxjZqaqP2H+ydRlgec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713107963; c=relaxed/simple;
	bh=UChKvIIQS7VM/UBrHCIzWeFMDQtC8icS3mQgCB1Mezg=;
	h=To:Subject:From:Message-Id:Date; b=qsHPiPpNMCyaHYDetaJagAIm52hSvy9dQxLK+MpT4+Iqqk38vcqFVdG0D2DOEtxuGFIyZzCQqenA3DkgGqsDzegB7bF1V8LA5ITvxk2Ai4UO/9IYGmnufGoYAQltcmziUn5vsQBK9D2f/3Hz3aHM5DOlyjfMjnjbUMo8swYzSzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7skFhxR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7skFhxR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E184EC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 15:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713107962;
	bh=UChKvIIQS7VM/UBrHCIzWeFMDQtC8icS3mQgCB1Mezg=;
	h=To:Subject:From:Date:From;
	b=b7skFhxR4LTJJy+N6z8UeuwOTNe3Gddhy8rxcT8SiSXZFDBkHUHCQ0boQUfRpmVDS
	 x8kJmqj2q5uSQZmVQtJcSh6UOkSXoW0Q/Op11iFVk/lSKPU7G+Wuuc2u3eSgtnMdPu
	 swVvwLqCyCbUueurEaxVaj1Fc9IF2XGwgA/FSW39NSJMAdGme18+RsuSSk37xpZk2l
	 +XcqBJ2KZP6BtpRIk6TrB03TfgCgbiflpk9AdludVWwneYP2CYCd00xBX6Zm3H2GcS
	 gwodzC6r9qh7GrwhgeK89ysqHKUK9zKnehtCT3O4QcGe+EGQ57YJKtRBGCW73e0Nc0
	 a97a1HR/p6Vzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D17BEC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 15:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171310796280.22243.12412130199006179861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88064aa4254151cd15ae222e549ace363be09d031361d45e5e055c70013944d0
Date: Sun, 14 Apr 2024 15:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713107962
