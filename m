Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7562773D2
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758404394; cv=none; b=Gd+l9qGBFbiHIIgvHt+Y72se/aCtw+2eCD3e6KtUDoCCJIel7dvwpVW8HflFJxa7FgYmZlU+zMEGV6WYiY28mtQUNRSp+oSjmwqp5C0mmh3alpH5ZH6bku48U3dCnmpxyCpQoEdIcYL4FpcYJHzuazaBz52WLhhZ4Y8vC/c4EKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758404394; c=relaxed/simple;
	bh=ppzXRXBcZc69qtrJN7c//7wSgAZ3u9piDUR2ASaaBpE=;
	h=To:Subject:From:Message-Id:Date; b=K8KXFs0wTWhAIOSZUanzPdmv+K/KdXC0pjQvHJvuan/20akOE9qTrTjyOW3OP1LQbeVpNKDnM+Ey0FsSaK4opuMtowQxMphUvgN+hTfLUcCvQdseRgMhKHDuitwWn1g4bTA05CrMUI2JfmTteDhDex2ozUpjR5n93CN1X9rguMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxo7NdsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxo7NdsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A775AC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758404393;
	bh=ppzXRXBcZc69qtrJN7c//7wSgAZ3u9piDUR2ASaaBpE=;
	h=To:Subject:From:Date:From;
	b=hxo7NdsN6GDdAKUvKQLsuZOGePc4gEr1bOHqlf+iHAUJ19NK54Oq/lrZ5Bw2ZjyNZ
	 V03ktFVKs1EGaQ9rLeGG2DIz/W9NVABMhScKJChslVsCa9W4BKMzKHi/25tCD/jr3t
	 mIoUPbNv6ivsIVYLw8ljjtClaOlEt8B3dWsYDRnVudcpO2zA4pWJJDr97keqy8jio5
	 ii7naDd1Q+ZqprNmLWRVp6jsCuSB+/joPoHWVPKibvM6d+7kMBVu3pdc+RiIwSq5Lq
	 ejcobEFI2AZs/aumSSy/2LPkhwnPRkENJHVaep27lcbjrGS14jB09zk1Eq5A+gO6OM
	 zn8I7S6KlJ02w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9390CCAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840439357.9814.5327004343204865228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b57f03901181277e4b87ab0ec7859a78b6b0dbbbdc0a72a2d4d9fb977f04747
Date: Sat, 20 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758404393
