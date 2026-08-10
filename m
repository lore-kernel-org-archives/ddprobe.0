Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BE242883D
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786390234; cv=none; b=F4JZBD1yqGreH4B90gH1U0e3kBOoFkYnnJM3ugFXjEOcLmlNBRo4UV5HhWDJBNqmDN+Is9I+/DFD9NcyixaHWzi+Rc1md5yllTpinDDmllQSpHypu3Ynrg/2ZZmLBEjpARqB295FVAwWlYcQpwKruxp2+FwhGanncTxmHuKwEjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786390234; c=relaxed/simple;
	bh=1OouKOqs8Eb0T7FYrXX8S3DzLfIp1UuFhFU0KMexCn8=;
	h=To:Subject:From:Message-Id:Date; b=ZPcHBQNyahJvIQmdsouBOG8RJt5/dIHaDYovbTAQ2EynsN6YGbA1I1HpPEu1y+hnZLUjPW51qm2/ng1/BaoR+U7e8elA6WVfSTrfGjfXpDc4KKEtXQ4yUW+aT7xUHYqebffqDX68RqT3zsAHpYYJhtTjiRyLBJdUd00MtCfocpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIkStblX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIkStblX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36B1C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786390233;
	bh=1OouKOqs8Eb0T7FYrXX8S3DzLfIp1UuFhFU0KMexCn8=;
	h=To:Subject:From:Date:From;
	b=gIkStblXK/tbWtJYcwco05Y8hEytU1MDb/Ctz+oc0Y1PaOA2wROk7LrFzwOibCJNf
	 Nhpc1A03SUFaY/NYheTQKMR4e9HnSCMw370mqnUc1x0HlL7zUMp3PY9wAW6zj1sHk3
	 6tC4yTaArHtqRSV0MKZDEWkl19IRQvVuIJnEVWg350A0YQRLyhMuoClwApRhFbCa50
	 IJgEmULjocPuaNlKhWfrl/neUi/IMStb9RO+nDBOXgw344/K3F67CEgxsAvmdz5l8p
	 o0ZZwdTHPbPWVU+2CYwoc7Shbgk2olaK4udSwLWZF9rVlypP7EgC5LxwTySXSW8UJX
	 HknH/Kcx7WD3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE375C5B567
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178639023370.25797.18035665465911416231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944e3df479d219665cc4317b93f3362a2c335853b2a63ba44f9c57f715317063
Date: Mon, 10 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786390233
