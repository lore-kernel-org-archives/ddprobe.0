Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F261E181BBF
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712783897; cv=none; b=kbb4EYGu4zDctMe8uRDUjoiYjmX3Z/ya4hlJfkw+F/fPqw2y+ALDd+lvJIByaeb1JImSGeJduMFfpLKJfnZB+WmKHwH/s5ITWhvdGu3oV4N27m9zFN006ldMae6GutXmB4kxMnKgvlLpxKaO1c8+wFUu7BvmZxmeQl0QBEIM0RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712783897; c=relaxed/simple;
	bh=IzajPsxnIdO016lhUvpYKSmE+uxRDYA1g0LQRpfAYHc=;
	h=To:Subject:From:Message-Id:Date; b=e368d/MokcV3ue14nfauxU9WUgSentRTetXyXshamcy7LtCBzC/LWplGKF7ZiTOoSHog99tLOk7CA+ouyW4E9sw7+c0m3v4M+211WXGLnMp2pMv8V6NxUAYJkgoScw9dctIrYQqNTadGaD4zk4TM1crLcaWVrvjZdTTqFwjnKVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubNT8sXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubNT8sXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC27C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712783896;
	bh=IzajPsxnIdO016lhUvpYKSmE+uxRDYA1g0LQRpfAYHc=;
	h=To:Subject:From:Date:From;
	b=ubNT8sXMX6oNZZfEFNIeK3t1bf6X6y30GHQO09nDjlPd0CFUZZpK8l3WzXiyvxaeR
	 xwXkki1Ej3rCqDPXRfSPAWHC8DsU1aNTvwrij6sqQiNLdhzRI+aTEsak0ud36RWK5e
	 L7v2vTN4lBa8QRwIhM5mGfwj+pg9yGs8qkozjBmy7Ww/cyOUOwvdbobp/xOhY5a1RK
	 Y4Cp+lSiv24Faqws3jAljXm+wDGmAviExUSZi3zaijgd808/nXwtZ5iKUAO5vLOeAb
	 Qcs+ylWJ2hvYa3cJLzWsXSx+Mx0lhtkFp5a1VtroKr5TD2+wgPUuNkYYh+FIYDWRIX
	 Ip8Ivyo6FJqmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FF18CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171278389640.4249.16443886485297739959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3570e57b462c8dd316548bda137ec847d883326e343e72f387a37158235cb33f
Date: Wed, 10 Apr 2024 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712783896
