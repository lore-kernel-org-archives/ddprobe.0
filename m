Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDECDDAB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745261394; cv=none; b=RQAHTianf9qfzePx/AygUsOiATyYzDLaWst2MYXhzn5PRDLUOm5q2pN1RZ/JCXbJB1zLWoaz42nkryT0JOtPBbD/bnrGzyu/w/ttA6SMiY7O0Aea6ELx3eE6mhybnd48lh/LHt2ATaT4914l6rM9QkQYnyJtUvBQZYLB5eAB1cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745261394; c=relaxed/simple;
	bh=+LVD/nAZIxLGIP66UPsIsqdPu8fNn4qNkDpzH04k0mM=;
	h=To:Subject:From:Message-Id:Date; b=ZjOyUAuiQ+OU1EtzwzERGC6Xn1WVTnzQR8OUeiStxD4+8MPzdRrAeqBvXDXI4AVvUd6w0FChoM9AWzxTzHTm++YuD6LE5M8IMRmzfSf/aIEmfdiS/KvrQhT+nSt0XDG41Zj1q74zVKjDcnaqFhUoLie/eaIyvSrTaIckiI6TBsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEZQ4w+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEZQ4w+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DA0C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745261393;
	bh=+LVD/nAZIxLGIP66UPsIsqdPu8fNn4qNkDpzH04k0mM=;
	h=To:Subject:From:Date:From;
	b=QEZQ4w+/UiTMMRQWTmNFouhdogzhYtD3K82hzg10TzX78++C8gGEF/bhs1UuFetBP
	 yxw9PGLUMUbsYldegabVq9xVQzPHelWMR/dFal9gr+iXEIbfexJL5mqDGsPjIDYKNU
	 +CFNuMYiXexy+1WK4i4je1KBEGSp+47lUs260rh7zGGanGHSWJhGvlOALCKBx+wes3
	 DS2WLdDZcm/quneLGpiWkoc/BvoRcCHerNv0fPxefHg4l5fb3J6amTL8bFvPXy3Z4S
	 U38zSqZJs67eD/9iuO3NBXVNleBR7Xx0zA9P/9bCVCIk5RL7tLgN7lJivJDas95OAx
	 m87IE39M287BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962C4C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174526139360.22726.1440754296259082098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 446109a88cbec743b1c525cce8aee38b43221de00be73a67841f3e1d9f159853
Date: Mon, 21 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745261393
