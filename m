Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC82B481A5
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712209696; cv=none; b=qkHcnzBz5du738qX7BhJJgvTfsNDzokL+nhNXaKhlfpO+Jfch+Yoxp2gsO/zUa540Qc0alz687FFB5/AT1BXa7176+/YXKE/LRabKkUxIm8UVSzjTCMJsBbUqKnw+fd83Rnn+OxnWKJ5I6UnFkc+COpqmrhLQlHuta0T4nOX4WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712209696; c=relaxed/simple;
	bh=dmlzCzQDakwK/VfRxXBRmp6ftXGGs0bTUUjjFPfjcjk=;
	h=To:Subject:From:Message-Id:Date; b=tDUhNXe/sW5Do0bVsneXsNzAH1CMCEH51EhF4nvlDOgkS41yNNxDSx0OFoF2IpSE/4k4oj0hlAsa9Cc9Zs4zMdH75dSscydiIEa84exQgHN4ktGQOJhgCZ1zq9NFpqiXuCC7aZ4rzI6oM/U1fMEjRHK1z1Zg6wVQIZn0KMcg0Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYhX3rX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYhX3rX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A233C433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712209696;
	bh=dmlzCzQDakwK/VfRxXBRmp6ftXGGs0bTUUjjFPfjcjk=;
	h=To:Subject:From:Date:From;
	b=ZYhX3rX5oQswbV2J0gKkulQMV03fsmJ7SvSnc5C2sDcjVikWpKnjQs7J1zfrQqS6X
	 hfnUFlLAYN+1D2G8cYSk/97t0ep3u6gG/fBSeH+8SlXPjBGy5q8NrrMhnIXeeTf5v6
	 UIdRSdWR6Cd+WhLa7wLXUme2jpvm0sesi+7JmWbjPSrXwCM+/Oj8rPZQmDU+prhWo4
	 Eh9W1fP+WRNnGOBOheytqOHZgsB9F3LIEe3sxoNhzQkS4iRYTc95yMmJhUdAKhZdsd
	 /ZygIZSSmLL+W3BzYkFEKXS9CVqmTGTmajK4GO1ILj458um93a0YP2rEjDsnXKppzg
	 7FPpKBu7+CmSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 659B4CD1284
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171220969640.6644.12804360835781611377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0bd3e25d96b1208b032f957232f2b241a344f3e7d2650f45eac46b73e794b14
Date: Thu, 04 Apr 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712209696
