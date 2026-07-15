Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513732931D0
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784085514; cv=none; b=HtsD1cBHNw3Wt0iIfp0+LCAv1a7uNqJn0PpMjJf4r0QZKeFyKAMKRpGi92vflzp/2SHL427eQSzC3bxA/V4eLpTGH49RWdBMDz9UicIWkR5LIcePx6+q8ef20L5ScXftqn3RzHsedVrVwnYwPFxJY+q8MRyX+KNu9ycQbjI9kQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784085514; c=relaxed/simple;
	bh=qd1SQW2hI3sAeWB1DWzkgYdCMeG76vSkTKi2TB148kQ=;
	h=To:Subject:From:Message-Id:Date; b=AtuyFaSKsGNDqjDwdyJWBjSUNLLUbzntbJmoFqVd0FUcTTGcW1+0VKZHP/EqtgzWhcGO84YdP4JpdbB4eNCtUdqGeQ16HH6Il/WvWf7cq9z9BLfVEyGtk3k/CzqKEPdEw+kBGltpuwuyQkoDoL4XyqrsQZPEupuB3RBQXiIajt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCJ53z55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCJ53z55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A43C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784085513;
	bh=qd1SQW2hI3sAeWB1DWzkgYdCMeG76vSkTKi2TB148kQ=;
	h=To:Subject:From:Date:From;
	b=rCJ53z55dYS3lfxFeET5DIl8qj4QoFZ2ItG67J3ort+lZwAeIeLrUibyxh6WY5S2H
	 5dbBcIHO6lJTP3bwJL+9kGgjc1KYA2cVnLJ0LdrzMKlUU3q6IpOZdgwbEcZ3lsqAl6
	 86jnz6TgR+5wy7rihxsgMOre9OyhvbzFvtUWK+W28RGtKPAu+NY8pFuBBse/sGALoj
	 54+9xVCUOq/F0qcal5l6GaXzcuMao0QvyNHZvFnb1br1MQJ750ADh6Qh/2CP/f4BE3
	 Wus5lgC+NnigMOhzF7+awB9VHVV6bkBWRVnH611paGmGdASUheFDzt/cj49xza+pwi
	 mYAqhiIN3ZNkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DEFC4450A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408551368.21915.5214297466996711022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eac6c7463a170c9f0b4727a099990db1d18d6e2e5b3f6e892ca6409bc0cf30e
Date: Wed, 15 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784085513
