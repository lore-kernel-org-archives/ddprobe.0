Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F9830146C
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774562094; cv=none; b=cornd9ILkMG+mEYR46pzc3IKXR+8K1M4vrOlu+LwEGVzPCibG9x/wB97PoV7H6mn2l5LplanWgWmIBcwLi0wTxg8mPYQ2wMO63BDMpoCM/2ZYftT5ap7RB4d5H0ZRssftRSDL1o8rjHvIiTeeUdVGjxxktyfk1+kHvTVOgih2us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774562094; c=relaxed/simple;
	bh=PvxBVa3ico9HvnYMrU83Md10KRwmLhs2U54YhCa1VnM=;
	h=To:Subject:From:Message-Id:Date; b=Mzd99k7MFI3+2dut/2GAeRlMFnkD7uMZm879sQmsjFYhCwEM65LmRboeausKeelJoX0wq1qk5awz9X+DqFZvGgJhui0FIdJAXD4+nJDXNFh8o4vJwYIGzIzucrX8Qi02IZy+vbA0xFc0/C22bTUOuZrPR6OErvDQ1/X8Y2w2x8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErTSJCr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErTSJCr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A508BC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774562093;
	bh=PvxBVa3ico9HvnYMrU83Md10KRwmLhs2U54YhCa1VnM=;
	h=To:Subject:From:Date:From;
	b=ErTSJCr2XW6WrB62LJmUy0H4fXswAyNp8ResR4odXq9X+aO2Xbbfingi4KxZSYVf+
	 FlJi3QiJD4Y88eFEEv5fYQIVXrPZQLivRyXuK/8Vwf7m50k5vWcV6XiCbbAYxEWFNi
	 Z4nnbD1U/PgwpOk2jJKcIhnc6bZH2Z0R6ZdwxdFAOBfiJV1JqvoFEuwD8afq89QtiM
	 lvkNiwIujLR7KVJDur+f1eZMdLmojkQ+11/k88xzwEqkJhNAyoi1trbdxsOlH5m35l
	 SqIOtj3EZqLH7mAFGro2kQkcwVfchsn35eeKilLjV8pzgK64fvDDIXG7dJFcU4jjXP
	 zQotgELJwWweQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DB810AB822
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456209358.13309.16179308075342479752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d9e1f2c5f78c00033185ebaf2079ffe15f44bcb6910e34ec89c8cb802104f26
Date: Thu, 26 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774562093
