Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3744228DB49
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780539874; cv=none; b=R6Z7/RdOIvpCe7dYNEg5nDFwGu9dImhQEjc/EsC2/xdCUwe4M4d1y48nJCw6DpMQsTAyKoyIl7RkMtZRbnt5VT/ZvZqLmkav3HpoWe+IUFplaD7qFyE1Yzsf+tW8Gex9O9xxksU4r+eZM640DJN+DdRg21v2e7juQWyr/5YYHRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780539874; c=relaxed/simple;
	bh=3YSK+5AoYZuJ9N1kEHdGYYPMWg5nI9rfLZl+U+CijQc=;
	h=To:Subject:From:Message-Id:Date; b=aYIoLDfJUDZu1dY74TCXe41YsGBsfX7hfY/dvTkdFquaGokdWA7iGdxYokN9U/enSYp0OwtUODSQOgssohPF5L/gz56YHCeWTUfGX+hsjbXYMW6ttV3WuXJUPowoFypcCNr3ldkBvmJ4DGZrB1fP6vffNYf1SHpfSvyRzPNgav4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjtgGjHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjtgGjHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEE4C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780539873;
	bh=3YSK+5AoYZuJ9N1kEHdGYYPMWg5nI9rfLZl+U+CijQc=;
	h=To:Subject:From:Date:From;
	b=qjtgGjHrXUfCqohfO6BPkeId650w3yhL/MC3EexujkQXq/9Yu6dIIe6tb2xQKCzWO
	 x32xkUO99Z7ep0pjpSwuLJrFgLRvWJ0lyj625RNpdg55GVlbFYRNyS7xd4Py2WgI7G
	 +0Mq6prHZESbea1JHtS6qshdOi4ZR8r90fJVxLvt/Ww0CPwyh9DUWM1qLNVPeRU/VY
	 TNWymq2kFPOLGocvxGNm3k3SoCFLPT6ysLWV0t4d3MKORdnVdTjgWMKDU3o+piZ1Fm
	 0xukk9NZ5nMp72CYkj6FNIehsdPfj36116G01gcLawnOhiKFSxjH6eAfLtAydyUP1R
	 Koe2abDoyOj5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1531CD6E55
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053987370.22520.16485117059172943615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252ce48d2fa30e7ae477971578cd73c52de2f8ec1c4fc2cd7ea4b6ba86790c1a
Date: Thu, 04 Jun 2026 02:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780539873
