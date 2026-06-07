Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307102459E5
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780833874; cv=none; b=NFH6qOkWXiA11tihiIcbo2UMK+alxNZl6ttjuiPGOF8yV3zQGlrCcbe1hB5gnaymNTI7lLcbWZdma2BFWadB/NizDyx2NQLE9i5iRFFBMbrRjBue79CMTPwW1WJLPg9z2DwFD75ObBH/DOL+1OJTGGW8g7bYZnSE8Lei+5Azhr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780833874; c=relaxed/simple;
	bh=7J7+MgjXqmBZ+8o3FKIHdtgV9wPo0AiZd9jFgMQ27sg=;
	h=To:Subject:From:Message-Id:Date; b=F9/AR5G/rxzrA12we/TJTD3h4QmxGvzDO5QkJbgqyPN7K63Az43zF+zlaHMBpSXlUaVsCQUeuWMW4enQIAKF0X7Br5yobL7V1jjR8SfDCdi0ypCUS+cRm34R2Z/z+iLozUApJxaS5Odg7lsZJZ+pxxVx16zael0yjWDg7FxseOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gReLwKiH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gReLwKiH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2036C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780833873;
	bh=7J7+MgjXqmBZ+8o3FKIHdtgV9wPo0AiZd9jFgMQ27sg=;
	h=To:Subject:From:Date:From;
	b=gReLwKiHoprVg6ch6PTTiB2LSkEm2mDj3fY2Qv/ImuyUpO1atTcPAmNDcV6kXcgDa
	 tnSOTHHStXuOlsE5p33SuKdcKTzsljLfgAeQ4PVuDM5NVtvoD6opoRBCsQvefoXaCm
	 0wGqddhuq/+DYuQjYwCitbwPyd87Pr1wL160xFQ3f+RWMe2Ps+dm6B8cqkUbxzn378
	 ozARfxsuge9nNnM8WtEsTE3EqEcnVeSaSuVprfvjxlXSb4JUf02paFGch3/NkTJP2n
	 KGyCk1bbrF8lGhWR8/gOON15sKo98LM4FSaCGakQDDGgHsZWp6xP2RyB188MQQSMKi
	 SCXOa2n0IiApg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB163CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083387369.7051.14025531910520698926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d410a9bed28eb41813b2634b4a9ec5f353e2d2e417195b3cce1df6d00b83ee4
Date: Sun, 07 Jun 2026 12:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780833873
