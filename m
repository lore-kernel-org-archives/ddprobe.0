Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2698F27874F
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780118014; cv=none; b=QacG7SJswkvZyk1KKwJ61YFMNwJfNspAEmogG16x2j52BwRark1MPkLjA8sznpGmitbkCihm/0RbdD5HxivgH4VAOWojjnDNTwzUH7f+mZhDZ9v4xKOvhbZFSbQUiPBP/XK8oYVMiLixDXxLo498O6aFnrtxxdlP8zoDCeuI+wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780118014; c=relaxed/simple;
	bh=+eZiQfA814JbUxNS2rGIyggFq351s1kt3NeSOS73xtA=;
	h=To:Subject:From:Message-Id:Date; b=N/nq60xaU3zF8HRr1okXbSTN0H6L2mywh2q8sYK0XXYtPAdCB6ZpDuv0napi+VEDi3JSKwT6VyopxSNU3smUQGP3Wmk8FRRacYHCxH7YPhFOc6BGTLVoIKm4sf1E2D1fsPaSqG1xxwAEzUUSJiuizo75VuNEJr3eCTd30XrDATc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwPz9KEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwPz9KEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0D9C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780118013;
	bh=+eZiQfA814JbUxNS2rGIyggFq351s1kt3NeSOS73xtA=;
	h=To:Subject:From:Date:From;
	b=CwPz9KEcO1qmzId6WIp6XXsR0Wnx1NosZsHGgVlDN5l2DkzyVx6/+ZRN4dUtQjKkT
	 hkQm5m9rMIByPJBW9MI3NOs1U1AQ9HBCdGnRGZHM2uWTLCQm9xtB5dMEzuZc27wDK4
	 4jgwYCOA0jNXxrgwO7OmUjKbc2/NgcgGG0c5pwLYpARX+c/xSeBclz3TiQBL95HqzY
	 QJd1opsFUsYsZ/c9sBECz56kKesQDK5NjJQn6RAVdj2/bcu3UIgx47+YqnSuP8k+bd
	 /sOa4+2MkXdJ7EUXCtT8wxDxKWbxmhjrwGcII4PxjEAfOpy2a2KJvLW49oEwRhXFex
	 ZpIrNt/jvuXEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4E8CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011801368.5739.14710627817493690108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2865140f462d4f7e8050c17d198c6b4152e8dafadbc14c9a030b1a10a620d59
Date: Sat, 30 May 2026 05:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780118013
