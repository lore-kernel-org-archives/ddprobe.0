Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B13B2C3757
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781976994; cv=none; b=Y63ceayTSlLC8/Xtc4tk+h0ktfJpgDGwP+9IqVRspnfRd6Bu+k1ST5/eJIkMj2H9o3x1MrnwFKCAZB96ZXpRDs180S9CiaWM2A7E0zB3zk5E69LjXMFqkjs1o/TwFJ8RSI/L5AkK9SBOLUUcHrSgnCJtg/HpSqPKOWgm7hikpEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781976994; c=relaxed/simple;
	bh=9Gnb/T+1uHDjTuXPBVb8X8+yMnDdZMQx5FS+vqdsZn0=;
	h=To:Subject:From:Message-Id:Date; b=XXgHnd+ah7O/cuip5cxZW68YOS08Yh95MkJTokec7hfv9WaGUclgA9A/YAw6CF8r/S0IZ3sJRer/Yc0RkfFs6VGeS1yuP7JMPGmNNq1mH23xO6j79/i1YWiLnZbTNaweyFNfZQbvpj4E8wYTaa2VyneaJ5RqGJi5toWzHxRnLI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6KhoN6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6KhoN6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DBDC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781976993;
	bh=9Gnb/T+1uHDjTuXPBVb8X8+yMnDdZMQx5FS+vqdsZn0=;
	h=To:Subject:From:Date:From;
	b=F6KhoN6wpBdIIAjEHCHJxZthXUK93mEyMYHJkjmYBRBTLbpU13CgYJyOjWC3Pz6Qa
	 Prc6gMlkHxSITueqEwkk9Z4X9ah9SXQ9hBTX/eZW+qBKRLfnxgObkkgAe4Bswk3lgH
	 I4jsG37L9fLEX4Np2uGtMBFcqXlVcKGoJEbyUqJuXXCi0HlE22vG5MpRWa2WzN7L3h
	 rlwUyiun6TWj3t4fl63spxaMdZ9PYYaoQ5iYNELruPhQrOmaHlV+88e+YGvzDr+noj
	 tXFow2roTBz7EiwA7jzj1o1eYI5RoDP931sk6X8ZXiIHwHxb63YsTeEjyKOjaaT4c8
	 IOeeF+jjIzyBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1BDCD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197699370.25182.5260750277859566359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a3ca181aaae9f623feb478c15845a44e2a5fd4961d79ba13b2ba45b95ffb85
Date: Sat, 20 Jun 2026 17:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781976993
