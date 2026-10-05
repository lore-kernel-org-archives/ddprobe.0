Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6119C4BA9FA
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791219034; cv=none; b=T0QOLiHCVC06B/zG8rTWTtrIvCHylHbZ5m2gJKF12uqOg/CNmDc+KqUe7ZRn79XLPmp3EA/tOo5kD9DOLRpXYCSYyt5mW2ohmXbfaa+9MQCnYtx49saHH33VzpF/o39YDZelEifBBcUQ6+Eb7A4HI8AWh/p5Tr4T+CWeRt0BZOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791219034; c=relaxed/simple;
	bh=PCMaB9gCWgrlk0qGF7LuoCLlHqdjYUbllywsCzv60rQ=;
	h=To:Subject:From:Message-Id:Date; b=gockThZoYltLdE3TXDau6jcNJufiX29sX0zoIEJei8X2wgvQvD6B24Dlx1/tg2eZ0/MgDIeK3RdbyXP337WOgQORqEFTMDeFcnyuSRAgXcI+UcOK/2qBgpqgJ83CulOxy6tOXU1P/x6PXviWRCzIeFQlY0lysBcbDaYZk7c+i1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2emTiB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2emTiB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3057C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791219033;
	bh=PCMaB9gCWgrlk0qGF7LuoCLlHqdjYUbllywsCzv60rQ=;
	h=To:Subject:From:Date:From;
	b=b2emTiB2L/wzISZS2IQ0wNa8B5QrfjK7EwoeZ91U2WFK9infL/8OOZViHPDl1DA1T
	 5S8kOOr1D+2d6YdG6sHord22oGACPWssFEKUtnkymYmYXo/EnMaJCbNVG5U/XiKVZq
	 56v7daHgx6Ke6PcDIxiZGUJ3xm03XZ5bqR2i04xKi2R8AYFumst37i1BnSCyA3Zre8
	 kbhgzpDJunZFBKtP3ixNt/qTlBtHlr2yju5exDl4HT4YCA2bGrWQDkqygpfH+Q7F95
	 N9MbU5bT7fj4C77rFhLbrQCK18A948XJXewXVEF2PBEJQyxxuC7p6KXxhMdsZHAJQi
	 PHs4Bzf57dkgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5ADCA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121903370.19602.1424331293639151804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c4aae7ca454e51f97ef7b954a4c26ef4c09347947b90b5577a1e4553141855
Date: Mon, 05 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791219033
