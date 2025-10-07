Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3106B1CDFD5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759851594; cv=none; b=L7bsux31/pDyeyRZX6g10crGHEP/c1W3mXPx6E6o43uLp0HJGKrwGgaqI/lkb5skSTsG7iNkNH31fFZzdUA6ixs3f5u8eUb8tWDp37I9iWnI/mSse06JlHRHdkXm/gtwoekLr5NtzPVJdOX6i6u5iMR2yLJJBk89urlfGnNBHR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759851594; c=relaxed/simple;
	bh=DKtqWuWLnzTSA2NQxAb4A7fQH7M4A8QZFZKl9QaJF9w=;
	h=To:Subject:From:Message-Id:Date; b=Snhc650sMwUdhG19nJeA8+frBqWJSU+hmQeHkOp95wyiFCdcVI9Kkmqy5DGDr+0OY5YRQqADgBLOjkQ/ZfnhiHZziMaA64fJJzk9hpyU1IMdYUE+T9gVHwhyvuIJYL26qS2dohhOlYGMBwn51KQG3p88JNWMM3NtVG6Li0MzbWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dl/+T0At; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dl/+T0At"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FFFC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759851593;
	bh=DKtqWuWLnzTSA2NQxAb4A7fQH7M4A8QZFZKl9QaJF9w=;
	h=To:Subject:From:Date:From;
	b=Dl/+T0AtFf7GE+ZLLGWxxbGuek2xSqIFsOopUVDt3Glr4PIzzJlEQb7iacKCIzvN8
	 A8Ctc1kLLWmisyS857vNGs98YQzJBZ1i+i9DBkgIyK7NS2k/fZamCv3m5hwTNsmTrc
	 mCzrADks0fORV3PmsolX2e43Is+FLaoZp2epaeZUK1XLmf62g8fMBoOrCJ10QD2Q+O
	 Vd/N2vqdBIFMfFMQYW2Bbi8+ImVfsy2j/KtajXRrYtaXWAdKtN/2xkNHcGJm+YOLn8
	 hzi/YKAHg0WtzE8x1oEB4b9CgMyUAaZeDWxAmqTE656eOYV0wxClPNqdjaAKgJG6PZ
	 vqsys0EVS68nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E8ECCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985159359.14420.13670826892458777694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a234c7554cf86f26037cd5e21690fefae6a15c82b877964b2f656609f0aa6bde
Date: Tue, 07 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759851593
