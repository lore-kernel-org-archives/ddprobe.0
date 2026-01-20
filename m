Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA2E36C58F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768904034; cv=none; b=STPOMfLSoM+NhfClk7YQMYbgB5xJehEdCKyCwQrfKirGORrm0jtTl5SMPLEfLZoZqRLjFz9KSW3z0nFI+xhdgcCB7vkIrbd4khU4oO1aqF+irZxKw8rkldZsVXfcukjctCgUfT4F0ixWXUrYsFssVRwARHF5X9C9lG2Pc4egUik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768904034; c=relaxed/simple;
	bh=jU4v2t36xpBTFqU+1N303Q5oRpCOqPn+tQcG4Q3U9Nc=;
	h=To:Subject:From:Message-Id:Date; b=AaPKtPzr6AFX0rHIeO1u11z1Ay12vhjiYzfyVWbbYYT/5gz5jJuUJx+klXaNSPINOG8CVIbFeMVNcAQJhA4Ay0FeeTwBHyYiEx4b1XlpeeXic1vnt1sfw9OevA/prjS34l666a7sJhai+c+puN1ZUGSPxaap1OpIEJbcyrrQ2/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISvxzxV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISvxzxV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A350DC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768904033;
	bh=jU4v2t36xpBTFqU+1N303Q5oRpCOqPn+tQcG4Q3U9Nc=;
	h=To:Subject:From:Date:From;
	b=ISvxzxV7QMX1ZJ5oT+Rz+fvS/J/N+iFGBlbwd8ZSfzJYdd/tnaDlBdzhjRBYY2Hag
	 OdTul+EQnofauv4HOMZX8tg280nl/gxYWV+uz0uxyoVzdDIYPNQJLnzs7IcC8QWPNe
	 XSsKmhWOSReWy/kaOxgU9JlNc0GULi2dxZXq11KyUErl2nrr0pu57j1uT1iPbrlaUx
	 LkwNz0DJO1rrFOsNj0p5Vu7qy/jZ2H6hygpRolYUl4x5WZoeKkJUhq4d2YQAvAQBy9
	 I2eoZcIevbfHPZel5/aLC8PnFbuqY1YyeiRJdHCgMRddXAq0xqSQj4Ixuml8H5FsoW
	 DZZqFVSodKH9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EAED2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176890403358.18170.10817697498647917864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c564c4e71093ab44f8ddae1cfe2acf5fc734d8f6afd1cdee734968a0fc84fde
Date: Tue, 20 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768904033
