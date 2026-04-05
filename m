Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30DCEEBA
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775423134; cv=none; b=g1GZjRTt9kCcgdO7OJmklLJ+kwls7ReEFYNo68+84LeNL5u09I8u5v5BX5sIsC+FTwpW8XI4dClT4eFc1odoio9BFMXaFWfDE5OeCOqZ1rT1Gym5U8p/XF8fQG6EXMdWhQl5v8mFtT7UAae0nGCsZjb8nAnRJI6yM2U+agYPtFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775423134; c=relaxed/simple;
	bh=7JakLfmKMSBRsgS36nGwEkMuGY3jp60tm7fpoGwcmVQ=;
	h=To:Subject:From:Message-Id:Date; b=uw4YYSLn6LR21n+Yj2tE+92WYXEVrkBjjjmq8W7RyNCpqb0X54bNRmBzwDNo+VeYKnJ4m1Bya01jit5XQnm1LTbfmbLXIpNYth4CkG5Bqw2vYFRXo/vhO424/arjZqE3s7XbAHM07rtuqq2DpHx2YrfZomh4ldql5eId+9VX8Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYCeiVF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYCeiVF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC331C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775423133;
	bh=7JakLfmKMSBRsgS36nGwEkMuGY3jp60tm7fpoGwcmVQ=;
	h=To:Subject:From:Date:From;
	b=uYCeiVF2ZISvUJXheo1RV7QG52uy4xdbHFroGl1cpqlucNCcsoON4sD34/V8NXOIV
	 +MuSVIPhysAXa0d1gUYt/TXgAL65gnUhg5MuZjyinF99PbDXngjrSizYQH42lIQFE1
	 wOpT3RoFjNDw8JOjJCe5UB7jfowH9qpP91P1kh+dme6cCFTebDPjU1azVdJfwaeyG8
	 JPQ+dUlGnLFkj5vnLtX7hajlaF8144HeX/3DDpU8z0Hbqj6880gu8K2sT74Qj9AGMH
	 3+EGDPARIQy85AMYntB9v4VmpBjUDh4s4EcpVkIrldehDR3pUag5k/4jGcU1cw6AEd
	 GHg2hzUbs6oWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D8EE9D820
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542313370.18236.1758813823531328663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565d2d46d6055cd836a9ea867e8ed8f067301bbe0884782cfdf224d138d052d1
Date: Sun, 05 Apr 2026 21:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775423133
