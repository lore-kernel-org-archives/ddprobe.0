Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155F3132492
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721905554; cv=none; b=NoNXZGkfYBpnwBs4VAPEsLWjJQCii20QbwSzXM42BL9v87exds6zxCtmuIKa08mSdQD/8lqmBN3mFxa7vvBdzVG50A/KJZDF/jNdq+ZvgqszVnyRITjiiHiGC8gA4lyxv4gQRcxz81EckdWgFDgQXjCUliynjou9yhqqSNw88Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721905554; c=relaxed/simple;
	bh=w80sQKEn/QacNJHpfMW3TXCRc1xbkltnE/zsr8lAe3Y=;
	h=To:Subject:From:Message-Id:Date; b=DB6G6BlBJ7YTwpvZ+/SSxLBuxmyJB6jLxGGMMxZRCWTAhTI8Vq/B/X0fRcfjsCXbxBr6yjbAL4NdjH5vBf2tE46JRBhO8RpvqZ1HzAFwjVi/eIB8hNA1TmMFPuLqE1lycWM+/POieeeHDJ4wBIM/ZvaQ13gmK/gznSEebcHRG2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+LCRSOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+LCRSOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A7EC4AF0A
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721905553;
	bh=w80sQKEn/QacNJHpfMW3TXCRc1xbkltnE/zsr8lAe3Y=;
	h=To:Subject:From:Date:From;
	b=a+LCRSOM6gs2Fpy/rGKGr7mIFW7AxlYKoESnJWYIsVzmKV/xegBPebY7TfmJNM0dD
	 gsD/sdoWnkywx6Ix7Nz8F1PuaBCcDtKehvPVUs1MayI0LzlryyyTlRuzp1u7e0c1zr
	 dcfy6jAZTschSz72c85xXfjkLzn2dNaXKmTyE0cXcZqmSshHfFp6nrnNzV6uJb167x
	 YUR9jndBfFbKwMaRji1u7+x4jYqLDqemdMavpRs/mgqY1BP34V7h6DDG2/CaWSxP+c
	 L2bwcz0aTOLltm01GegEd5p2kwMvyp80lCaM8hOEHkpy9F+lSFMLbgioQsXpvpU+Xm
	 Na8j7qH5O9aug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9601CC3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172190555360.17226.7281358489683679417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 342a02cb237d1ffa62fe352fe0bd5907f2b8a32b9b1693c4fe9ab7bcc6e3c3ea
Date: Thu, 25 Jul 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721905553
