Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68CAC15DBA3
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 11:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717758443; cv=none; b=ceQLpZl4bJ8cSQmrwjh4oRE/C91+O/ymZtJ3FUwAkK4fTRP9LBTdpA69miEPPByEGMVG+7Tb6vQ7AjKgIsZdJGYfRxhYJsKMIikpBPEQeGxXJq1vaLF7Yga7AXDOcrrEADMhqMzgBVKe7Sn7L4YSE1Leqw+cVfWLKZuivIpCPwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717758443; c=relaxed/simple;
	bh=wEw/jUAfxrCqiad6aRKp3yG6KGyVd/I697bzGA47Y3M=;
	h=To:Subject:From:Message-Id:Date; b=kl7BnLp9+0BK6e0wExrlEOt8Q0F1IIivgKbbB/vuh5BJJO0CeOlhBz2RClzXK+sE75Kx8dq9MltVv1HL+/ylDYTw+EeLdkO8gQfHeC10jWWvfO0qlU/W/7jX6gbIeaR0jxTlWtmLDKYjlxKfZLbrUdltYblZc10o7qugawMQj1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERkQHRVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERkQHRVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3265C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 11:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717758443;
	bh=wEw/jUAfxrCqiad6aRKp3yG6KGyVd/I697bzGA47Y3M=;
	h=To:Subject:From:Date:From;
	b=ERkQHRVwj6MAneqQ3YXcRnXDcYnO3BT47KjEoyRT3jEB3ExT2QHxQJgldOwPTh9BY
	 7AEUIGcz+9p1Vo7isnX0lW2jY+tLPdnQbNMo07DLy+Qh0tVrS8fqxz9ygEsB35Ym14
	 aEn0PN1r2/N6264QIL5LSuydqR3ApBscrr1nRHWIh+5PaZFbElDVwNvI7glf0mSYQa
	 k4ZdfWbKXMQxQi50DXYnNGtQApxIIG3Iv0sPst6wdCrm9OSv74e/A95NXYy9pDZ1aG
	 +6mOWBrnuyzSlDEd1HKcmDkueuJA/PeIt1tHS3Dl3aIbJIs7CNds/AnOla2PLEHbBp
	 oXN1iujxAlEcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2FAAC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 11:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171775844283.10088.3682852199798061724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c11551422272bd2c83c38dfd23773405109756d50f4107e9ffdb1c61d1447d3
Date: Fri, 07 Jun 2024 11:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717758442
