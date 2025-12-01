Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3865A36D503
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764548574; cv=none; b=eK7c3VF/q28GEjaeKQ1z2bHUhmo4VM4NoHYHibWKJZBgRTbLgiIAuSx6vURe+GpYweeXItrBTCGGmxd2qDZIHRlXfNfL7qQAxxNCn4yqH1yCoJ1A5Lbj4jbDF3IkMzFR3fA5785ps2wYSMHmkaajVLZ11XsWL/jf7mQpv01ND/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764548574; c=relaxed/simple;
	bh=4HtQabgcJ1wU+Lz2fEoiDgRqIuKqkLMkBN4ryi+Fkcs=;
	h=To:Subject:From:Message-Id:Date; b=AwbwTf51ZsAMrTMVjaJm5blQX3sPliR854TXOVtiiTP6Lx7drz77kC8I6nod5skqTaFHI2OIZT4DRTiPwrknWPW2I4sXIA3nLYChUd1IHLCMGQ3E792r1mnB+5W2VM3DQ7MPu3YMvXKAA9uqvOK+RK8WNkfnV1VCkKFj0eiH5/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qul4zkz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qul4zkz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8603C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764548573;
	bh=4HtQabgcJ1wU+Lz2fEoiDgRqIuKqkLMkBN4ryi+Fkcs=;
	h=To:Subject:From:Date:From;
	b=Qul4zkz5LV4auzS4uVCNAihafkkpaTYEeC5eWJ0eCHlXwdPXgarinLPOYKIMhQJb9
	 gwxwpYyUtA0lHrdQkDAjp3S+Kk01zwtzha/zO53aAD0G9o4P8x9rLUfyy0W7qEyMH4
	 lioT/WjCiO2ldsYa29M/FUQAeeUUJm0KEbzQj4rYkUhC9eEP9Z5IQcyjF32M8UCRO8
	 /Xo0UIEgrIMgBTlKXaOQQ2zyAA5J+nBcbQVIHLfJ0n/sibg9yM3bL0S1hgRZu1FxVo
	 yvGgMqGIsoRDuMcVXQKzY7hejp4R/UoFTeaDFjaNpuDqRROc1idDGEdRHe150PxEBj
	 zMv14lCTYV5VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A50D111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454857358.1774.9527745590317995739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 631c77611e96055bdc6aa0e075d8c38a5b251960e9fef65d8795b4e8a23c9b4f
Date: Mon, 01 Dec 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764548573
