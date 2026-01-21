Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C978F26B955
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768957433; cv=none; b=HpvTrX4e5339AIDaYaZCeNmtBd1dFSblb1yR6NCadKdbHW68jO6gPucavEYmBR2DASlKxlTLuCMzKn29BUVhm8EHvNg8eQ1CWizTIIREnKZOAnrk/ySLB8a9ourm5s0lJH1oYHllxFD94jCwL4keYaj5K6s73QDKLRWUJKbnJFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768957433; c=relaxed/simple;
	bh=uvtgmszLuG9ZkVc2CDlfh6xixVyW3U4YLwvMC8aMmEw=;
	h=To:Subject:From:Message-Id:Date; b=Ndjmc4x6sKwOLnabl8jWT5vSqlzDy5qgvjdT5lSpJdPjN5HTGWo0TFIceTpL92EcWCxglxATdfEpzy5EKo/90IORiDrjPNrF1fDVqO2WjHX5YTCMp4P8AgugpIVp6OcOzh0PnKasd/aF2qNnj5lWC7To4+/9Zcf1Sa39WSelmDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZH8dKIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZH8dKIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D48C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768957433;
	bh=uvtgmszLuG9ZkVc2CDlfh6xixVyW3U4YLwvMC8aMmEw=;
	h=To:Subject:From:Date:From;
	b=RZH8dKIuu8ITarS/96ddCjd6q/baefYHDshFpuDdFn39BeXjl5gX9/4SKY0QRnoRZ
	 bdZapLm37faHJRzWiqEIV0bTAOFRyG/CBwI0GJYkEX7Q/28Y3Kg6ik6TRDgwduq2bG
	 vZGMr0XyXe54LUVBOqLZdbutU0M+5VUKnyKA/y1nFAEPCDs6rIbY7YmLWjnAq0eWti
	 qeg59nwL7fwoQ7sIBF3y6ct6jq8tsCPlZ2FMGQ0YBUKCOzZXHTmJ/E49iBjwjgohfe
	 yYIiOClvHT7OHiuJmdEs4F3bfUBiVRUpzuqxD1AG30ZsLwkfp1hoQ7iEhfTbo9/KKg
	 8pgDC0Oxh+V+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CFCD262AF
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895743358.5179.10433166475351601117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d530ff70edf642130f35d5cd121d3f2ab4cf0275ea5433688792b9d375595cc
Date: Wed, 21 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768957433
