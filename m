Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148BC3597B
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782071794; cv=none; b=Zc0Wft6akYD2pqPJ67773vsuuhGvOBP1BS2V3Cvjdn/ylRRURTwfMOLAcfJ7Z0pxApugo1kDpDlBMu9oSfQKAM535yDwdKRayyqcr8f/I2Wr5oWEmsAIH14Yy/P5HFAtEKEDKvoWZNTONjlUrgZErylMhj38cvxIrfCqTbO1gKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782071794; c=relaxed/simple;
	bh=ZtkGvabh5c9tunuH386C1bhNSkXY4i3oqrFFQ/n3Az4=;
	h=To:Subject:From:Message-Id:Date; b=Ja84illFih09dVS7Lc7KLExwMIPXKlL6Lqz75FSZjs/otqKH1X2hPghrFnYhwGj8Hz79oxgssFx86HrrgxqaYc4rDkIkQiGHOe2+bDcLatHadjRY1yS5/PlsY2bGd5wwbAiFqjZ5YGxeNU44We/kMJiyhvHMsm0dBkaKPKOKZM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QG/VJIZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QG/VJIZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D566AC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782071793;
	bh=ZtkGvabh5c9tunuH386C1bhNSkXY4i3oqrFFQ/n3Az4=;
	h=To:Subject:From:Date:From;
	b=QG/VJIZZ2uCA8w1xQdUW846N6ekB1PIc/sntL1ESxm1Pfj0nBhyx0zdNDluUipMgE
	 gIJuU4Ri47SHpxlT2Ublj43ePNWa2QCLHqMuInan1C2GgG8HE5aevd3dk4DhP+Kl99
	 n7w7+vYveNqtDbIEPMOpp3xkIdaloEMb6eu9XMKphobQ1BZNjxh9rwunuNGroAqW8Z
	 5vzKJ7yAE3Vl6mmY9ZK4kqpVeGlc8RTr+Rl22+w65olJc6D8i7m32u8VdCc8OmyTL7
	 iX4wL/yXD1+23Jqwox//ETB4w/h0zSYq6kwslmlicurLyOWSQEV6zowH2Yy+XzE//6
	 ix+mS/c7pyNbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B557ACD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178207179370.10124.17391862394839094385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d75ab208fe337349cc6cf956941092614e0e303e0a3fb1e5a22bd793dbea12
Date: Sun, 21 Jun 2026 19:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782071793
