Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAE717C91
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743292194; cv=none; b=FdTQpqauoqbglC9lNg2pXldTYL9s7QPhxseqnXJ1i+BFaaFbEYEofZZ42sEGKc1Dyn9qAiXTr+wONX1+rJUZRrQmgti4E/vQEPZEZ5HzGKNpYaI1u+2yHtzc48o0JSnuZX6Xkl/yWyK4TwXWSYswxWY2c3pQw//rslW3yg151TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743292194; c=relaxed/simple;
	bh=ioSPt8LI+a7lnAf77/SYkbCYneGJfAtB4OZDrCbzUJs=;
	h=To:Subject:From:Message-Id:Date; b=K6LuY7Pq8WCeb57u68akRJQge0NDm1s3ABkOBJXhvmc6yg7Zwo0Cmw5ORGhFQFOpEhSEFxj6Sa4zXmywCmiASjn4MFi94sxAF9YSBCOHav1vzZcy0T/cwKu/zSIMBxfK+o3Jxjs6Sfrrj/EhC4SdbYrt+qudnuEHd7NFw03ud0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GunpWnHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GunpWnHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AD6C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743292193;
	bh=ioSPt8LI+a7lnAf77/SYkbCYneGJfAtB4OZDrCbzUJs=;
	h=To:Subject:From:Date:From;
	b=GunpWnHvC8DviCBa/Z/Vvdx4YPF1cUpmDmxYGJkh/4y+OrhrYF1X2XbHZqIYCuiby
	 bsysdPoJTanIs3K0/GDPOLqBKs6/+MXr0aFrHEexflCBSin9RQmURVR7M/ul9AyxLc
	 uQNpib4+Vmu0kTiKKZVTXDou0Jze6BNhdXM4VlGJWbF6MX/jzhkClqo04W6h8Iaxl4
	 Hjasa02J1yA/Gqk5zCrjc/cz62JPYAtx71lVJ90ZEIk/SLgk9XH3yFThwYYZkAmP32
	 iDkRK34vo91gLWHBoRGwn9XjEH7hFxpbe4goR6d7KQJzFqt+ml6wgUR3It+TKm5Cm7
	 K9EFPVfLE7OmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97466C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174329219358.13629.13999158727431597402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0b061f9c51d1f411a019f09eef0ee886cfb4c6ba068a9d37922cbd4d266c840
Date: Sat, 29 Mar 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743292193
