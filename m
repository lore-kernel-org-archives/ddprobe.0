Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271532877CF
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764756174; cv=none; b=IDxNm+CGxiM9WkwSopP/ECOLLJGuxUvqcmpwwmcgIIpFb0b8DMpLzqfm4OpmcJ/gwfNOzW5T1aoKyoCnZlgX4QEa5qvsfpwE7gwATvuyHhSfzNRLe14Qc9vCml80M1U9KoEL3uQuH8771YC1WzfJ5O+eTL+gQ5lj4asNn5lnBoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764756174; c=relaxed/simple;
	bh=pZh9vTq2jrcdVEUe2bqKPz/VGpJbo2XRUERcVd8ejGo=;
	h=To:Subject:From:Message-Id:Date; b=sZ/y0751AoWPKGoa59g3BJb+9gAU40MDBMquNTMU61BKVlMVjTXXqSkc5Kd66M+32TDCVY7F5eNyN08xAVBesWB6OnaNQy6aQo+XrZ6g8/3DcQ2YUqBMD+jNGaAqdyHI+pNAl6i3aksf63vuE1KMjhqVWVP/3+cxbBRBGlFO754=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tffAuGqt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tffAuGqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C7BC113D0
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764756173;
	bh=pZh9vTq2jrcdVEUe2bqKPz/VGpJbo2XRUERcVd8ejGo=;
	h=To:Subject:From:Date:From;
	b=tffAuGqtPGTrlFNf7ChzeUTzpKMxz1XvXaDbbxEMXC0q3tmx+700rOYDntVvHBMLC
	 vsg8BJiYiBoAzqFh4Q2SIcXtye9GsobjLO2DK4ncvqRnCSIvpWJAsLsrndLsEvoGuu
	 BoDHLlyXGtu5Z4Pi6OlolroS7+ncprOWthAsx7/WbXFLMS3RP/NijRlCgxcV3Vnzve
	 tjGxFqj7MfVP0SdIyNf/0azVdZDueH+kINs8mh85uGLNgwO74jMTWylvNXI4jHcFkE
	 IPZQW3wgGPugWEWEe8QssUEIHx+7ZwcLFM3oIGyY0xNziI0VnuIz+lD/zhJtQEuly1
	 uGBaK7/MZR6rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F74D12694
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475617360.19162.12022870297531966833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193b404fc42e83e23d27a414532867921187b5d78b0d17c66ef20e57169d22f6
Date: Wed, 03 Dec 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764756173
