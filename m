Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F23029AB05
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766424834; cv=none; b=BuoB8BCxhmGCvaS4gSG/7gR5A/1D9cHQCiyXv6wFW8zdBDfVNad9L+XvmcmnYiddlphg22PW7lMcd83lH/0uKnvt1NCGugGjyfYmIrvWg/ClG1hZBEOtuMUZPV49PnmBVllFF8e91uoVUg8Gg0ICh5I4Pwaw0Y6uTtSJBqxB/S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766424834; c=relaxed/simple;
	bh=LOFLXjqsqPE1NPhSsBQBGIZ3XyrI2Cqg2pkLrjksZiI=;
	h=To:Subject:From:Message-Id:Date; b=cUS9+egTTgn8H0BC2YucFXtF1M6FRKWxW5zv2nchV73HrujKGE6/vRK2K15Njqwct5eWZCjMBWs2l8wfeMB6swf97Jbtz8XIUcge4Xd7m6zDAKXTO/3XUJVM9CmchtcFu2CIvpW7eBkVoG0x/TVM22IDL+oYqfminq69zynazCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZOM6wdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZOM6wdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14FAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766424833;
	bh=LOFLXjqsqPE1NPhSsBQBGIZ3XyrI2Cqg2pkLrjksZiI=;
	h=To:Subject:From:Date:From;
	b=qZOM6wdGpdMmGFxZXP8IfXAKAwVJG06EuiJ++azsbaGaoo6SmALVixw8bQDYKF4R3
	 AOpxrfsjZeI5YWB2fKQ/zUcvZIm5bBWKX/e+HKpWYgXFKapYcujPnpEmRoXBdMJAJe
	 S0SsO/+kB8R2gLDOQbzAVPxh/aLcv4PZmfwW605F5h8R3qI/ir41Avi9YRPsL2v2kn
	 jKKK2sRj9W8NJ0w37oXDJKx+4Td9lhI1m74QSQQr0FKnBl/XJghPHryLswDF3X/F+b
	 WsRDcq775dwESaIqgukhqxJxGAQ71wdY+p9w+Cqpezpm2MzD2mOogMakw7cAEBrLcP
	 0qxhKkB29Fk6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D2E6780B
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642483358.11272.7344159224208949005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c48d6c613d0cdfed5c89441a28dda6cda64f001eea69ec2139a06eacbb2170
Date: Mon, 22 Dec 2025 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766424833
