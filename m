Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC44285CB3
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780528474; cv=none; b=FgNxobAubNttpM34l/UvO/Ny/7iAvfS4AGLegpF6I4YPW2/DjnmHafw3mhCA5z4WGywBQlGhw3C3T/hw31KaU5Ytt1o4O+81r55J5ha8WVrg2+ZNj7kbf4FeEUK0xhHLGzOHf+/zINC9A5XUMOYOXHi/PJfxysThcOFDtv6Vxao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780528474; c=relaxed/simple;
	bh=Wc+k41FcPi5c2O+GPYs4/rNS7LLyMGEPs6+PMnQYaZo=;
	h=To:Subject:From:Message-Id:Date; b=LYPJbvqG+e+8z9FiZMsg+ufj4GnhWOtcpuXYCFkHBYHL6hRDiP9OqnwgJ767GBuCW5ILVKfOXgnJrzfN5Zp4lOrdUaU9IBu2C5LmFpQpNSlU5zySKqbkJEh7mo6/D3vjzTpcN1aL5gudu7iw7Uv6djKt/7Bf5znM4kkESNaovno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmNFgdbu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmNFgdbu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7CDC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780528473;
	bh=Wc+k41FcPi5c2O+GPYs4/rNS7LLyMGEPs6+PMnQYaZo=;
	h=To:Subject:From:Date:From;
	b=TmNFgdbuxuj/5+JPaKu5Y6IyMe6jsSp1cWdB+BqD5c4ocY6pttXP2Xq3MZ2dTK/yd
	 GoRERVxb0uJfWguO1hPVY4ygq7ljsyyAj9Fpfn8LbHh1dG5chIUE7I0Xp0Gy6+RRPE
	 SX7upkgbZ5kgZpaKBLwna1CTIF8sx9RWCGLG81ha0/I0mMHIs+eZiE1tV9WXJzqQac
	 +mgD0QSNEcsllyCyX+OlG+m/D0BUSDCpBeJIFhCVIbrHG3SFFhp7clyx4qAlw0pYkw
	 uQeX6Had9E5GiWd+tjPBzvE89Znd0Hew/2d5fuuH9RBivN5rhyyjI2YZ/td10hTj4w
	 VlBO8O0geWUKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACB4CD6E60
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052847369.29037.14051838231173575149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1711e57bdcbee3a5d859045b073b5ac5e48c38b70c0f7333da018d9486c829a5
Date: Wed, 03 Jun 2026 23:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780528473
