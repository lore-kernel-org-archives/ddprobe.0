Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECE2101C8
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727625954; cv=none; b=R2KRFn8bO+6cd3orQC+H9Kq08sYraYDR4EzX3JKK2CWGoSt6/Qbu+ikiy+i4bC8xIKkOaqYXV1nJITl0tX+c4TxIbxwU+G50LidzGnO4rg3JfXHwJAM3JjyDj43h2P3A/gMTdsZTplEzuRvDY1IPCz1ZzCPJmTO51OyX688bwZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727625954; c=relaxed/simple;
	bh=A35uRiFnJz+j7X6U3en2n33e+emsMAAbGaJbgFBGjmw=;
	h=To:Subject:From:Message-Id:Date; b=a94XI27RThbV9Paxxk1zrFWx6eunBWxBK0GAUJvTSSpRhFyMykdAvCZsBX6nMmbOpRctHtc/Tpp/r6CTU1CQ0Bu4UC5AyTruYIY6db5FpALlhbFwNWLO6Ssi/t0yvIYzWz5G1M6GnN8dBSa8GYDFzK7pVJeGmtGI6etYM18ZTTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTYzD/qk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTYzD/qk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D14C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727625953;
	bh=A35uRiFnJz+j7X6U3en2n33e+emsMAAbGaJbgFBGjmw=;
	h=To:Subject:From:Date:From;
	b=fTYzD/qkF9vw/DaV5h8JkphiMMvCAWS7tpTAdeD47jjFOgaHdxz7DRBJkxBJOShsI
	 38VeX2wX58QPyk4WZD7kR9oCFNHuwMIlJAMZavss0WiaFOr4Y3JdCP5iwZQlWTzWrh
	 5RGo/23Hmbujs0TO5a5eUfLKIQCn7ZoyMqSckEJ+OBTiG1baq9O6uQS0Cea+wAKsPU
	 BzFvDeAgP0QaknfA5f4ktAkKBSAIkdzsW888LEb7DrM3LiYIakFp7ZiMkh+p7efxBT
	 yvz8buesynkKoW0eLrIlGrkZ+AqdwenfXujVDysVCi+3/ZfOSXfBJjHcQdOTCHgaVL
	 Xzrh6KR1d0Ggw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9184DCF6498
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172762595358.12212.14725010084656714459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c918c107329487b1a4531d6a87bcf08bb48eb8330ce75f71fe668b8cb4f8c7f6
Date: Sun, 29 Sep 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727625953
