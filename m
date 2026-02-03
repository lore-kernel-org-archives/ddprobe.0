Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB7719D092
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770107634; cv=none; b=AjpFfkkqC9Xq+UQqWMFIlj4D6kwdsjydqH9pXgo9nsdITtlLv7W+XvJjf2PNh5Ew5FXvMwHuhf1DUO7/SIwL74vi7Z0M+r/zobPz1gxD87JcCj6xCPjjqM9BEIETQfVnf3onX2sjyK2CNNZ1RRbqaasTyGyXqOGixbRjK8tLceI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770107634; c=relaxed/simple;
	bh=iMsojz9hLm5WVf01rVBnaQI7CGSib/NeA96I9/xxZx0=;
	h=To:Subject:From:Message-Id:Date; b=ZTw4e9lmfZ50cG7P7lwkNFpw77RPwmA9gPP7t+4Cds0inQHdsc0rnxdO+gOtvUJcHGYqQ+ui0ZyLHHMxg9axedUNtNVV9CIbTIMK4KHie1A3Chy3fcd4bk3Y5wVKTdFcWmosKXtYIjdE2m0URVfq/CvfQf03omnUYyyWNcPePg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6AT8g0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6AT8g0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD527C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770107633;
	bh=iMsojz9hLm5WVf01rVBnaQI7CGSib/NeA96I9/xxZx0=;
	h=To:Subject:From:Date:From;
	b=g6AT8g0MbO1uCu+rtwd3njyWAHeWqXcVP7RLkg1Lwb68XBSIR31ebAJGGUP1jgp8c
	 ljVeoDp3ZPqSaKTW0vOFntBfu3kgpwj7X3Y7GvufhZGo3rXwUra8mKzn7a4/2HI8ie
	 ugTeSNfXFFpm5ndp9DLV8CcmqI7Pv1cxzf0FwzL32WfL7Nqd2AIYiJgjUaSJmx5XlB
	 BblHz9pzSYMzTev3a/0724XiKB3lR+jkTcTm/BjA1K16iZ8iOGXWRkQh5BnEqu1diN
	 dt9kB809F/mPM/WkDiWszLiYascCUrkWzo/YlNQte+BlmQ7cCA0sqw1UBKTegycpXq
	 ZaU7T+MXVvrcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924E4E8305F
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177010763358.15724.10620701829112728174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16fdf6a3d586fb1204fb3749cc7f07cbeb38872a16d87e170a9ffc1a8d1a3b9
Date: Tue, 03 Feb 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770107633
