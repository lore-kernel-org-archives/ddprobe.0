Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE473F0777
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789310434; cv=none; b=qPNtlw5H/9jmJX4V4AQhuJXNNQzhxgutZLxSQRUbCFcuuUy8ZLKuBr7FkYFHThwv0/AxkoF9tbIdofHHnsWxeGK1UbQMOgLQys1oGagUlVv4rZfOtqXVVMqu61u0//hpNLMpfhddjL1173SeF+V3DR3Tna3sCxIrDAcdV3rQrFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789310434; c=relaxed/simple;
	bh=s2l3CnfMLr+jcxeZ8L8r/pwkL62OT7UC9i9LpZiQIik=;
	h=To:Subject:From:Message-Id:Date; b=p8woaNToKbwUWtMLke9P89OHpt+4/gUUnV9jzLv+4DumLKCdIBRiosTylMcRNWb9Q776u+WNmaEKsZNsKrw4basmKC+gqnBWPvKvtI4FjXMXluZ4ktZW/QGHgjJ68rQQE/YaNz9/DNzhoKkAJ5MT5ib9vWQfA/mf0ciHcgqq+JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAuNOxrf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAuNOxrf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B39C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789310433;
	bh=s2l3CnfMLr+jcxeZ8L8r/pwkL62OT7UC9i9LpZiQIik=;
	h=To:Subject:From:Date:From;
	b=EAuNOxrfoFjMfvewCM9+qgns8MxqT20ikgUF5za4gCesr21kw6tP/Cqar9kygK4gO
	 6gCq7Rs7MhgE7U/nAsfg0iwEVda2wRImWok2Jx6GTzxRCfFZ/PtK75k9MzS3QHSopT
	 x59W3WsEoE0aAidJyMaBPJwnOl89s3V0TYFpwXG4nNBpBVMmNBzsSP5rt1GQtJo7yD
	 8Kh+M5u38r3B6NDaD7WcqHN1m42ObMnwGrKNghZDxyFngd6xx+rGPpko3+SQryEVAV
	 NL4aITmWXpcPI3t/vrVDh2EoZn1nv1Larc24EyqyCr97188mf6CD7vvJRYSakHvitG
	 PSCaxMG7ddCow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B397FC88E65
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178931043369.20145.3056406632845669349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15836ef97ae7f0f2d6d2c5a57c74956d36e6825e406c0cac311e49c7bdb816f
Date: Sun, 13 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789310433
