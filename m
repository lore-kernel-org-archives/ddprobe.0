Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5682C1BD9C5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743854994; cv=none; b=iguquiabwmJaqoP4hbVO5yhQ2QkTbCQb71pw8KR7+CXrX1z6ZG+qePyQhVHwCWSzmMecroqDXM3seocJ1QntsPYPmtLBkMUmHWbI3ikgVlkwub3YX4yIboOdeOOEJakub3d4Y2QT6mZwyV/R7RSpTi/gUXcq2MsrxBWwVWewRzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743854994; c=relaxed/simple;
	bh=O7irPc1TKQBta2K6rJEkBrhw3I2m3fvYRXTz6rCGctk=;
	h=To:Subject:From:Message-Id:Date; b=rlKx5lyPV4GH0VNLrMnJB3K5kbfdE+Nzv0puIZlu0xR25m7xV6KzhdUkhhOyxvKWHxRCHREcpzg+9pBiHqNFMk04LZ4t9oTxNEiJQyF/99EbRQJloG8HdKcxq8My9S2JIexV4yJvzdEmeCfOMeT5+ujI1WJSIQI+QtgdmrJjV1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxRaOwDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxRaOwDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06E2C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743854993;
	bh=O7irPc1TKQBta2K6rJEkBrhw3I2m3fvYRXTz6rCGctk=;
	h=To:Subject:From:Date:From;
	b=fxRaOwDwp+RLSDLncm8cuYLO7LwwveQ3yswQXOCKiTttZfrM4UBEsmqqwD762FlXH
	 4VLogcsT6EMeBiZbkEwMcXH7ap8w68tVkTTcXfK1z5v7K1m4apQLB7S1g9uoBpbDpZ
	 vUkEICaXQNIm3ftjZXFkoGGlLOK4ZxdV14eDwHZXZI1szVLPNhX2r/rpbQ5/h7iEN0
	 1nfdmMZah+2sjDW+mFT217c/p1vjNq+lgPTpVeRB9R7Bo4z/zDfcIgKBjxivQu02D9
	 ZCMLy1Ga3XhsrEPV7v0ppr9kRI0/8mxsmyN/RjVuMKsN5+IyoSIOvcgCfRqFn9/N0n
	 As/D014oeoXww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C29C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174385499366.1781.12491753966143481128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e0cc48b3b844b9ca7e7ed33e1ac6379df44cccfec114e7496d9e037262251d
Date: Sat, 05 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743854993
