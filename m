Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215C1221F38
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753697394; cv=none; b=QQXrueMFBm6JM6zFuO7UImraHXeGVuuo8DAeIuzm63C9/oFyrFCydxPbVIJMZPMKNZ9w8kQ8x7XQP9B2cgcbWpgpFUCjioyyQ/WUqfaS+a3HXk+42Y+zorq2XoAa/EonBCHe1FFNO3XQYFvDNDJSiO8EVE/a259OPchBjIL94/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753697394; c=relaxed/simple;
	bh=0vMFvgrlGUNsEjZHIMmtXB/cQd+2mTPRPxU9LWcAiGM=;
	h=To:Subject:From:Message-Id:Date; b=PxJB5wy8YzrxkD36YAeHeAgcClzd2XiAxgji2Jv0l0BkVMvznJKDhSbqvermdaIO+wgJvyK+J92eeCBCirE4eeqMGyD3jiKHFpPh0acWqg0c76tC4yHk6G2FbXNn16CZy7FxU4enzToJ6kc1PmekjdZMxS8TrdZvgzbjHzbpiiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsgUsiu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsgUsiu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23E7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753697393;
	bh=0vMFvgrlGUNsEjZHIMmtXB/cQd+2mTPRPxU9LWcAiGM=;
	h=To:Subject:From:Date:From;
	b=rsgUsiu0iCwkVv0gnnC4HHrI8Ao2nPVZj/H6ORhuD/W5CvWR4IuV9nNkjZ08Kh8gr
	 wTXmRgc/KoD+eLPRAMtlvDYc/1LbcF0ixai8CZP4JOL8PMtrRs7J/ta5jZZvVk+Hv6
	 Yr6pG7myPvv1QMNpxNxopfRwwlDsj9Rqy6Y+K6+nPYtWhw99h5+5zh7xIZZY+YPfVX
	 bTqqZ2g8zkWsu5aaobHG8JPB0kz/nUuWzUNQ0/LBTSTZW6kgzilmyYlzrb24CyWnrf
	 PASCZbG0f7r1L5VoFlnZKHC4uzw0deA+vwZxLzfYIb1EKMcC9cY0Y9qPbsknxaL3gy
	 qWWOMXsrLoT5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB63C87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369739357.942.5572955699073033594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 829509293bbfc790ec8fe8884b48cc819c80acdf5c50278dbc0f9704a80ece6d
Date: Mon, 28 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753697393
