Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F3B21772D
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755484194; cv=none; b=TH8WQUCshTdVzVBTndSu7A+uwTHlfrvNldlGpEKItN1O1HH3khDZDrTYspBKu86ddtrj37zFA5CRVvYacYiTO3YM8wtjI1PtMRRlVZwUVMi3rbXNCyiAVk5yS8pgAUtyzg+1eg8rUky2IQqYx73U84VfpxiP9rdxFDLSnrWHazg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755484194; c=relaxed/simple;
	bh=c2LQYQAQdprGuFxZg1avSSXdjWQxYRtatCbLNntIgfM=;
	h=To:Subject:From:Message-Id:Date; b=cKgUZDMu6Mt/yl3sbWNfVgOhMiRVGa7nXfMZJHaHzNQNWMweSGF7EtC/ihl1en0mGMyk5CENnVGImHDOlNgeTnidWEJzEBY1tw4sx5z1jyZXPdfi4QPnL8njgFFicdSu+g5GAZs8OzBNmt0Bl3eRkEXw2f5/rl6OAdYRqIjkGhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhBbsP0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhBbsP0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BB9C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755484193;
	bh=c2LQYQAQdprGuFxZg1avSSXdjWQxYRtatCbLNntIgfM=;
	h=To:Subject:From:Date:From;
	b=UhBbsP0GYMWhzY2xcudHGtCXSUJJgAzb8w7F3oKItKnrdS1HPtqttkB36FcdqqayZ
	 f96CMNXzQhPgTO/Y0V0pgV4RuynwFefjvaxra5UeARSSMyUdh5xYG37CuQmMGnxfv4
	 mzRbkhVS8Rf8aNrAGseJZwYQbZ/wDB9YQKcE7Y6+LmWCz7S+mJFdtknu/o0t1acpLg
	 j0NARpQ4+pQU7rQWMS9odAlWylqsHibBt+7DSVKZzP+xMM+QIoxs3/63fzEhiXjjI2
	 gOdswFZVUogUauKkmSUGca4gqSqR6HMw5BQ6i+QmVqIkB2kN/xlQxZz5RpveLYJKaZ
	 DEZW9Uhetyaaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B12CA0EDC
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175548419359.10172.15178283121798914148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5022d7e5909c3baca950c7d551092bc3ccc02c73990ee703919638c71088c4
Date: Mon, 18 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755484193
