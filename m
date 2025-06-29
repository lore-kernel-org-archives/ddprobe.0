Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED2E4A3C
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751220594; cv=none; b=iNlqNOI3+zP19J/snqs2eVxiIpELDr+Mvk8174vdqgNysWAAmnrXENe9bdUij1f7eslUxY17LZW60jZU7i+lmoVxvZenGcg+RJUfKCtWhgoqcd7vtY6rQT7mPovp906YFJSO3YRy3oRq/5E36oX9kXuJy6TglQagvRsVJLb0XMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751220594; c=relaxed/simple;
	bh=fRiRHqY+Xt1cULv6Gb5svxrim04NqXZHOmP1sYNTWhM=;
	h=To:Subject:From:Message-Id:Date; b=Uz+AIGcZ40WFGgQU4p1qrJ3yUsAuQkOV+gykZN5C39r1PiSSlMwg4mivTipjlMdmRPcQA6RItUROim/NITPOVB6WNUg+HP0zUswuqoEERJHPVx6bw8wVT3l2Zxh+x5rbng0D9F5Ag5xpV4aUyWEbN0WgI1s94jWvE+gzJVo9kNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntSqxvQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntSqxvQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60ABC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751220593;
	bh=fRiRHqY+Xt1cULv6Gb5svxrim04NqXZHOmP1sYNTWhM=;
	h=To:Subject:From:Date:From;
	b=ntSqxvQNFzY1+eXULjaHqLYo64d9tmGcQmZ4+FbO1GinZR1p2Bh6/O2i13AK3CrqT
	 5K0+0KzeWBc27lo8QmHVYGET4dSGpHIqEg/Ze5DMamEMBFaGMQF3/pEFaCiIfLwst5
	 ad3skYvuExmyQc9MET4Bg6R7rCkmJtyMtI0MADL+gNSbezpfLTo/ot+eamKk0YXVXl
	 5AXVijVzxWOpSOckICnbWOKsL0NgRTfhMAg7hduTSfpT3CH5epn772XhN8owVLUsU5
	 7Ldk7hSGs8CSpp78xco9EQxecc+fFGafDwn/jVYodU2/m3E0kwlt8GK72x01bCXspQ
	 KZGuAgRprIN1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91618C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175122059357.31425.13242444031446732697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58a7fed95f350a0854dda0e0a714c5baf2bb832e7fecac264c1e0686b7591ce
Date: Sun, 29 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751220593
