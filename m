Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6062914
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737597954; cv=none; b=E1yr2Nin3FpKfqFx1M2z1LzU5yDfg4jxXrLxWWaZ88Ka72CaJtIqJK1W2tBshnazk6s5sLPmSUAUams7TPfeXCeYs557qU+YpZdp2cDAj9fTQQKTE4PYJl2Xi7Vqgcqhb/+wVQylFfp2kXgR0ZLrWsd2RpGplK1ESQwVZUEuOm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737597954; c=relaxed/simple;
	bh=1rOdfZsr5PFw16pMUCcgorfNhrLbWhxvLFEzrcV5Rkc=;
	h=To:Subject:From:Message-Id:Date; b=bmA4gCVUluFHOTzoJX4NuSHMx4lCTuyNYbYpk7nYOqxY4OJiapoZm+fY4adunKAY9UjBI05a5KA7VdL6XzNGy3rV6fr68udNiid+1YgcDkXyRofx/IyCdx9PqThRAVZUnkQTACcLkca3SQcr2nfeLSxCS1wKQW334u6MEG2Kpw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqTvZrgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqTvZrgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD7BC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737597953;
	bh=1rOdfZsr5PFw16pMUCcgorfNhrLbWhxvLFEzrcV5Rkc=;
	h=To:Subject:From:Date:From;
	b=OqTvZrgmB39QyodGYO6AETxoYdqbxHEZdq18oi/ogFcahCd5XEaeIQIHwjHUrmg7j
	 pUViwv542AiP3k8Rjqgxu5dI/J/Mqz4MtNVHf8mSBkWMLrilG+lskcQ0QzkU+HXFWz
	 yR7kp8fDZ3paq4SFWE63rirCdjEGW/n+9N34PCLmTBuikYeQki4PHJDVFeNhw4fVup
	 oG/qZQ+sT5AHXMbpzyoQRdYpkOB80YD7jEFU/3lQZIEdfSKUIbr+syezVXKJ14F9cM
	 lRts55Yr0yEok877+oqJKDK8PcaRbJR1P/76+R88+PPx4Ci1P763WwVRSAmGvSY1gW
	 Z8UHYdNXl5c8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB0CC02181
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173759795360.19544.6483736239747643363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23fb8207cdfd66905ea9cc4ebb6134338b9535cb3410a59dcc962e5f23f9da8e
Date: Thu, 23 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737597953
