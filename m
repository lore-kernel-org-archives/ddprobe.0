Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BE326D4E8
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757917794; cv=none; b=ZImBkK2dk7DCl6SmEf1lLni1RblH0tIXZiWO1sRUp4z26pLppH7n3f4yXxRLRNkXXkbAu8U6r8/1y75f24shOYvomd4Ioi/g16AQZDmMKGYXVNOy9tdLL1Z4zkiASaGNiFjtGDR0jbRsccRXH+w+OftbF9jx7GrgeWp/6/rk/TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757917794; c=relaxed/simple;
	bh=zjcitJJRM/fiptT8eV/SUyhUSlj+kuBlGALhppMdmVY=;
	h=To:Subject:From:Message-Id:Date; b=nYlV/jfxz0fTO1m7mVlzKuGHlauiGvRjxzOm4BqKaM8YkII2Hi0h4rlgYDbnvfaPSBqnLJwokHSB/I4GAIoSdMQuA5xFO1gWXFAmr+vc/aibtWuEMUUNPkLq6jM4cUq2HnFoMZwxW1YiuUjk7R5IQeNIfbsRmTotfnLvYqzC+gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W18G/7bj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W18G/7bj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13E2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757917793;
	bh=zjcitJJRM/fiptT8eV/SUyhUSlj+kuBlGALhppMdmVY=;
	h=To:Subject:From:Date:From;
	b=W18G/7bjyLUGGNmCdTFIksBdDam1GEnAiVxqYzU5npsr80pgcvmJD4ueuQr+hcPuD
	 eWaMN13fYI+n3ioc2c+xAreYOCNJz7VUpfc43LkN6FxB7AMSclxdGKwwZ6qbJ6c6O8
	 NWDmT5IATHOu1Q8J89a46Pq9+EEi9OtXxRCi/4X7ntZpSwGWKVSaVdnTWW1h2iHogS
	 SxjpOrLb/5uTxfY6dHh9hxH9ewa0R7qai2N3t7JDmvOyREtZ/olwFVWRa34T6UYH6S
	 elhGYjMnJQC0rrQCiuz2jxt3JGZtThkQ7JTbOFD04I/S7Vh2qFodc0FaNbdHd8jdT+
	 wpJ1aqnFHXNnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76BCA101F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175791779357.14058.11505180755313997798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f08589af9d6cd3068f99f8a54fa1a19a64847c151597cb949f6c3b2d087328
Date: Mon, 15 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757917793
