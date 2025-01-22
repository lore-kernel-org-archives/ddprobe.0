Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345C61C5D74
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737582954; cv=none; b=AisQP+Ry4IjZO0legbd3Q7PaORcvyOjX/+Jw1VnDKD4EqSr/zl8kIx+ghVNqazVzWnaWq63jYVLHPckFETSHGAGnbFhhaJ+wfdnMENaCVh5U/LkBetXBxqftpKEtw0df1dqsCrWhUNjj7ZWPN+aJ+5hXVXJWYSWW9cc/Yk3JjiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737582954; c=relaxed/simple;
	bh=rOr1xfyEkGbuSUQmQB7kpbCa0AKU3hLmit/zV/pZBwg=;
	h=To:Subject:From:Message-Id:Date; b=onvc+hU7U0zoWrRYFmD+7ts2bj9TLRj1LBaoaVnOmV94CVIwYzUhASWZMj6feW1clMiv45CkYkV6ftcwvwm6UG1kkoqHprE9a16kq3hFwU16ZRmfm4oM/jdeUWfrlDKdg6R5l+ExuvstsQnonvAd3PUbKzV8WUbx41RvKIned2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/sA2z64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/sA2z64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E18C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737582953;
	bh=rOr1xfyEkGbuSUQmQB7kpbCa0AKU3hLmit/zV/pZBwg=;
	h=To:Subject:From:Date:From;
	b=W/sA2z642LJYLE4zvMMSvxJ9zt8ZdyH9QHOIU5T2FkV3AEFZjGOhMoaLSqFemktkL
	 crMSzCC6ztjRa/m1nb5mQNLIgTtKEYlz8RXKP910Aeam3bLcd1RHIXf8TyWac8lZDl
	 aBvoVzHHkAtV9cP5okccLMMsRWHwEeozLFTZLEZq6Dv34f0u0cRqOXeGruBQtyMoF3
	 bmfbs1Br9W6DtRk5Ygo2BdOAVfMNH+4cDo0i8JL0cjFwKz7HK4T9FgpqM4ExDz20Dc
	 smHpZ4kEQ/mQJiDFcL1OYkEEVL3fl5tVD0L86dmwNNPNRafDPo42t5Dj0t+LO6D3Am
	 cNAN9elJlK6Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916AEC0218C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173758295358.4384.7042356015689789972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb7c3a9c3766e42fe7fae5bbc11f98145ab0b4240293999dc00e483920cc80b
Date: Wed, 22 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737582953
