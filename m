Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBFF3E0C56
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779281434; cv=none; b=pGW7cMVel1plpB4r+uR0nnLyS25ZoSJh7OSQ5xyVQ3L8AYawoP3xGb26FHOWDsXOGAByWY3C3JOliPsDTnyJiUz2Fi/7piQru1ERJTd743Peb+wTIX2r9k/1tGQvJ9LgxttGn+uBmxME5Gk7/KjCcs/aKThaFQAABNS2ONzUqIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779281434; c=relaxed/simple;
	bh=GoJUHmZVjAQz2bm3PZVf2dPbCdsZBOaVc1A5HRIMTk0=;
	h=To:Subject:From:Message-Id:Date; b=Yw8M/kKd6FCq1I4XDlvoZfoHpLiTtzdPP34a8Gz/jCe7Yv68mr50v80JcZIlKUDNNoWUaAQ812Sa+wYTw4qPUl5HYYwW08WeYAlu+9ZKCH9q0lkxrc0rZbGWiNxx0iCuuo2NclM4APOnb1I5kpHxE7+o1ie/NY+ctZbcHHL1nK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8ozLem1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8ozLem1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8450C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779281433;
	bh=GoJUHmZVjAQz2bm3PZVf2dPbCdsZBOaVc1A5HRIMTk0=;
	h=To:Subject:From:Date:From;
	b=j8ozLem1SqIlLrPVmQNyM19jdU5HxwG9ZtMtTFrq6Ok6Gw6hfJqc4qB68A3Vu93NN
	 QG+cWCpIJ54Rf8JyeUNO4UTbczowFKah6LAvBPdnBaI8wsjOk8lGe8wh+/lbgLmz4j
	 DYJZNwrICtkOwp3Hqw2JMNjgvYwRaOTthQjRgSX1N4Rgt4IqGTD2B7E61zWXWnQHmR
	 nrR62Fu6/r9v9XNGWu57ZHwcOKMTtKpt/PIZ9KVRtnem9xkL8R8GqY3dIJITwWeUBt
	 PNEQwWxnaeb/wWJDZlBEiJbR0ry+Xol77gkuexA0iVXScJD3eQwLyrwievJ7R1JcaT
	 q1AvWmHrrOnDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6B2CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928143369.9571.12475850055848058651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21d7a6686c83ec7f64ac5447a5604941f1d4a9e3f96062f4277962fe24f0283d
Date: Wed, 20 May 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779281433
