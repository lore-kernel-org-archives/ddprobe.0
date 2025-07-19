Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D97217BD3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752889794; cv=none; b=ZsMwEHm91T5Wv9U23jC8t50W9j9yCNAyA/aUD8i4YJ3cOoIte3HMjIYs69u8KwmRoi+uNblt0FqDywAEUKqs3iksmfp8awb87Vy3OHmQA/pOJ3JBEVLJhX/lwjh9MCVUgnE05QMfPFksaYUOXudOgmD7ElrjIvwISpqOTEmKgRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752889794; c=relaxed/simple;
	bh=oo1ZBH1tAFn3W7w8XDTaPFXaJw0WCzF2WqeRJYchP7g=;
	h=To:Subject:From:Message-Id:Date; b=Zo+GRzefZnP9+JW5Lr+uABbS7dNaUmHXUhvUFgIAM7hFJLPAUp0KaeAUQ6g2KVFrRwPKh18QjLl0VoP7uP/+uCf7R6pj1ccRtGYWWwwPQnjukyzOhET2rWJRWoYTx2d2oP95pPJmtuKDDtYb9U6BZPvdxUxspuwi9cyHRxuLjNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmOgywWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmOgywWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21B0C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752889793;
	bh=oo1ZBH1tAFn3W7w8XDTaPFXaJw0WCzF2WqeRJYchP7g=;
	h=To:Subject:From:Date:From;
	b=tmOgywWAvNjro1ymAXmiirWkcUV7AenPUGxgyZwp2qbV7Z5n0uyW45AqPtPF9rUoW
	 r2JhWRz13c5fx+2RalPJAmTZpx69YhgdoCnR4IAOKMf/Uj/2FKLUdKYEnCU0TqVkZo
	 GGI4B2OqLqUvPtBCMoeDrk7rDRlIok7CQ3brP6C0TDoAoD0E+Hpjrnk2/QWVEY6tIp
	 lcMWUbzaWVaY41KadMXKSRODHUlKl0SfGD+3gpmOEZ516O3j/TjSUzkX0wUN8qBRsg
	 cYWEd42ifYbjnqY1U2LQwOq0h9muNPq8/F57xk51Q1Gy//Wv7+bLFlzNIACFBmIHuP
	 hWSvRGhJbiqpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DCC83F17
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288979358.29566.3777084887358448386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a415d739bc51b51dae638e31f7544c87e8aec3c78e230b3098846873b8645c4
Date: Sat, 19 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752889793
