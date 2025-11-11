Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141B335CBB6
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762898994; cv=none; b=IRpRKF4/wBQ56rdvb7rS+A25C+iftAzE1VBTeFHHJzT1TXHO7AAMp48otOF5Yf0mT4+DCHbxQ39ydOKBs0cU3fYMk1Tj+zUuWxrZ9pJHvm/kDyL0itVm50CXvxXcNVEZ46KqgEFqFo+C1UqPe7dIkNKoNfI9yQOILd+YTG/CYyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762898994; c=relaxed/simple;
	bh=NAH0BXWfoL0hJqNvAaTP8AjNVcgesF+Sj3rfA0GeZDY=;
	h=To:Subject:From:Message-Id:Date; b=XjSLhH58l0y6SxQf+osQkzqNFQNvw8mUJ652qTNnnmL3W2M14TPnJM13cp656t6EKEVvJbZwQWgWKMzC2p+ZaUS0coHJkLEi4coW1nJ7uRefX3/LBRtNzXEkNFuo1H1A8BvBZpUeZ1ixErCtyY7Kv/8P3OCkpyteWlbSaH7as8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tx6onn3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tx6onn3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BEFC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762898993;
	bh=NAH0BXWfoL0hJqNvAaTP8AjNVcgesF+Sj3rfA0GeZDY=;
	h=To:Subject:From:Date:From;
	b=Tx6onn3QpjhfnnEhPVxRSvUyNgmShXziD4nzWuhyxJi0Lh0STzDw5TFtuVo4ctJjI
	 GxFqslUVbICvM/AgCm19lPLw4tVIYqLBkpCakA2XSubF/cztI1zdstd1X52IpYb0no
	 Q/gF9z3CLnPGUhr2JJ0MiVc85EYChm5P2TvGQuhe7dKVbgQVqqUlO01Sp4QvfhzuK4
	 FQSUQR+OZri/oLxrjxspbLEcHeRSBuyRoSqwRGAH3tUzza/WGUJdZfAo/23HwfrRd3
	 7Oz7llStWP8MTiYWdFCjNk2dA5vRHbWBAVEEnfEs1AD5Gak1JhMgpd9a9fiNqqOFcM
	 1eU29vzg+/bfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE99CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176289899358.30109.17027763136176131874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a5d46d7c5595f7351f6522c68c156d00b570078ba60f19d1f2e0e4ce352ae02
Date: Tue, 11 Nov 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762898993
