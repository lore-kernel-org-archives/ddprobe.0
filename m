Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660A7284B37
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786756834; cv=none; b=LnLtM38TnjcZ7/Oemzq5kgtfkeMAZmShIH6xt+vm1O3OuVBoOzWQqjgiH8CdqxQ7g7+Nb5LiX184xqIMy5vlYU/OIVnFvZVadPe4oGeZraJx5Wjb+KoB5/KBqd4klhGHjV3Grj4uph74A2ZB3W5643QGkxgrgq9VhfgSFow6oDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786756834; c=relaxed/simple;
	bh=nuMhABZjKUJlfBWpASadAIqrAaugIBBZZ0NLZSOOzgA=;
	h=To:Subject:From:Message-Id:Date; b=MVXjOFdd9eGLZl0hMjiM8ofKhZtghy7YUaTIvByYrDGduPbFUAInZe1dU8TD30o7DkDYqXn9CklwDr3qI4DJc20RHbn+gCgHgcxX5r5/VyrR/aZ/COCqFkI/BqsUV6PjOMRWAWi5G/i1zEOTqRSitMw2Fcrwt5Qq95gcr+LFy0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2zTDldj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2zTDldj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2990C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786756833;
	bh=nuMhABZjKUJlfBWpASadAIqrAaugIBBZZ0NLZSOOzgA=;
	h=To:Subject:From:Date:From;
	b=d2zTDldjMMZUvLAKe1vUsMdvXTnVaJzkGTv4CxRYc5d+GfNa4Dw0uFrhdpN7xCspl
	 V1jPO7qwBt9XQN9fGOGAWbL+/HExU2pRPR1Vuzxj/gJXPcGl12qbiTQax5Au/QCi6C
	 /2GJePC9ksNZUSJc4loqkMu/zus8T0twUWeayU98xzisANnQjwDJlyFUdj4bkaMUNj
	 xCLw4l1zJm3j/xRad57wIwgOji8SsANME1WKMOvA3S4aVzA+6cuH+PcoFaWNV9RqA5
	 vBlN1xdSVKhC0Aq0mAUQ7hfA3WJ3ymKfJ+1tVIycpH3S3ph4sv+8Rx4KckE1Nb8OmW
	 30gKsULsE8CpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B273AC5B572
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675683369.16161.13685737426025004929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48801c1da290c9d8139f2f04df5088ebdbc970b5f36c0184a9e8faea63df57b7
Date: Sat, 15 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786756833
