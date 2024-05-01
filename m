Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E607F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 07:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714548143; cv=none; b=FFIRJl9HvBbUHaXUgxtzY9Ur2OZoxiVPoqgGftZHzR0cm0bLKT5VX3wbb88UD93i253r8yakY1B4MBAWRxWGyRhTlYj6tASET+YIDk3A+pyOZgz3GLcRT3RVs/Fmm66BC578x+1CE30TpSFM3Iw1s9wcG0cowNabcAKLJsokXiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714548143; c=relaxed/simple;
	bh=WeJDI/SdyjycbjJwEOKud1cfwIfLT/upmW2o2/2gyKA=;
	h=To:Subject:From:Message-Id:Date; b=JT899Zzr/EEAI2fQz7M4ufKdJaP7XBptuWlRLNTZ3QyEq142DL3dehl68Vzq8CHCMSlPSD9BIbhfEpz6RLTuJ+EiAXJTauqzxrO/TDlHka9c6rYv09Pr9Z7i7eb2ulFgBVeaVbLzOHNzCtmG30mIiPylEVp3IdZPBhuxuheO5Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxaSRvvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxaSRvvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA26C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 07:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714548142;
	bh=WeJDI/SdyjycbjJwEOKud1cfwIfLT/upmW2o2/2gyKA=;
	h=To:Subject:From:Date:From;
	b=OxaSRvvd9FxQ3BiPellPwne7fT+loopMXUuKPly+0bJJKCJg+DtWfnBXobFyXyh/H
	 djpVVtccHTrOpVKs7Px1M5IrLwy95KAZcfBj0LeZRYfoLDWshBDBNX3wWDsaJzdtV7
	 1MHo7DnC8MdDUuryN7pEQRQw8Tco7i1mBX/hbKOQU2p5DlLmhqRsH86rJoAeDPYPPq
	 NK4j4s24wB6rWr5aCDPnzw5rIbtDaDQXmTWaZYptUpI2w0YlmW3ilNI9UcIs6VOjQB
	 4EgwYLxhgwRFKGya4Dt0Equ9kkaOi6eAgkjX6huXxun0dIDYPpzxVkCagDw5BNLsQX
	 Ufcztu8DUt+qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8C6C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 07:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171454814275.20915.4977537019851468895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6839b951f847b996a7eac398fada24001c522eea285185d0c10459a93e5ecf03
Date: Wed, 01 May 2024 07:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714548142
