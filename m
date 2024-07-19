Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1364404
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721420154; cv=none; b=hNo7pFN1VM5l5l3XoB3bxdWmTi6mUyCf+3Tqrv3OHlntDFL3vRO7zd8PiL2RqelYK0++7uBc5yJzcW8kHw6Bobma2v/YW8Lz2UpqMuJ4nKbUsGhXNhxe8uALe40w2UZOzs4VL/PQoC/qJ+hu6n133wAC5H9yE+QKE3rgwQ3EgOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721420154; c=relaxed/simple;
	bh=RXkZZOQFw623/j0OKRb9u8qVwHPld5d7JAFRZnWqZ14=;
	h=To:Subject:From:Message-Id:Date; b=HoDIhYhrDNTq2ZX+Nm10TiC+pJYbzqQfVCHe13PpbwKKrbH/+hmPyKXnR8gOXQCQgEk2WZiZmCOq9CPAaC8sB2L1uWq0aQMrTXZShT/pLiyJX+h8Hd3PqTpKxGjgZ9uNnUbGymsjIy82fdoKUfjyR4wNSjFxQtzu9or2H05NNZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkfNns+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkfNns+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B0FC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721420153;
	bh=RXkZZOQFw623/j0OKRb9u8qVwHPld5d7JAFRZnWqZ14=;
	h=To:Subject:From:Date:From;
	b=SkfNns+IlrFtloDKTGF8J+oinfYiAR6zGdv+QT/Qrp9N3NYqvkyZoN8JtXdwlJ/K/
	 3sG7tirkBS29oiSUDeE/15TZvQg3Rt9hd90kXUVbqPAgPs04K3H31VKd+0wz2vJkw2
	 IXxLBeb3NfackMJ1M6tQhvwKt4d0kS5eNSNFw8Y5zJqsDQUtXMnzkgR6S47YglTkZc
	 9a+lewtNNhT2vzNTCrO1rwwmSOHgzF3NH89e06C7IqbX6/udd5aW6X0UhwkMgGNiKB
	 ZLAIulxtg/IuwrOuIbTQiZ3ypjl3g+22Q4Tnh2LmOD2CN6WE0336j1y4HwYtYfr65n
	 weUa7IK7fLvUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BD5C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172142015361.5087.9011907965513600411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eba9e6c32990a0c3463279baabe110dfbf55d35d8a6ca079677aab94e08192b
Date: Fri, 19 Jul 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721420153
