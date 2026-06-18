Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F30F280A56
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781791594; cv=none; b=pMMY5bChPBSgfFr82wpO7urGFGkJILiYAbtNyJEmP51I8GA0xkSskbdeWDa0ZcXxH+dN6dvrW1J3um8Q4Zhh5PXNKYuNsCsroNgWy1WSSTydYzchxMe7AMgvZ8B9+O+CqgAdslgphNh7sBJNY8h/hufY84WwpuC+3uwsmwuSvkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781791594; c=relaxed/simple;
	bh=Ta/yzkcuKP3rTc08KOr9n2Y/YXNdKeazTizS7pWMysE=;
	h=To:Subject:From:Message-Id:Date; b=aOSJh1IUjgyMU1HSS+lCPC75NnVdpU/c0yzZDgizZaqBPKU9hPkDmD6ESJitGmJpnNv7VaBH4ksVNPc+XAbfEbzCqz5BtkoP+4rkfQ3nFBjvCN7k4opQ8nkKPKjSUmTK4PCtR4wMDKsm+G6tIaipGbMnR07OX81sDzFhCche8mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJryENRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJryENRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08F3C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781791593;
	bh=Ta/yzkcuKP3rTc08KOr9n2Y/YXNdKeazTizS7pWMysE=;
	h=To:Subject:From:Date:From;
	b=hJryENRZUSKGsCp5tlVLG8raOFMa2N0hNEjyi+fU3lUP/xskgZN58l0NERiOtk5kU
	 UaYFd2mLk6m+O1IYC1KzD29hqbwCQjnbudxPR8jv0h+cbLOqGoA6ztaSBChh5RyBsB
	 6B+YiKJlwyTrb8LM7vrHYKH4u+vT9uXELadELTUbjr9IdJRvddbnT4J1NVtGfJebTo
	 e/KlJDS10lj7nHohFat0lWmoEth3Fo7coyXNE5+SFXBlqJl1L+Gfv0RHYEhNvfm5P1
	 cdl+RtNgjnFBCrJg1SX2drT3oKtjti2k7Ufr7k+Ge28SYhJ8NIa2/8v4Gz66G9yvnU
	 h7n/NxuFh3KgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE80CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179159370.10443.18233387133119268946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c4f9a6fcb461d0a3243455392abbde1b60419ac7cfb0d6eca69c05711ea4596
Date: Thu, 18 Jun 2026 14:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781791593
