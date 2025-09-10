Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC97C24C068
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757541593; cv=none; b=mQCDZgbJC4z0WSuRZzQ1xx6ZvxB6S81to49+ZJTnoChsoeTghxdq9YnU9B4Jw3vdLfsFD3+hGnVVGm9jHN4DKct64F+A/AC/BM7QGQrHs9lHLEROCSH6QBaO+IkWBdzL+UE6AidLw31Jk9ASncfcaf2uvt/Xqfdnz0Z95PtlYMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757541593; c=relaxed/simple;
	bh=1OygyZ5KS7dda5x9d+0qhDGc7+2nEpxv1LHFK2H91Fk=;
	h=To:Subject:From:Message-Id:Date; b=Vk+prniRKrR85Mptfix0G3ztHfeUhg2GDreLZOKx2sQexvUHWmN/fg3n47dXbo1T4+nGoNYq5rFR0j1mtXD+eZ10mbqoWr7VPsO67YXdgIOssSrMtttJf78cuNhIWExYf7+JLmmh9KKjHzsFRn6/qwBwPRbQ0bRcveklrFi6cxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2fcdqLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2fcdqLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E55EC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757541593;
	bh=1OygyZ5KS7dda5x9d+0qhDGc7+2nEpxv1LHFK2H91Fk=;
	h=To:Subject:From:Date:From;
	b=k2fcdqLj9qvwJMoSFiYvy1Dl+zPT2skNXsoEcwk0NNg4oR78FxWGDf+ubalTl55hs
	 +JnoCEsB6T3QHWoDxc5u/tIvSLBZFxziKA3kNRWiJQlHWIDd245IPBKNmdXkV1nSa1
	 mMX6HZHMFRKiHNf7Fdne3DYJL6SuLa2JzoHeVnCHbSreQP93W9pg5yaVpYN3Jldx0i
	 kbNEgsUlwG0Taw5m6hBF5uPe5cni/c0haDTYkvvESs4QLNYElA64iz30iFyMD9vFgA
	 k8VWiHGM6foTw8CWAvaZRWcODBk8WqxJvLPCw5Els7FOy1tW7NVOwLlcnzitGXR+//
	 XjEGScyziYTcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E5CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754159357.25675.7478080349667131025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e48aaeb98df8d200f58fdb61fb12fc14d3ad9bb7ecf5e58b48c81bd0984d8fd
Date: Wed, 10 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757541593
