Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E2582EA480
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765119774; cv=none; b=dB+DPMLOD+bao3DcOwqX21xk1UWa+KZ+cfpbxVO9dvHIRLHO1ifArVxrYhlJFrgvy7Sj7KliJk0vsgludkCkHAPF2Oc0SBgReE4PX1HH17i+aMLZiq+IHQ/tx8/2NIxg33Q5jygjKBQ+rPtTOQ64Dic9fBZpv3yKka4hrcBHMSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765119774; c=relaxed/simple;
	bh=HhBNfRmDmr8H8GvTLCBTmrzM/QpUys/Z385KbGWPG0M=;
	h=To:Subject:From:Message-Id:Date; b=YUkG8eNQNnLdmWsnJfqLbt4UWL1DI46hydYYzpKr7NnPZoFSX2tVzACJDU7IO+TBfn4ij0yDnhWH4Le2v3abm/NVHXn2BayBxJCD53sIMy71zVBcLljFjVcSa+yQ6sQeri1Ts9g6+7AwiKz8uL330nnhqhHx9hqGl9/6u5+i7xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpVzpkrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpVzpkrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FBEC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765119773;
	bh=HhBNfRmDmr8H8GvTLCBTmrzM/QpUys/Z385KbGWPG0M=;
	h=To:Subject:From:Date:From;
	b=cpVzpkrYXCiq+nRhs80KsP//QG2QwM9qvMzi15huiH7iNOK1jcYZz7VmYJd0P6heF
	 8dPEUkOzrClaC9GT32QrejPOnDg/CrgZ3E0y00yQ0uqc7bS3umWKn9DYVR7PCyeFzE
	 kXoYr9tK+JAGwwco60PecvNOoq9S0wG43WL8NOoMhHnlQ+gkUunKc5axYvNru2FXuk
	 hhPA/7+XIMvTb8ab9yAvDYaN1Y8RikMHncaUzcAmT+511kA1LWpKrpv1OySBw7pda+
	 Xe9iCktimQ0DKjkZiRkWY6EAuRTMqJS50t74F7LfHL1wN6t4YJPXOqn4oZ7nSo1q/d
	 ObxrGV+/8fpyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1B5D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511977359.20329.9273478611057881821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b692a4077073b539f939be01309af20b849b42459301b0e1804671515fb3fa
Date: Sun, 07 Dec 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765119773
