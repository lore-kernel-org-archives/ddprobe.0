Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6037E2931F8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790484634; cv=none; b=kTIQIV/jwc6Gtr/BMpXtHmwRepY18vwPJOVbUDbUj3Iar0qYHQPb08rgph2jWaQkxqWfg9Yxgu7j366uCRFx3LvnI8wy8d32mkSjVvf1/DmUPEeS3UqFX5q2cEWyCyLgwBEbX+vzbfG/5arAarCnDFXpDTJ4eckq2RcIme/5vwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790484634; c=relaxed/simple;
	bh=vjGlh5NV7tPLGK3G8yOVPC5xH9kNO2f3oEFrIMHKIW0=;
	h=To:Subject:From:Message-Id:Date; b=mGeL1XIwYg+s+X+cWiyuJVKFO4IuTkqpy7IyBl1usFl2SQmzJCiBlOOByx+zFBGxoUNVqGLEdD6/7L5ThmQkZKCiKSXTmm3os7IJx0bWc47gVDb3SUECSLQZq7rT9HuPt6XyIVJTxoO7CCZgbZ5g8cDFHEWXeMLw1yDJicMCvy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nw/AFw93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nw/AFw93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E90C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790484633;
	bh=vjGlh5NV7tPLGK3G8yOVPC5xH9kNO2f3oEFrIMHKIW0=;
	h=To:Subject:From:Date:From;
	b=Nw/AFw93S64u/s3/sdqc/Lkagju9uZRoPOqjjX+gGsD8A6TiNJ4/hSaH5IUV0a7cL
	 XYpDurPUZXK9JKpls5pK1EYx9PLRn42VTVr6NCyuXjMTQN3FwPOokk5xmBaCfhtj1a
	 7l/151f2TimK4n18VEur6s3+Xg7DM/CSAE95niAMcOtwL280M+O1j1kSHjGN5cjf3R
	 iFZBPeBE4jBqDFsrAhH1TM7cvonh7PXNExZuWKjYPiQHLO+303ZZX+EAdv9pEoPOdY
	 C6CetHKn27Dzm0t8qeuXuVP7SQYRxpEB5bBwx6Bwd8y3Cxhg/hoMgYWLYi+I3Q5DT4
	 sgiU/HJY/mgYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF74CC9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179048463369.32496.5684053063372382066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70f08879e1057e3a35b14dd32f83e2bb189683bb95615370ff5047c2c233d41
Date: Sun, 27 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790484633
