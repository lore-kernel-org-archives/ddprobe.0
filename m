Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5761A0BF1
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747420794; cv=none; b=INmCimWUBEV83aTPs/+wW0hLTcQQ4r+N2bzyQHn8ZiuV0JNObZRFsK5ljm2yaUffSO29GTSdZgwLRijLJ2AUwgwnojrmuTXPg5FtWyzbaQ9hRVJwLg4oYQUGFl1mrKiLlKQDnipk3aW0YpqQDyY5FEEG7XNJ0V0ZPmg27dL5mqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747420794; c=relaxed/simple;
	bh=hxHenl6danl+nIdpXzBFzDhsDlUJKzj32vuVdw+J8Y0=;
	h=To:Subject:From:Message-Id:Date; b=lmy868kw42m+5xdqLIvnZNCrxFPMi5iwnXebFSJzjqaKjRI0dK7na9+dbgjA9T0jsYlEFi9jMtX/kH4vlPyH+mDPwuei25r8ZREUg4pi4Ckc20mwdLKMF1SJ7aile6suBvMufqn46Kpej+eEhA7wodufMubXAlt9QNlod1vbIMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZaptNgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZaptNgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B68C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747420793;
	bh=hxHenl6danl+nIdpXzBFzDhsDlUJKzj32vuVdw+J8Y0=;
	h=To:Subject:From:Date:From;
	b=HZaptNgxHOM0Zf+jQJLhqVXWa/SXmyYmInHg5ZjF6WWHKaV6VHhFPOLcI+cEN6k9s
	 +5kKJjBHhJAh7DLE8tJ2Sn9sX2UnGqg97tHDyZnKjeNDvu0g6lXd2Z06EbyvZ5Bvyo
	 p69jqgFOp5Oj3holn6+XkCU6uh1doipLUQACkSVnbMTWs1SQjg1SxW2eBHPkQcL66d
	 V2jmWIf2tcbGwxC2dVhIcfuqAH/MsppWWbWnf1R8NrKHm3qLLW1QJokRRHc11wSulo
	 qtRyXxZCQ8dmFWElZNPFromIksCrHA4APCgcuppgH+KMZzrZBf6lo8pRAWoDtr2Jct
	 pF8H904xxdppw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91340C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742079358.8698.13680703183503181669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73ba87ad6927a5869c665c22f5d4548ef1700da088891cc9c21dd4b130fb15c
Date: Fri, 16 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747420793
