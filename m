Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A78A3E0C42
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773846294; cv=none; b=UXCo27oCSRbkfBe++ExMM60RxEHvnfp/l2Wz1d69IF4mvmzPVtPVqcvP6vemTu5pMRun+rltTbB4WX6+m7r+vVc1bcnIHoaf5hHg7Wb8o2Jj23BTy0u/og/c5xk1/mVfTbpO+cHVpdh3aJmWfe6Xh9VPGvzj2jnFm+Cc7VoV2xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773846294; c=relaxed/simple;
	bh=uL6SVqgoFeVGj5slczWGsw/HwFqzziQWkuSRncpoxUw=;
	h=To:Subject:From:Message-Id:Date; b=lODATOeW1fsxX7qnDkhOPyhu4WVCPVyUHWYyc1XCreO9xgCrh5/1mvAuILtoWRQ8o6ZldmLohLGStEhmqQYxIAFdXBI6X7I7A1h5P+Ef3p1Cl+0xbJy+ClukKwybYN7vkP5NwuPEOyKROxnrBdYHv5c9dVDweORhbVWUahxARFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWoHYvrD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWoHYvrD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54D9C2BC87
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773846293;
	bh=uL6SVqgoFeVGj5slczWGsw/HwFqzziQWkuSRncpoxUw=;
	h=To:Subject:From:Date:From;
	b=bWoHYvrDUutn8j64Mhlc3aMroQlU/8RCDrBVU3bcayVq1MxA62aD2i3vlOoaUROPk
	 1GQlXpNa69yIgcWfIrqN1XNS9say0qGUmnjdHsDnAfgXsyQ0hlFJ95xWU1bLHK4ogU
	 Br7TKmq1ve1+qcg2dC03awjA+4fybnPqTJA9fQF8dRYTPQ9m1SaanbXGUsYF4mqsQz
	 JCTTkN1t3WQlDgZV78zMNwwG5Y6+pX1j3p8u1oW0IFUrJ4a7KDK7Xmp8ybD3lFk0f1
	 d8O8cMMwDeuwm72U4w4mUwR/ghbJZu1M13eJkAfBLFyH2wtI7uuENsiRU6DME3QL1G
	 dyYAhYAkxqRgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E91103E195
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384629359.9639.2760291656906870592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c561d10b2d668d643c61fd04d682afe04f5dec4df00560635e0e8fbf256f00f6
Date: Wed, 18 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773846293
