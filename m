Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9C3274B53
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780332274; cv=none; b=dsUE7dV8ve1ZfawCo2cZCAdPtc2I36NmhERhzodNw99ye9s3txIUZGuvDkEXI0ZO6dSxQK9Vs5bBKFj0ltLyF6FdAbRghykJ8We7t5PWzxr8PhUkNXyzxvioC4EGk26W1vmXWB/hmW0DHrsv54xoe3Hxro1IJXic1F13R8Sb0ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780332274; c=relaxed/simple;
	bh=S6hLW0e68He825RYRBqi6PEwTjIkvlB6W0+nxxNXP2s=;
	h=To:Subject:From:Message-Id:Date; b=nxkOJ24vaJ1sKEOfZcpCgdQf8Iah2jHamjMi2q5th44pGSSaHjypfHFMCKXhaRNVN9jhiRG6CNjbaIvMekQQqvG4EJtqrRJPVFvSKMhnOl4ztePRB2Ta3wu6uZCtZyAb06OdtuSsNyOOIgagxdQGZHJMzrhdlSqRfdAVOIvQ2YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlQoEn7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlQoEn7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B26C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780332273;
	bh=S6hLW0e68He825RYRBqi6PEwTjIkvlB6W0+nxxNXP2s=;
	h=To:Subject:From:Date:From;
	b=dlQoEn7ZBeLkrEAA1xPVyppbJ8WdXISSWwhRQqsUUIcAa6lfnWhMMxUb9hVEWzI4W
	 QjwFD7GVheye4nY9i+GBmZvMyi8BWc7qvzyeXflh+7C8NcjTkLyBGrCJzPW9DC+bWO
	 bR3NQi4lz9n9WJiKDrZEN3BeE3Ll0Us1WT4uNtdNkjdtGZBKzHh8H/shY0P8owM4yT
	 OYt9S7Teg+NnOr0kzgcr6Ugpmu3kxbbS+3cQWSP+NHCM7CyGZyFzpjnts65Zuyufp0
	 d0QugcyuBFH0LgYVBWWsxVNqJA7uyZcIUBSXNfC0s/KwH3lf5LR6WjL015C6eVr/7r
	 5RXZOseGj5W/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A985DCD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178033227368.25611.3824369284763094539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9508ed60a490bac151b76e970de0938eda49bbfdca79597d61be47b67699c4e
Date: Mon, 01 Jun 2026 16:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780332273
