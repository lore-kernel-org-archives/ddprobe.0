Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC83E2E3397
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777567653; cv=none; b=CWugFVmYBv01Rww9jZyvaUc7PDA6d/AA9Yc2CWaYvOPcOh2Lcuc/g1VpZObiG6F0MVpkN2WoZ5mTq+4QdznrCHe0+V6Eshu+HkGvbZ5B0VAKNXal7hhVzRezoeVLp8uHjZzTb1LUUZlaH4g9mNjl2bi3tFGUHaMyqgY7SYzkBJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777567653; c=relaxed/simple;
	bh=B8CxL6LTRxuxpHae3BA/NN0gxqmNgHWa0pN6nnXHYw4=;
	h=To:Subject:From:Message-Id:Date; b=UUf146aOa5jWTmpnnZHS/FXQmByzp7639m6G3pfZ9LPgV6oMAIrTqQKXK6WmAc+O776e53TPSLyRoP0Zi+glZ0EKi9UXlzAQRqKKcjG4+0ly1kYe7sHoa664uc4CpdY4k1HcrxlbpMYAiNrngbTq56fjELQjQa9q70vnNItcwZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjaiLpS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjaiLpS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B947BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777567653;
	bh=B8CxL6LTRxuxpHae3BA/NN0gxqmNgHWa0pN6nnXHYw4=;
	h=To:Subject:From:Date:From;
	b=KjaiLpS9z90Z23l+KbcGc0Lfiniosbd9EhruVpqNhOv2s59XW2vXrJBdA1t/XkOa7
	 WvctyIkM5NkUPHnifiu2FokNh5RLvyN2t6ooWnx4mgEQk4YqETltEjRyXmQE5qs2Px
	 wTUhjsrkgWiOtYx6EKRvZmh0wb3J2Rn18DacrqVpk3k2rsAqSEq+Iq9uii1A0mF75y
	 JsKV107AbYht1W6Kp7mqEVstiqug7uRXcVsd5qRPjqeQE24t5g+grjehoJMFxusSKr
	 w96zXZQVsGbN790W6Bd2tXK41mSEtmDKtWUEG0H46lJCupUtOaz1B4W/MGQh39DAqU
	 CN+n8AWlYYIZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5F5FF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177756765368.32067.17692382147129592233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d5f3f1d4065ac049261c63d1069e04a9cf50fae3b9629ac62ade3f06083109
Date: Thu, 30 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777567653
