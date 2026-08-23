Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E3837A493
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787506234; cv=none; b=lLFKFwK2KbXiiFdIrrrkghNSdkScAwCZMAVCh1t32vS45jOtJIA992CnA5a/oYBUQG7E86cvBOBdvunRxYCQvHQLQnXUaN/6iJ/kodJFPyoEvM753i+L+MhGg5X8rj+erW76eisppu22tUECTz28OcwibP0wnLqajau6Ht/hU0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787506234; c=relaxed/simple;
	bh=IhxvBn9Y1+3F4ewqlIQgCJChukUsr0OkI4FiVAcp89I=;
	h=To:Subject:From:Message-Id:Date; b=To8WQInTjDC5bOsAxnip8NLECWSJ59+BPQSkaz8naaqEXC41iUu5HV1kR//AIfFjBulHd1XikeJQ66h/VL2z3CwrTeZXme3uvQGvXaBpBRq0IVZ01weSuXFx82JhrmL5gzbnMKW/R80Vl2iCm7pv+J6ltJUfljJyToviFTYxyNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXpbITe5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXpbITe5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EBDC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787506233;
	bh=IhxvBn9Y1+3F4ewqlIQgCJChukUsr0OkI4FiVAcp89I=;
	h=To:Subject:From:Date:From;
	b=nXpbITe5KwUSCfDJQT4ubqnvzabf7P8AwpgzdNlJgpx287GmuWLGxUyTL4VtfGyZJ
	 mFz3gfQMtwcAZeEHwsiAMIvjYnnBX6t0jVpp7j8zVle6m4X3cLhPWkxNw2uAzl1tzn
	 Bbnfm1eWMVpt0MVXEHUQAQg+J2k3yeHXceadjb+eeWvu1iw2HWaaG4KEUUjpTEA+P1
	 gLm7VyubSQl6T71LDEa7oXP22ZcBn3CV5lRL6WQkHn0nlbLMZjZymcTzLqGu6CA0Sq
	 bBBPUDmcioTJthjyVAFFl4Nv96k+zFbz/HWQgTAFl/4YSRuGKE0IYQP8SVdwQKareK
	 2lXx2VGsAahsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F9EC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750623369.9116.5929296030650494956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c652a96250832c190626a2bb4e126d3d974bd14dbc5665e6f4c167233450bc90
Date: Sun, 23 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787506233
