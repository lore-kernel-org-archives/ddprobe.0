Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3FC82866
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747468194; cv=none; b=NBN77FkxooggSA8REzJRSnke5X2+B/ulh/PnBE8R2iYQXGTqreiGwvW/bX9lqj+/g1v1EUoqnxFX5PKt5CDaptri7tX7jRILiDa9jkazZkKRiigMBsKFnWrOVtMJGmRf7czMxkNvNxDK6IA48bIwKIer0jn3Zg6XvIbWWUtLGbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747468194; c=relaxed/simple;
	bh=2cEqZhN82fORevcfbRbklSuh/3ufavfLet7kOVDkFwI=;
	h=To:Subject:From:Message-Id:Date; b=Kr8yCjMqDkdetbqarbbpn9gOlNrrN7ACA6fvwPd0dVH8MZyv8NBj76+TIf2A0gmSBEgTmbyZRE27yZ165snazz9PkzchkrqxSTsdFOjsggn1ffVfnZBcNE3e9zAFrZ6lbPSuXGd1DtWtjusES58lew4zRFAPFzZHt1MWyYMY8O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syP7fPP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syP7fPP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B5AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747468193;
	bh=2cEqZhN82fORevcfbRbklSuh/3ufavfLet7kOVDkFwI=;
	h=To:Subject:From:Date:From;
	b=syP7fPP9Ezh+7dAqkcp4gBj7AFV8auua5s5EoJplViI5o7Ns/mSkUJ9P407BmcZ3d
	 lLnpRnk6UE5umBjt+Xb0CjIa/JfXPlMm6hKHPN/84c2mL+fOuPE+Ok6606MOt1uniV
	 UBiV+nRO/Ir4+/IW0+oNCShbPoGCmadIebCDH1ezscErsWCFU7YzPvBtfpKjwP6RKf
	 Y0ao825ereDLvdiqfakD06y3iHp5z5KcEJrUqbaNtHdFeTJW4kzOokafiKSu3tO64V
	 lDmjb/plMMV50zmXU3KD7Qv/3ysIeJdh951ikg7XtXgx9LkWNhBui9umwzvDDTJlZj
	 asJRTEG7dwYMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9142CC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174746819357.10588.16711603780582378792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea822b29842da4bceac7fa079e129766e45be3dd9a5748ff190bd63973bd08b
Date: Sat, 17 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747468193
