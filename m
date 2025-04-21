Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DF31E2312
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745260794; cv=none; b=RH60ge712+T6gL5VYiGhZYMZCQPJ351kxkxsDQfu6CWtrE/IqR1AYveGd9FU6GfBVF9PHqOiPQz16pnr2v6vSz/0oxfnJtm+aBRea7OiWUV1+sgtV+Khr0ylTbKzWVOB3+KcoGUEmQrsC+R2TZVFSKDyfBT/ExlNcRcDjadARMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745260794; c=relaxed/simple;
	bh=jjbcmFoq/Ucxr1D0FKNfVS32H9HXmQzUSQDdjP4V3AE=;
	h=To:Subject:From:Message-Id:Date; b=jR4H5IhMC3Pb0djvMQmFtLKys55TS6pfy9JvdNhGXr9HljY5rQ3VHhgdwoB7yYoqmtBpPIqkfs6+Cb9k1wiCjQUwBPM1F9tMJNj43/aw1YhprC+FOw3IETexYZ2Rno6a/ld0b6utweO+DbDbdF68wxjUByw14BF8SPIcktTvnXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ykdz5On1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ykdz5On1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEC9C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745260793;
	bh=jjbcmFoq/Ucxr1D0FKNfVS32H9HXmQzUSQDdjP4V3AE=;
	h=To:Subject:From:Date:From;
	b=Ykdz5On1JUYTrQRT0PqRpybocRRaZ7ejHm8y4hjk+ogXysdFhUGvPt8xkhVbiUOEu
	 JvP1uN/CMEqCGHefVAYh1mrY61wnpJ3K2aGU0n4EPVnYKyQaKfSIKL1q4n3jcrlExN
	 vyH+9UhtvgHNEeidMliGd/zAvVh/gt4BVMiyyoAZmtnm8yy15gTmX1oecthU0yZ7EK
	 5Yh8YU2luQqfBDwg09h0tlhmmAs16+ECFzbYGRkNTlhz3RqNVvW4GEFylB7NoHOGl5
	 PtQoEE3ky9s73Rnd1tYRs1o1xgeUNKI7S0o0+aLHireRGGS6ue+hOvpwbAzCg8Xegn
	 dO+6ilB+DvxFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9810EC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174526079361.23697.6522512570471188136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ecaf3ea883a0bb12eba5c7196947dd6b32bf1d65bc8354d89950b57a1a766e2
Date: Mon, 21 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745260793
