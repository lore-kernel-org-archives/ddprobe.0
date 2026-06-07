Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5FA17BED0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780812274; cv=none; b=EzLl4cMgLaJxJY7y6xYL/xuinEFC4KBC6B24M4NetV1DGY+Fn5ozqGv89L/cLqGe5pQtIVkY6LzFgMWi6Z6JOXqq17KJ8vKirCtkqPN2fHlKoclcVPeuxjvwPhOToZc3WWIvlyh67VVojzZuOpIUd4e3DPTysteYgsAGz5ZJk58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780812274; c=relaxed/simple;
	bh=Jeg2fkmN24kYo3T2R8iCX17q2QysaqCrsbA85t+hIfQ=;
	h=To:Subject:From:Message-Id:Date; b=t+GT8qJ/5v9AJF9dYPqUFLRRerT1iu0Cm4ug/cEUOy3LqQ3mZPuZTHwRpndo7Wk+crvWBDluREsOqx/rfyWOiH0bsMO0NSVRsbO1/gM7Ilavt1z5EQP2WCCZHbfiUkIkro/PhFEhRGM1LnK4Amfz64wSSCyDsOGYfKPYiE2Fefw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1mT/dvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1mT/dvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDECC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780812273;
	bh=Jeg2fkmN24kYo3T2R8iCX17q2QysaqCrsbA85t+hIfQ=;
	h=To:Subject:From:Date:From;
	b=f1mT/dvGKi7e9uXwkuz11ookMhxdYdBZdlE9iUIIDqRa4r4KsbG8Ob5Z7VVSRNE/B
	 Y0ZWrV7DndGll5rgQ5xYQb5njckN/Dlm5bj1JeTFgzhWCW9d3GZClFHcSi88wDz5O4
	 tngqXiJSNSiJ7+N1FlY/r9WMfx89XZywBXGT6X5TFwXEXmZRV0KNmQwk2A/YsvKqQS
	 8NgTv5rzGPaxpcPk88JlxGRBo8/9Pho6QmBPSNuH17eyY7UwmCVYvka4FoDPYzU+m+
	 rjh0LS0IiP2g9dA8o/3rPwMDsUr6NUeuFDc3DPETfvxaNJd4kJfuAgqOKJmoO23tJC
	 MURApIGbTgAmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD526CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178081227368.31566.233353333874754708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 180a36e4603b686f28eea8ac28fab1a51c24092f7459593ba1662222752d73dc
Date: Sun, 07 Jun 2026 06:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780812273
