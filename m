Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DD03ACA5E
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771961093; cv=none; b=dA29DKzMpGs/2eCkTfQGIyQRnGIf4DFUA/3nvVf4jNzPFXB/MiSOdR5rl2LO5Ioef3WTBkHvWW9AR/rNpMt2Z5K9P/cCrs0RStsonOsKvEWkuuQV5E9/Ygt3EgKoQYs0S1+A5EPDRTjyZUB2xtTtg1/hBjRG4wOrOCpeV8Qx8qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771961093; c=relaxed/simple;
	bh=IKdwnt1+L5Evfe8+rI+d2NpBQP3+W5v8cRZw478auaQ=;
	h=To:Subject:From:Message-Id:Date; b=bMp7l6vrt3Ym66k+T595KA1OKilUCQI+QH0Kfl42PZRxrNHh4SJaNNhpmYYP3oVATB3yR1ehOGjeGvcGm1E8tNlO8z4WaD6HlUYdh4c6Z5ITopVRlYTDbVDE+ZnxlF9g60ZXTtmORfRwXVNOFOtVSx4/YnWDfD7F8W3AlY/S9hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiT9/G/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiT9/G/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C1AC19422
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771961093;
	bh=IKdwnt1+L5Evfe8+rI+d2NpBQP3+W5v8cRZw478auaQ=;
	h=To:Subject:From:Date:From;
	b=QiT9/G/YG4Mb+6ARSUyrj4/4m1HYcAaDycWVGJZ07nLaPz/CV5PBS2Qzx0Re+204P
	 CiaLyeB27H9MFtKF+lGYk5mMpyy2b+WXEzUx3gy/4XADuznRk89d8lfTnUfZ+vBTyO
	 fXy2fYHQVskRA4et8G7FLtyZKaKBR18+Oo/jx4Pw1txOiYchSbKfU58DhucmNAqNcm
	 RaPPktFFGOAi45PJKhcaBh+viQvJwLyszVkg+N4oO565y3Oi/HwBZC2Iqh6G3uuHUm
	 PEz0dtcIaVdzWApk7vHFLJgePEPIfRBYZTt+lhJMtjZhyHYFVuETGqO197E3PjC9TM
	 G273ezwQ1Or5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FA0F4BB80
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177196109360.8835.10254910510227478937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5153b4e34a122e5862fb08c1b53c6a2c8c0d776cc0f26e312f777545df50c8b
Date: Tue, 24 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771961093
