Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177A035E1DB
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781253394; cv=none; b=qlDP7Eot2ho7/jtK2QZjz6URKHNUpT8RaebbxaicJXRkwkjkb1R3do1/lmu2Wj4R3J//BhLsy5bFT6qLg5VB+ER4wxU4lpTxFWmr6RWPoCuEumazi6kBUQMPjIuBnbCODumlCRyvfKDHQBbCbQILC2CBtpURrNxOb1b/Vm1K45s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781253394; c=relaxed/simple;
	bh=MOo6mqrw3304VoYdAYn6OiHM02TVunUG7mj8lfjhQr4=;
	h=To:Subject:From:Message-Id:Date; b=HsFhmKP8Ys9UG4CADHm4QUYz+ASp7fkPJWmvVB4NIAgB5BLmKd4qmYrvew0iJK5j8UQqZfupxJijza0juv23jeSk5rlOsTaCQVSzeE2QXP9NskuF7TozEHXQLmgBR/kAP2A1Q/FtFIprDrAAuHsAthMxxt6kLpSQ1i+bdy2o7ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qN6Dooai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qN6Dooai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24EBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781253393;
	bh=MOo6mqrw3304VoYdAYn6OiHM02TVunUG7mj8lfjhQr4=;
	h=To:Subject:From:Date:From;
	b=qN6DooaiHb0IMiXFbVSAvXPxdumNahYZRXtLsJIGOH+DwD2sjIhatLpjQBy20jgHG
	 iBvq+04y4ngsXTj9EPA4ejwG62OAmkpFNcq/bgfk8F4cDmJPmQV7V0I6ZmKiUL+GLz
	 ySJyBmUHc38K/W/vtquKQwE4MFZxnMSCmZMWsJwfLvFMTSGq9lejV8kZodBGe1oPiA
	 IwGuyJiX6VgUROcF7yOSOFrkFJvfRtOybjFfGBjOF7Wh2jJlBxFcBKpB4JIELKqHhJ
	 ZAuJRiud2c/xgXc96oToabJa8AxHkX9QnU4ZnH8ooVsd2xbJEWKMGaVxDAzhZS3ne4
	 Jmva2ch8S+xrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64C6CD4F2C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125339370.29379.14315809265151143108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b551a978c574e21fed38f7d91998d20894627dbd17131c0332258365cb3a8cb8
Date: Fri, 12 Jun 2026 08:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781253393
