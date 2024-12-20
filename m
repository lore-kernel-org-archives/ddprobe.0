Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB001A9B27
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734734154; cv=none; b=IdcplO++fiKWmXemrR8iEncx56FTOjFLMNR1mg2lk8YUuTy3/TC4EA6/OPYsZsbCfb1oRexCITTPSmLZXNR77sLEQ4OT3r+sDURPYKUvRsOWFXmevT8bFTH3JI6SiPBHYRaHVUg3Aqm2BBXzHH84w8re+vbaBUdjudT6WlGJj1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734734154; c=relaxed/simple;
	bh=RO+mwAhQYAsoI1bh0f36CLfjuNeBEY0RC7sy9nYRd78=;
	h=To:Subject:From:Message-Id:Date; b=Y32/buJkYc+nnfSe+7pwa0G2eLe8EWCVPAxk6/KuBPu4FVBKFXT0rTnmHpn9fHmGi7zyvbV6+fc31UX3/vKkiiIiOVqNdT9VLEW5jJEJygI3C4fWagKarMLWlupQ0spK1C1sMF+cVfDrYkDdF9QzPfxZhSsEpskO8LDIaXFkQkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pw5YZwWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pw5YZwWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCADC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734734153;
	bh=RO+mwAhQYAsoI1bh0f36CLfjuNeBEY0RC7sy9nYRd78=;
	h=To:Subject:From:Date:From;
	b=Pw5YZwWEPYuoxTMmWS2KkoL2JqPyf7I2gZYUUPsYkj76b+/+qFxJ6kd+NY3T05bOL
	 vQQTuYNea0gnTGmSWsytt2cJjZCw6s04se/Xo47ooue5UjC4qRWAwcYWPItkVbpbmf
	 4b/QeFhgxko13brRJSmbPHjKtibtCaKUGvKeE2MI/flPUrCKjAwgGVDILar4yPsyVd
	 /wXUDPVlUgnIhzSV0NGpwU/ca24BJug05P5YyS5VDlalO/JyPYM0JNjz91TtPCfGem
	 i64mHkIgVvUUeKO9vmAgTbgTfCoeVvfSJ0LjD0kzJ0Fxgm4JzsxJV8wmA0sj76x0lq
	 06RddNPBTnERA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B384E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173473415361.30948.15557193918477857539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab9d873e9e43e56faffdd7b1fe7593cdbd26eb8ebb1fcfb362733a7bfa5f0a7
Date: Fri, 20 Dec 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734734153
