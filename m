Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDD81A6806
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788665434; cv=none; b=GcrXBCKbe96caeZRAVLnbIZH5CUYHBDHdX8pwJ+SzjzK5dpwCWPGINAtk9pMJTUsJf4BEYzcgP2qfA9NZDrkYKBDpGnB1CGuwiSW/nkSNQ9mNKPkPDjlaBdUsDN9Dq1gt6MCNLrcDfqt4Ed5vn8L8793F9ZWEQ15jR0FJBpGdeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788665434; c=relaxed/simple;
	bh=8+aiRZe7a87ibjHhNHTNxdgK+o3M6SU2bsAMdRDm5d0=;
	h=To:Subject:From:Message-Id:Date; b=dwopd8+pM5oQw8PLWl4sB0xlotsPkDbcOMz6RlQ2h6rXJzzgNhRlaJC6mbHK7n7iRfZrSMVmrgZ0FlGjn8NMQlmqTHSXpHYDqy1NfGwzdV+csWQkCGNI0xWiIiL6nYgK/hKZHJqU9441kcpHoywQe8xUP576t8MH3ObqvZTVqhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltxLapYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltxLapYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8B1C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788665433;
	bh=8+aiRZe7a87ibjHhNHTNxdgK+o3M6SU2bsAMdRDm5d0=;
	h=To:Subject:From:Date:From;
	b=ltxLapYWCc/OQyApUOiGaug+2p7mEQCTi1kZatVwPM1E6YsQwFGXCyaVpKLpxVyZ4
	 CgTk311iGe+UCOwEmjRBme1VSAHBSHTWkxjWWtpjPrwGC5p/e7cYz3wdaql2LUyCN7
	 LiZ5yHK7jd1P8hzeyMkq5clYv4d0pu2q49Rl4FGGlElhUWdIl/C/Uw74NyaiaSOBot
	 +VrZvkwMZ5FeUW0nivaM614mSJEEqm5nIl23HuEftqlkBH/oO/++bl4qvq2BaEzjXO
	 rkMSrKt6EgITwLP8BbY1FxIgGra5nbtQjG3nQQwKsIFT/4r9MqFSHfD3mw2Pkf9z6c
	 NjAVPil19o8Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D49C79F8B
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866543369.2960.6267856289922256747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dbfedc5f9b932a90fefb33a8bd51a834086aa2c9373ffba6ebe2cb23b700d4c
Date: Sun, 06 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788665433
