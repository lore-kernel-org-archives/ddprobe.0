Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35962344044
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779448354; cv=none; b=peg9TmcShSVfljufgwhr8G/ssD/GnP6cuk/PjgUHu1WSByC/cCbszLMhMQAP95njaQFtmF49QDy5lqiT3ZbBDlQl1zl+CXP4qTGAjxhfjgAUYT/l/+y8MXF4Ss7ArHfXbQXqsEdhr8O0DiVOCEwx+P+fZblUGx8guCpMLorSJHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779448354; c=relaxed/simple;
	bh=v6n0/5YSPczixKLaIRqBX2VDORUYZl8Y9sVfzOSCsxc=;
	h=To:Subject:From:Message-Id:Date; b=QouDHouxvcoCHmCg4I5H0S9H0R0Hv9+YTq2Xp9VY9ejOVaHGJlVgp2ZKYAU97KmIpF5EwPv0ryb7W5KFZm9zxTVahvootnAfmf3X4MU5zP8CHzssvSPbjN3jBjfGI4pdJ1GmIKF8aHRnTGab25rDm1786FoGcV734vWNsLogNGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zz0j4BCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zz0j4BCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F6BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779448353;
	bh=v6n0/5YSPczixKLaIRqBX2VDORUYZl8Y9sVfzOSCsxc=;
	h=To:Subject:From:Date:From;
	b=Zz0j4BCnYZfosUM3OC07M4fwkYQ5NcLwwrk7SHusc8x1ux6xZyiZ7v9b+W2sZqNr8
	 eT/PU1N1cbPxjM3GdG8MdWKadoBLZFjiRs4r8ebiKy/TXyihwUh+Sis4k/wlJF2Lmd
	 yXWP+l326r/vuxot5bL+bLv3WS1eo60RKsBzHYKBneLFUD/XXXZ2VY1uvSbLBLoF9P
	 hTxKub0Eal8NuXf8QWIgUYx776kLM1+wc18XJgNY26VTjcRTR4GwB2CiJMAqJa0GzS
	 zsimaWiNcjVt+AaA7xTOhICkvkHu8BhRXjoi4E5gS5S3bg1CpcZ5xG8Wa20A/atbg/
	 OTnDsm5I6DhLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CDECD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177944835368.13227.3438420074917560425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb63b2d09d54fa93a3143278e6ed854dacbe2a13c2a68a9108269177734481e9
Date: Fri, 22 May 2026 11:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779448353
