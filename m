Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E78D26E719
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764537174; cv=none; b=ohzk1DBUH1EmnKDR4uOqVLckDSDnQ0wK+FC06eNKelfsHW2g6uZ8OsZ/M6Phao3ZAtj4ATuBvPx8rsnq7QkW7DKESCe+cxjjSzvjSCUraKSUXMS3aKa5gKRGQsgIsiYIc78hJsg7+f5vSQ3zgUQIv46ZZdYOvV2pCnTK6vIzJys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764537174; c=relaxed/simple;
	bh=86fhj79ySLzicmle35lENGKpKWAHLJeSO6xK0q2T7ik=;
	h=To:Subject:From:Message-Id:Date; b=dSY1P3Wxzsra7FuZq4cDgnTIEq4HUtSxW1E+u85HHQim7dqAqw2X6QqD3lM45TaAXBEZfkaYzblK22TXG5APu4+GVwOB8+Ys1hvPx4rVj2sIYpouG3eqt4lejFuFr1EOM2UZJpXsNW0U1nGjjLsqlXt52NLgZ317yxNllVyuJ/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMHDEOMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMHDEOMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2774C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764537173;
	bh=86fhj79ySLzicmle35lENGKpKWAHLJeSO6xK0q2T7ik=;
	h=To:Subject:From:Date:From;
	b=rMHDEOMy+Z8nl2mBTcLNi/sgjQRJVSPLDeC1ASCO7D3uGuD+V1uxA77ZaNZ8tvAYx
	 7QVmaXsyy6kcDhFnKSRsImaFsOFyAx5uow8NduDFzgr4s0nODCGQnb/VndU3Mj+ZuL
	 K6q4dWCQfuvhbrMAqXZn6VcvzjtQ+6zgSvdHIVsCI4DfLXXpyCPvclz376QGC5rq2U
	 mmgeCoZvu79Ul37aotgzEElibXEj5GftFRu93wwtVUpUilrZbKycgRidedoQmlrlHl
	 /Wp6wtjA2O95/Z9fT8q407OyKhK5ZFtgEMBM/b/OOxOhQjny3i2Q+uUhbiIBxy0Ue/
	 OsS+gqA9dkVpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B38D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176453717358.7189.12827719393688419793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2389bbc205fb492cb85b25430580306e3c2bf18b59d6daf599faa1cb8b6a697e
Date: Sun, 30 Nov 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764537173
