Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396E5647
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748548197; cv=none; b=nqgNFV6Q88gNwbIHjHxymp7pkJ3Y8wttHV5yCA4WCKs1lFT0/PntZOH0kxPp3GvIttNaQiR5B8on9K9UFGP90eQCHXuylCn+AWLfxjckmMfiZxjdMF6qYTPkeTWTHD5eFivnAYi61pU/p5wdlQUEOtwCw8Fo1ZHi2op3qng70EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748548197; c=relaxed/simple;
	bh=Z8q0za+6JChRwDUbO0N2uioPwvKTeSC1dcQuF0Rsxgw=;
	h=To:Subject:From:Message-Id:Date; b=ku7H7T4itPb3cF7hAgF0FqsOQyBKVeFcKRKcUpWYtzHK06LOCIvVddjUQ6abbfgeokbp9J616SjaGQUybaefdfCeTtKrroaJdgbb6YK4KpJSANRG30E5sFpGFGi0NFVRZIahYFxdu+peZuc2NZT8TDrod6wfbWYkgAMF2o7Hqp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLeDI1S0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLeDI1S0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4474C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748548193;
	bh=Z8q0za+6JChRwDUbO0N2uioPwvKTeSC1dcQuF0Rsxgw=;
	h=To:Subject:From:Date:From;
	b=kLeDI1S0tf3jOJyCSnClezvKic7HeNRNo+ssV+aStytnb4Zyg112T+lUNKhFgauI/
	 sdG1qs4xtDAK2KzZTirkgYhehHBXE3IDcNEmt4jtngFZyaRJ1Q13HAziLAgB2IHGrB
	 cxTyuZxa/56e4G21tSbRvNN/umt06V5ZG6ZVr/sGZsTw+QyILka1kI6EB9tX4SgyTG
	 blrNYWb7ZGs4kHkCQhUtw0ByyxXejqAUCJa7Ehu2YrHBowP3yVd/ECYEjyaHHJc8eP
	 tolywz6dJYj5DJPe2pXIAsRwFWdlxNA5lvS4rxhgscnzbaX2rYud5p+97kE0UXUp+w
	 9nzog6eDEgy0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945BAC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854819357.26602.11545472685052980015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63881679039f338168938932299ba6708650318e95c0fc218805b93ec5b116a6
Date: Thu, 29 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748548193
