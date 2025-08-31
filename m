Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA90E1F2BA4
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756654193; cv=none; b=bpHxB0gIqY6DLqu7ILzlJ1trk61nqW4h7jTdTUxV/5nULOVESwDjZ6WAK/y3F2sTfszW17g6y7WAZxTssMQEO23+6/Smg8Vp8Jlpob7YFsq5SbyxIol795nFdnJgP2hharwXVqSFO1QVpPUulqBL8Nh+OBL/Bf+VrbFKvkkb5No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756654193; c=relaxed/simple;
	bh=Rtn3plO+YtMVdSeOoMvMf3+QkD8Y3nNmFB2gn46lwnU=;
	h=To:Subject:From:Message-Id:Date; b=KSLZvyNuCzP/8qm27CTu7fD8bT98Y5MTqdVa1d80AjyrNVZIvsE/VZu6dYERFm5sC/rUpJk5L39EBcjl7M7bnb55/mcPsrkJYTqvL4ubuD6irX5wgQBnp/rraNcVA6NQNZnglxUBjsS7BxOeuuJkdDPgE3fHiLL0hlGPDWKib24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifDluyRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifDluyRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42B3C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756654193;
	bh=Rtn3plO+YtMVdSeOoMvMf3+QkD8Y3nNmFB2gn46lwnU=;
	h=To:Subject:From:Date:From;
	b=ifDluyRbol+BvZeIu33pGcXfJZH9EKqzFbVSzkmnuqJJArEx5irELXllJriQQ9NmM
	 QFi95BjdYNMFbS7OzdYKtf+PtzI45a/IugPmbuqhaMJD7GvDoJvfYJQXtUsI/ZUpCN
	 54WC8xoA/QxhUJ3eGwjJtNqkBNsz5up/2SiTJUYfcKNGlCbqWKrG1MB2MaNNGkmxt2
	 veJcNJbhw3+76TxpWbXF51TPB3x7NhsA+dIDXi6sZypLvMCMPk5HzThRj3g3VX54sG
	 XyFz6g5OkBnRo//j148NEP9JYhieOpkuA2vdoZB1l6prKwUwAy2LPYYZQyiw214KjF
	 myFnJmpwaEbbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92150CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175665419357.6827.15176294739570503296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c778d037d115c93d454b5ccfac71b3f4be144edb774f463416f7ee27d8010a
Date: Sun, 31 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756654193
