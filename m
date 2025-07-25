Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFBF4A3E
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753415995; cv=none; b=paLL71qUk9lwkpbQHInCrdVA+qoKRq30bLniS1DiZYFjy/bCRPJBKabtKmcosmgHMh+4hIuJHwZddlIqXFzrMOYhRp8+gthhNtKwhcROD52ToWOcWFKFyKXYhVH8vZxzEDi3TSYCgDjubUJVJ3GXRsDjBLRiYBBlNqiSvxZtDHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753415995; c=relaxed/simple;
	bh=ucvNoBA9uCuMPyvIQc88QoqQueDFL3Cu+KacGN74OfE=;
	h=To:Subject:From:Message-Id:Date; b=J1n/P3b4GTMObT+TpeuPN3lyDRBXsUAWzFE7jFrrRvDlhF6Kp+q6ugThoEs8YMO5QMvBfSZDEmmwGE5q5LV3uWevfhr80722xPBrnezQVxlxjJuvEES8TGQ8vLbioCNZRL1WU0g4rCeDtMO0Dtke6Qj7XmVM/U4Jn5Ys279bEwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkD36b/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkD36b/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4712C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753415993;
	bh=ucvNoBA9uCuMPyvIQc88QoqQueDFL3Cu+KacGN74OfE=;
	h=To:Subject:From:Date:From;
	b=UkD36b/+n1Eu9rF9EZkjvgQb/P05Bhw29OkxvMO2BWbmgr/mHp9+m3Gg1rKXTxk93
	 so3OqHJlb0+fgxCx2aPFT5+7zzzjvB+evRtWH3HZArs8G15+DxnK8zM8AZprqOQBPo
	 dzD0mR5y4Uog0AgMaBl+uN7PNEokh37E7uwG4I8IfuQzA+Lnl7d9jRR5VkMhKxhTMS
	 Xk3aNvoMqkJbjxYQuUW7Oex1F7wigDe8gGIgC4tSn+ADV3dS501NpJjxfS5osIoQ2t
	 Tdv8Z9VubTE1z1frnw0G1uii+v1yni+T8bZH/ywPhp+xxaNA5Nq6UedhZCX75qOeIO
	 RpoVi5wv8eIeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A9C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175341599357.18730.9370088199546953880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c2aeee2bfb44e3c189f8564f172bc466b1a69759a0d56b6684d50aeb93d709
Date: Fri, 25 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753415993
