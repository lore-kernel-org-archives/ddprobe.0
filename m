Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2083B3A1E86
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766710434; cv=none; b=gzwM+LZ+xGHtTT4xAAp8f3atcoVs42clPFfD6VKn8oQ3SQK/qOEAP7xYmx0bb0ch4Z2WV1CmpLmJP3yKxKuviL849Ak/CPmfqXl2VccIhf5dT6J6c+W9KgpAEXRz6q4wPmD0WGOI11qiQocTvg9T0nQ/9IfIOjYgL5gnH4ZnOFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766710434; c=relaxed/simple;
	bh=y6MR58YQkFd8QblF8VpEYydnTXS80RiasE80Xg7BoZc=;
	h=To:Subject:From:Message-Id:Date; b=i16WTE84CBiBswkBMjHH2WASgGKpQpdS5mLk3jNPP5QLQ+fH7IhpEXXUIUGhjOQsHA2t6ovJ4kE8LqyJgimE0Jj3KP1fwgzvNupDJiCJnSniQJH8UeOknZOgZLU4VTUmr+oGsgoT2osI9ZO7qHpogIR/fkal0/NjK/3+tXPXpwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vfe4hspE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vfe4hspE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD169C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766710433;
	bh=y6MR58YQkFd8QblF8VpEYydnTXS80RiasE80Xg7BoZc=;
	h=To:Subject:From:Date:From;
	b=Vfe4hspEbws7mHbCOXlYRX5rkPJz3q6yPmFrqPUYHA0lVeM+mMmq9Bhmr3osU9p8a
	 s8JGOQJP7zi92AZn/XrEniM4elLdqKGTjcU3lbV7NgIvHou9bHLEA1vIGxfDR3m6D5
	 1G1B9FwygKw072Y5Yg5KdS3SSVW6LWaaa/hFyW1K1wCERFqkLU0wT9yFt9VcQAkFD0
	 di6MUD8aYQpcdSUva5oCsAG3SX3gbiRaiJvDv3ZdjZHG2V/Ij1xXU5kyTDNPr0Fmu2
	 6MiYw5u/TZK1PK1EOQi9BF2pR65D2u7cLBVcxyeOJow/5WEqEuNVB5XPMwccyM6KyU
	 jF6EEMAaoKaQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A633E7AD68
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176671043359.8060.18379680875192742489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e8dc55a62e019aa435407519942ecfcd610ae2c2e7d456ba2b433c09c682818
Date: Fri, 26 Dec 2025 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766710433
