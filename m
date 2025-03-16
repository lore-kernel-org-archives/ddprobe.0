Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2B67483
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742125194; cv=none; b=to4sUNXhILiXIP/WVWtObPPU6b2Hjx7bHy+2+3mYj0uPHgKSj+go5/8H1kn++z10hkj9YRxtWhmme/R8saiooCZDpXM0/3h2V8LyBjmoye9cXkguufbuSqxarQ09VB267nLs8dZwnrRHsMZl58eNDLLL3Yi3TVbjCHVFM2qQoM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742125194; c=relaxed/simple;
	bh=AoVXlD1tIXBUCKACBKjWAGueZQ91ZhbnrJC20/pY9HQ=;
	h=To:Subject:From:Message-Id:Date; b=N9K4RvXj9bOkq0tGwgnhFwjo2xWS2HN22VghaM3VcR2OyK0sMF7Nwf7mBwn1UGKDHn826py2jv+cGupx92ZQ9ODECSJRWbeqYBdrCTOmn1pZcwc/j9aaA5Gdd3eww4mCR3Tfo/Vj896Umai6wooQ+V7ULOp7roXOwPsWE1HlKRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gK2Kgst4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gK2Kgst4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68CAC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742125193;
	bh=AoVXlD1tIXBUCKACBKjWAGueZQ91ZhbnrJC20/pY9HQ=;
	h=To:Subject:From:Date:From;
	b=gK2Kgst4z1k4/3bqt+rX0AFtj7wVZ0yzw6JjkH4ata09Q0410zajC2hVzAq2V/K0A
	 BWohKDmUU3xHlttD/LlH4eb4um4NeTxCqyNgSDi4XY6EIDlZqkwfZnaHEHNTAMEyC2
	 Q4jK3FlUcLZuDdR9wvTrzDt0uV6py/+G90huJWa458NqR0KWcg7wsQ4B2GIlQnQLHb
	 1GGQLKXYEsDVUjozaoZk+4WCVTs9CqxEu+Se3gjrURPFlDF4LCXsEB5LP6k/Oa6EkZ
	 4xidgYiTUDzAfXhvfvokpyKdBn4i+hV7b7atQNEgsWt5un/u6K0GKL4LCYt9bK0TPV
	 dlRkOLNa0GO/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB42C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174212519367.15556.7563698498075222932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec21ff4e433aeb847d5e11cf79d112fd9f47b966eff0cde611ecd517ae848b1
Date: Sun, 16 Mar 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742125193
