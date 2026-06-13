Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550D7377000
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781345794; cv=none; b=d8Q/Hg5a9U0jhsh60qibF3vrQ05i6rD41XjJweN78ErrPwAZLMGBFIFuW8yBfxRWs3d157NVF2iavFHzorSoxtjPT4mmJHAqLpqec7SSvcttsMY9K2Xth0FkH2RQ3oXjVIsTLHxqCakthxSXrFz4avepSPrIEEIeKF6t8PHLaas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781345794; c=relaxed/simple;
	bh=Dv0f4uZ/DVtS9VYUfzRVr0qSrBm9xtRQ83G0mpS7L9g=;
	h=To:Subject:From:Message-Id:Date; b=NSuOjCNFbhUlF7BTGDLAhyXUjE3UsUt5liTTyWwW/lCdZMeyMWMPujKJ+gOKpp1BJUdAczM4SvWgrQXPSOrGmKA9G/g3T84Eq8vwliYQOpTfoommPSFHsJ+Im3aDcgoqQDrhd/VyLrXs5Du+MmLpkaHXdZX0vp3DIn2eVAhJ0F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgsmJ8+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgsmJ8+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04C9C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781345793;
	bh=Dv0f4uZ/DVtS9VYUfzRVr0qSrBm9xtRQ83G0mpS7L9g=;
	h=To:Subject:From:Date:From;
	b=GgsmJ8+xpC1CAVasYAJmYQTBScxGJMFUw6rw13KAec40w1ZPsfprmZotl9AFdhl5T
	 Fda1qD6Wfu25s0VvGpTqtRRm1exHtTzCwUbIMNoTrXn/yIUXb+xgji/QF6EEMAC7cE
	 RNeD7liJaS1qA0YNVxSVlghf+GyRzcXBP1G4GRwTpQW/2HFzjB2Rrft08ig+J5AXiU
	 cNQnZHhDn2ByQvc01dxqZYdx/DZpsspIhYny8Sgg9Aa3TkdI51I6VVORXubNlu1Qa5
	 pUKF9X3MlAeVKvCLQU7Cq/e9VFJtZgqyuhaaVuHAXY3YU8dnuWbw7a3eCK/O8zwFay
	 gbQy7cgv/ywYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB7CCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134579368.16046.4990811430699992325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02b02a8de7ae5acaf121027ff51dbaf3cae1f0b48fcb650a7695a0ffe83b27c
Date: Sat, 13 Jun 2026 10:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781345793
