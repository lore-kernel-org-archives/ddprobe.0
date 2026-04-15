Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FB13D3CE2
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776264454; cv=none; b=busBN2ceJQHdPS5ecIAHE3oJ058jbwOdsKLrfy/tty9Tz16IW4abGMuCyvivzFrLZ5zLWCOa0Ivz6B4mWTduNxdz4CpucxyLFwHAIT57r0xOjVYvTjFTB4rmiBH90ft1LTyoXBh8igszmNBu3JUdaFDKDx/1skqP+M0bX8FpzgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776264454; c=relaxed/simple;
	bh=I/mGQflu1y/hrbsVlIYBwp4qbYPJkNEldeIEaU9wWBs=;
	h=To:Subject:From:Message-Id:Date; b=ujL006H3DZKgFdaVg4qXmGKmsHY0c2QkgyFXlEXs9Y+Mz7HA7hAnJ5mTzUkCjAb4cbtFj/PsY5GjIWZAnUXTuGNH5yn9xUw08BPdNK1lOhB26kLNoRhZR7pq4Hhj+3cJOXN25jsOrrOd/OKx2ddqF7yqlz2TMmFWS3Je/IQi1MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+GeFrAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+GeFrAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA376C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776264453;
	bh=I/mGQflu1y/hrbsVlIYBwp4qbYPJkNEldeIEaU9wWBs=;
	h=To:Subject:From:Date:From;
	b=e+GeFrAZZ41pWPCcu9ypvyjNKvV4neq1VYe6nHURvXZEBFHtHrb75xJ2G9mGri8y/
	 O1TkdMHC6V52+dlbzskjrB6TpEh8Pbx7sxShIbh4U5gpOMrMVR4Kc3FEQbLxtelmke
	 rmfwnyJy9g0FF6dLE4jiq+RC6tQEmouLoGXy+SEoGXgq1uxL1v+lwt9u1nfM5Sfe1U
	 py5EeCQgCLS12qb8vP8tVVp9jhrbqg551eue0gjNky+67mnI+CvqFWzjCv1iHAhmkH
	 RJjj64KQfDAN18Fm+js4IwfIiUQpDY3Gpb2uq4+Ew+mZV2pZrYBtGwbflIR0idkb9H
	 ACfnB2+m2oIog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB386F43830
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626445369.29810.10714327105049467994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29244fdc2af4be2b2c9119ddd58e88e6a6ede2c524c817d53cc4e876c1ccd0a1
Date: Wed, 15 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776264453
