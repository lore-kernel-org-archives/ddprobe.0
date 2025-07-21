Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCEE17996
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753138194; cv=none; b=dWtW7gaElCl8REZZVQrfNqESZuID3HQ1wlh3neQRlbD6F5qUzr+0UaO5RXCjRwKrrbKs17F/WS3XgsmSG19hFM5Ixa3piVTjqcaj1S6rvIFevaYeQKa2atLvQJMe+YXoom0NoHO04lc4I5pIHJPKTi2jSEUWtGx35s2rOcfdwoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753138194; c=relaxed/simple;
	bh=1eRyHvdJKF2xgRwKd33ipazcTeDYH3vz4bD4/ecMyqU=;
	h=To:Subject:From:Message-Id:Date; b=Rd+mhfyw+8QJz7UeK9oS0/Lvm6+4lPbqzsypgax7UH/mHJsZqE4Lm37HsKgag2VRtq0asKzYT2DQDv+WCImk0PXg82JdO/A3AX5WBlC2fmu5wvdSJghA7zoyC0ihphlmwCxXhiW3kqg5l0Ep5kUHZkzP1VINl77sOGoTWkrv9C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HN3YXRA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HN3YXRA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A16C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753138193;
	bh=1eRyHvdJKF2xgRwKd33ipazcTeDYH3vz4bD4/ecMyqU=;
	h=To:Subject:From:Date:From;
	b=HN3YXRA6ZVdJl5Osv06ao6sFoB6YMHKUw2HgLs4+MwRYFQghTQ1VJo4vfSLphjEDS
	 pJipO8xi8nKLNQwhjXEu7p8MJeboHvRIpyAuVroBT8PpEMsEdJwtyOSyfNxZtURTqX
	 x/23QDRXa+wgtFXqmCMi/EpEQvR+ZQCTWqX4t5nVnBIsDZG2ckVyjjFOSyad3V3rXi
	 rR+tXfug/d0CenATQIUzQ5LrQ0Lu2SMpSW6xVOAKyKLwRBz5pRJG5uF3ARuVbc4RJz
	 OXwwBzHJ82M0kknNpUwMM749vkyg6Lhg78haUAhHUkz/v+9dpKNU7JcF1MtXEQTfz5
	 rGEnDowu2jBfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A45C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313819357.25198.12986941821158359548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c318ccacf8e889e8a99cbfd6395f5a9c60ce13f4264486b6de038be59b5a78e
Date: Mon, 21 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753138193
