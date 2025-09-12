Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513672848B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757704194; cv=none; b=o0mn4eSoBra//n6gp1J3H+iNrkXMy2VFeG0B1waehgcDJD64Ac/PIj076waEO0mvfLY9kQTofbnMZJW0jynpfQTwJuVNkYJpOi9K48QUWQ2KTYMdbziSqKQILsmhgoV4cCBlI48Tdye8ruu+zo4WocBSDXM17a0MXhpJ+r/94dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757704194; c=relaxed/simple;
	bh=jNWRUy1iQwcdUVNELQAPhT2rUUQqHftO409TRWFpt2g=;
	h=To:Subject:From:Message-Id:Date; b=Bfld5E3UNF2SMIf05Mmvne5FdeXXENCocS3bSkg6dT1X6okGhmfXOkso75RaS2DmU+Iq+acuSdoOCwov6lvh53gHDdsR4BSa8VZN1eDzJZRL5FUAVtR2dPpyWohy3FaHlTAiHG+786p0W2V3bQkhZtvlpbI/fFFr6Pm//nWXA48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3vZ2TKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3vZ2TKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDE5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757704193;
	bh=jNWRUy1iQwcdUVNELQAPhT2rUUQqHftO409TRWFpt2g=;
	h=To:Subject:From:Date:From;
	b=s3vZ2TKP1LTTAaxViyqbdEYHKCBW+Ycc6tY4Q94cbgQshX5eRq/CqfFJrvvgJ8hOl
	 cu2BUSZPAHh3zMZxze2P4u0Z0QEA0AnN+uYGecsPNdnmhE1HQSCPjiLFugG9fQccOa
	 syDRDR8GWvASV0NEpUgQ12ZFCsnPbAcWeSuL1vDEWKfXFYrmPxgE4yOrx3qk4KqxFd
	 8EHqxPYMHllJVKNeIubIfo46Na3vUGyCIno/9aXJ1KdkOQpahcj6WlaenEFRcgzuxL
	 fgs44+aRj8bRhEJSXxEGB/vYXTLR/LD5REWSh7pKTOVl1Wt5212IOVQ9g5AvOGiqNQ
	 PUTd98ur4rU2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94921CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175770419358.1218.13656681895045622296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9889892d21561a7e4cb73570e45fe2bb3130e0a7ef766266f5cebc05370c9470
Date: Fri, 12 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757704193
