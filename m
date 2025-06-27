Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420E92E92DE
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751036994; cv=none; b=TbIQfkgCmuZRFa97p2CHI9LOyPGsGvt65btYm45jL9zoMxvV+/Pfn5fxOvR4QU/bUcWThr1C707RVt1GHOh/1fGJda1kyTCa1tCIm4gH3u784RUesVb5fIUAHbXbnPjXwwbjUFEO2Cu6p6Kvq5d6ZIzkIoJ1UiPYBPfub1Tpd40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751036994; c=relaxed/simple;
	bh=63CkDDxC0HJT8JMOLPAvAlpAELABoiV9sa2TYb4yyHU=;
	h=To:Subject:From:Message-Id:Date; b=ThD2Pou0X4JIrHh5irNSExutq0YuPGZiWsHluYJ9HiyCAaSMtXmpH+pBI2kPItcv7cU5fiLjglPD9qNTKN1SFe6Q6lMVxnE+dhnCzpbUfSvWT1mn5vK+hqPYWverr/vg4pXxxrvx0F2DQAjoy9kkK8Qml+HEDB8aEep4Gj/z1MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKDbzARF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKDbzARF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B5CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751036993;
	bh=63CkDDxC0HJT8JMOLPAvAlpAELABoiV9sa2TYb4yyHU=;
	h=To:Subject:From:Date:From;
	b=VKDbzARFkqz03+i06FDmbFQfxu4Z//w4VXqcPwlJV3y3C/vc777jHMaxylNkCac3N
	 knECQA5Gy8Q/1Fjmn+FkaM9LcuxINGB+4XbYbr1gu9EhjwSORxOboXoGttraEI61EQ
	 EfOdEyPArKo1AWTrHx+RUn5i7lNk1EpA2TNSRl5ZiahBjYlRwx6FQFRPEepVyI3udj
	 r4R6gWFdqwEIE6a9veeyWimVmMmq+mGDCVydKIB0mPsl6s0ybw1ordhTMDcQXdNe5Z
	 vTJVyx9UHlsyIU4IJtq4pzsdgweLVprELphQU5VDyYzpZWgEuo13/gEgeAUy/WUPs3
	 VtNPXnPowa2pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905CAC7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103699358.8133.1630017110490504228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92be0e9c8d8b5d22110c72f6fadfc1861f8f0b98ce799fdea19430d33932777b
Date: Fri, 27 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751036993
