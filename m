Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1982C2D7DE4
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764875574; cv=none; b=PLLlTZXzVMqg9lfin5pjSudS+aMQFhDm6i8hNLczutPZv/5irKYqMqhpwnjG9f3XJMh9OwhlGGKGFnqO+9Aj6j+P6cJSO9xpPTWr6X2auJ1igQrs3I6NEHKAIkxyFHSYdp88joeljQf8kYHSk8UuUHXDVTQoV+zhneFa1cC/B+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764875574; c=relaxed/simple;
	bh=VzdfbrdTw0jCmgj3th4Hw53q5+cbuhpVwRsfGr1e9pA=;
	h=To:Subject:From:Message-Id:Date; b=sSvT1y+jgv/8UcZ6UuTVz/W2glmDXKl5VvgCu3MbGQGDa+qF56d1NfbA2U9aeeU+NladfJIX3snHbc+TR4UHJzt1V1kODYd0z8a0vf1QNnyDiNyspWxzOhuBXvAagaT1wpk74w3OBDOscGNNNV5sHx7uiXp5H5w5qTn9+qVWZhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThpFgrRs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThpFgrRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CD4C116B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764875573;
	bh=VzdfbrdTw0jCmgj3th4Hw53q5+cbuhpVwRsfGr1e9pA=;
	h=To:Subject:From:Date:From;
	b=ThpFgrRsXlx0/gwG+HFA77sShQHsKtpARjItVIMGtr7EaOE7lanci4gW/3Fwwrf3A
	 +7BiXnoSuHR36Fw2p9IwFNfifP6C4SZRje9zqDoH0ECnl7RuUKZ2/1upFhgRT/MGyR
	 b3cX40EcRT8cG78AVKSbJVD+ss+VzfJzKH2EV7VvIWXLWuaKP0lvBbV3tnSNsPB0CX
	 KlNeBb22XV3FAe5c5KNxN4aPcBJTLP/knf4+ybioOvOopUK1dqyYxARpJTrnMVskQJ
	 AvM0D70T3VcyAUQ4SkC+pPvrTYg7rpC1170hUfGNfkSBS7hBSNGEK/bAh4h/09A1i9
	 +fsbULj8FTsCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9289CD29FB2
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487557359.23051.17456637770686512223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3abf27c5209974e2013985d76be0ce0e620c78aaa5d808194636fff64c4d9e6b
Date: Thu, 04 Dec 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764875573
