Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE76A314D0A
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823033; cv=none; b=fPYA05uOyZogoxLEKz+0D0a/bm3Oiq4Dqil9v/l3EbiwlywYK11NH+WM8c/DNE1A4cpFgZJJisLXyCcz8wIfAMN9R2WdKpC8bMoYnIC6jP1UHh6+PYNYjZ1yogywn/JkRjjhxU1rGJyMclIfuzwizorZj2LyLFgrkpu4tag5Ds0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823033; c=relaxed/simple;
	bh=iCdxtilFbOrD2POsCuC1wb2PHhi/tjRMKJYqfgxdD/4=;
	h=To:Subject:From:Message-Id:Date; b=Vc9rq3oGUmG5O1W+5LBEwJGyxOAc08q69RDAF3eAvzInReI6xnk1bhLrXRAWn/TpzgIJqFUv9aH84/kaM48/i/3RVCvTjV+7Ybz28xVTmZF/EkTegzA2FUtai0aXpGX7J3c0P2enYI2Qvp1O1setpEChW37Q7vmyuQGv3sBg9j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4E15M4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4E15M4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7CDC19423
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768823033;
	bh=iCdxtilFbOrD2POsCuC1wb2PHhi/tjRMKJYqfgxdD/4=;
	h=To:Subject:From:Date:From;
	b=g4E15M4yV4l+cdSyztSw+ZyaDxmePokjFAo5NM8/tojVGfowfK0zCdoWIMG5o/WzL
	 FxUsihi0pJjjRAhqNdK9YRK8msy8SgIJGJVa/ni1wA2BY9rM1POKl9NOibQqosGvUJ
	 qeFC6NuSAz6kcOuMXE86m2ru8gTRHdQ3c14He/+e2xCLYjJsCOWch33N2rJ4weUS5U
	 /i37xI1Zt0QqjIp0QYMKfE+lFzDpI2MBdxPq7sUn+EYI+LZLqek97WJyFIrtgOZUgj
	 2VV61flbrFZCH2j6y9aq75qL03N3+/VhQ5GW0lfkDkuOKAd/uBbIjB0vh8hWDzElGl
	 LAXhUwym0BSFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C78CCF2EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882303358.17469.4914403364343386282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e900eb0bb421da837efbf26e166627a8411d779e681ed6e145788580dd54156a
Date: Mon, 19 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768823033
