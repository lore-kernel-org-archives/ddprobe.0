Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE4D5466C
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 03:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718766563; cv=none; b=rO5YN/BVzCo/H+rp9ZabY/KHweLv85FxVrbKWImyBF5+TS1PWhhVtmMxwogx4IyRiP3cpGj0zGtBGcdTxSAxjxdDnxvRhwucPvBlHqK3+eBknlt5bOyig1Me5qp5vP0E5XnAEAPLJXTPqWxuWFlV2vnz4fm80sxaWyxkwswQLf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718766563; c=relaxed/simple;
	bh=LWBrZtTnn7KOv2RqQW8Iiwt2mOnUmoSSHN2f3B0cjX0=;
	h=To:Subject:From:Message-Id:Date; b=BTn+Chd/sAJa8iaS5stY1q2/Tb81RVHDja5D+g1HyVFFcaUgP5tdoZFR8lwIp0LpIl+sQP7o1G/E+Bo9oE8aDdbajvqzaiPahQL51IGqOfOgGED9gVMRZek+6N93dLyZ8RMnND6Otey2DC3Lxz+ZB0oP6EqyWGw7zXbdoKAFG20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/Gvg2Qx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/Gvg2Qx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8F0C3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 03:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718766562;
	bh=LWBrZtTnn7KOv2RqQW8Iiwt2mOnUmoSSHN2f3B0cjX0=;
	h=To:Subject:From:Date:From;
	b=k/Gvg2QxSn+c3MPrFjdRgsmzgamWgzLNNnFVLmeMgCb0hwPeCSEXauOJ30ws/mgpV
	 kevBFd0p7MJNMUn3OKwF2lUfJk2/lMMpoFWqrQ0Ai5Ob52IKpwbqAU0SpKM/T48KP1
	 fk8phQ0fFslpLglzLnyLx5hHwvd40IKwkYsv8PnaBcVmOa1Ep53p1SlRlBTE+U3SC9
	 +2C5VvuxSwd5E0tHwYDPrTQ9UBPikvS+FIMf20MQXx0+GxZqTf/nJBQOY6a1QrGsoM
	 iZA9O87VV3+i3Bu3pY+ZaedGIpT4e7OLpknX2JAa4xvqhVrkVcYQ6MBUNdWnSXZ7h+
	 5kfhDT6JXVGOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF312C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 03:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171876656277.2954.9473667844032042335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb3b238f6126044e6dadd52e408c99cd6666f999bca0e55a3bbd1e21e670a7a
Date: Wed, 19 Jun 2024 03:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718766562
