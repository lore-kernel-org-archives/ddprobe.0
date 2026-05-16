Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196C478F3A
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778896834; cv=none; b=SGQNi/3S7YE6D+kHGGJp0VsN9swnln6souk36hfMhJzYCi27Kgr7rT6BuFtfUycLYRXBcbjdD+EyOLNygEC6NLpZBQukRy4gT4BEr+Jrb0YQAbAEgsijO7J2QFh8Ci1qeEwmGRQgbJy5PGC8SlmIzYc9rJTP3Wb87itH4EnnFrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778896834; c=relaxed/simple;
	bh=P2v410omEb72qmkxByhIDMCiuZYuhvucXHMg42i5khs=;
	h=To:Subject:From:Message-Id:Date; b=roycJjPOGz+pCpL4IO4yVnOun41wkkm6f5s46zlEB+wwoS/ITRgwRD7iib3US660yEcY+F7kh5YIS+ZSHNV5KRDIDiKiqoU7/6DGvsjFhSDbu9ugkbIA2DfJVCyZkXeHWfem0LwEHPCopCxXQgQyG5FE49mU5ln1ktINPWQU4TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qd+jjD7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qd+jjD7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DE1C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778896833;
	bh=P2v410omEb72qmkxByhIDMCiuZYuhvucXHMg42i5khs=;
	h=To:Subject:From:Date:From;
	b=Qd+jjD7ADDm8BYlAOBWptNcWsdBtftocnfXacvZxs6eXu5Z3cf6Lq0LGFh7hVufR5
	 gL4tIGkekGQaB6il5KfoM3vIZtiAy5Ya3oTAWfsV7mZ5mvLWonxB4A90T5p6KF+Whs
	 PK4gINTEVc8poau0ItTqCGbXjRh+1gj7kDSLOi13iGNGnenW32MkPbj6xiizP/kScy
	 TLEsRjFYwU7ocCnUvkdFLQhWHMisfUkfGy5IYe2tSaFAM5fp0odXnQxwbJKKOJJGa5
	 e1zlvKWLECRXlVa2AQnroduCwH77TMpUHGmF1RdI/3IueDjzbDLCq1CwfGmIkdMfQN
	 M6Yvn5eNIUTxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F30CD343F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889683370.4412.8637895891346252502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64df05934df4be1abc43d7b619ea4f2a2e0872af91626a18a38139319aa95cbe
Date: Sat, 16 May 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778896833
