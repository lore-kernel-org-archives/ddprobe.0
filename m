Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC0B157E82
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731998154; cv=none; b=DAXCOlkssCc/Hi6ikIPXI2gZUKn8bqU+GElEFPYpGUOqPno4NPHC319iLD8E/2r59rNb1acv6yRk9/3Cp0E8YNphCwI34D6lKnFY10vLnnv1FKiv6KfzQ/bfqLUUfPR1W8eeHIUKdpQjc4sRaXqTWFYxLkjPOB0H7RAC44lYRXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731998154; c=relaxed/simple;
	bh=Jjmrf+8diDDowzH4FJwzxCgPa+7kHSuByfXtpd718X0=;
	h=To:Subject:From:Message-Id:Date; b=C8fyEhtdfgpRFSgMGlWemuQKRbixEQuZhAI4z/CYgttTRZEGXoeTZX6Ixc0YpJ8Ad/pxtYhj1gGYxYU5IE6p1epcweRM2FvLACDwsqYGAs10rkmdjQZaDC4giKyDFEACeWu1TOpq9tIHmFtimHChViD1Q2nFP1Fgt/OMjDpyJWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJgluIt3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJgluIt3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC748C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731998153;
	bh=Jjmrf+8diDDowzH4FJwzxCgPa+7kHSuByfXtpd718X0=;
	h=To:Subject:From:Date:From;
	b=gJgluIt3gLzWm7dH7MLJ3WoSsYFYXFgYl129+NkkK8VQKa0TiLh2lMo0JbUr4El4h
	 suLvloayCtVrRl1RR0AaJicQlY4ANnPA+HImJvONgvGBpFXtkohygNVUsHClSf8VxF
	 KraW9kCj/S5rjywXniO7vwBQuIfIg9CzfrqMZvx/esKiQdfnGGhGUHDu4V4BlbW4xA
	 W9v2cux3Xa21EfZ3/Lkhc5qWe/rO2DxAS+8wKOI0un42TGdVzCLiYBLLK+HOXsm2z3
	 sIVW33XuYC3tKPZuOMAYixRICPrPwftTbFUWEVZ1HcJm4995m3keCZz27dPkrRiA4P
	 4ZqNOj2lgIACQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9676BD591CC
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173199815360.8810.14005504718941862983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b2d3173fd75375e5e9760ee4f507e91c383b92cb64f98eba647fd244d09415
Date: Tue, 19 Nov 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731998153
