Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD5F198E9B
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744724994; cv=none; b=tqCnZWR9LowWEGYOuJL3ImZ6aA7Tcx89ko2P1MnStUP71b1qZECC+V1hTQoN7GOXsfZfUGnKrTyy02fzkzlcr6gL+9Lg8tg6H/C44yoWu136DnRhwaBlyqXILMEHEAVhBeQm8zyLuQBf84IG0vlmRpThsVjaPEHvUY+QDUjqIa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744724994; c=relaxed/simple;
	bh=g/s/vA/DrPOrmAsKMqyzD2uSw9bLSGkp9FaMbSVa3io=;
	h=To:Subject:From:Message-Id:Date; b=WJXFA5N5Jx/QPmK7wc0YQ7b2cc2QwoSD0ylQ8aPT/9lqLVgQCwBsoblVQrJVv5duyTckx4QZWXEROfQx4k00ZGWAN3ZFAijMjaFvfkeKIsQi5A63Wl/HF8eAZScUPLKUHwx7uxuNGL+tCWG/NdsgTchpRCmOg4Be6qn+QWsIeQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwJPfsNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwJPfsNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6906C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744724993;
	bh=g/s/vA/DrPOrmAsKMqyzD2uSw9bLSGkp9FaMbSVa3io=;
	h=To:Subject:From:Date:From;
	b=TwJPfsNfeHqSsUZTTwlkQVp/+hHyzcFxI6TOrEYtaqyWa4eIc4SDdpA4EZZhgz78k
	 NyN1ucuSIVPo6v0wkbi/xfIfGRJ1AeDQ5c3XYJd5rNZc2noki0L/rs3bMO3iI/ug+p
	 b9AiaXq1eVbtOKVv7mZB6I8DQWYomLXt+etm/zoofP2vbBamQXw8EHm5Ey/t2Mhnjn
	 Y6s2/IECvLJuOwScz/ZnzDX/Ilv1QCXbCkjG9AtgZlf0qMU51wl6IPH4Blqn0sQIrU
	 kOlJ1X7sFM7gH+9BAinP0HMMW8d77wpbvHPv/IKQ8S9s9sK2tBbOZqa93Yn9FOGsIJ
	 QGAHFeYEmnMqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A1C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174472499358.16410.1967742808938482876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3531e2a2520435c935506e5b6112f29fd2d8d051a008e75fda2e639ca5b5e5d
Date: Tue, 15 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744724993
