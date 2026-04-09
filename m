Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B31B38836A
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775737594; cv=none; b=fIOCCG/EznOe9zNi/2+QK6PCVauT/tPUn3MJJkKSgPFqukGu3iEctvMZiSUyElKocNvLw1XQTB9ytmR4ZyTGwsB+V8d96p8Ui1o9mrHe4kVHfaafxMpT3hc8YtUZQdoS3UZoDcRJmathwy+zVTwtLJDZ90nhOHT5bfzS9q0UMqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775737594; c=relaxed/simple;
	bh=gD6FkOS9160F0kAAnY6aZf+uFWMrpogr9vnQdSahrbU=;
	h=To:Subject:From:Message-Id:Date; b=VjFzzBPARZli85UaHQBY/LoLKyIycCljZXOlkgdOQQ2PrR9eSp8butwFZsn0fjs57Hj+X4+pFERJj0luT0Egd/B9CoX4hD/PB7q/1Ah4XerJeU5jGH5hDLdwrSZGqQtXK9dEteNtWS1THrjiOpLHypI98YC4gJZjrILfujt+uaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQ7WF8Ao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQ7WF8Ao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09DBBC19424
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775737594;
	bh=gD6FkOS9160F0kAAnY6aZf+uFWMrpogr9vnQdSahrbU=;
	h=To:Subject:From:Date:From;
	b=SQ7WF8AoWV9hhv7Ccqpc6uLiEhieoLX+Dp3iL208A7xd2ETZN7HvwkZEfkViZlptn
	 SFenEt6pcVHL+nj9bMSD1m0+ZGQyAmiGGF7CzUXrV4CP3jpkNWUzaSxOIiCRLO5PhH
	 Qh8sfZsC4UDF91brCTka1NPf1/gRt/mImlQ3LpPRqcO92EUCUCZTV7F732QK0/4H9A
	 dDCnCo6j3GlLGIfpAZXkzwIRrEI0bgXZ8ox2GNDcOjj14SiZwXZPFS4sP+LngkILll
	 SKKrEKtStwalfsJeVXUYEMPiYyQm/51qp63urSXOa9HRbEX5xQyUPybi//AZQsELRc
	 alquwTCLf+SlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD87EA3C55
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573759376.31758.2156319510150114736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06020daa30f571f28dec597640bc39fa9ef99d4a7f1797bb07773710fe7a1738
Date: Thu, 09 Apr 2026 12:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775737593
