Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168D828D82F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752140394; cv=none; b=hpG4qHHUeX4XeEtmfZPT6ADOL54ltR9iatFWm3t+B9avoRSIwSiVp3hjlEpX82LTujweejO5LhKdkwNLn5v5L9xTo6nh8tgcjyHOtAjuAujsS7/sBw83U3z2r5NwS4/FKJ+tz7Y0TglNQW2MiG+71x7qZPQ60AMNOV5GnrWdlbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752140394; c=relaxed/simple;
	bh=xuLuE9CkCFKe0Pnt3bL8QlgjyYvNJ04Tfci5Ypu8nhY=;
	h=To:Subject:From:Message-Id:Date; b=ifVVImXY53OTrfjFF4GblUOYLO420SEaAwjJK0DaWztfHi1Y/9+qwhcxMZ+oZZJYbk17+5Pq695bOjL1lxj8OkxHYzKXdSPsL05K5UsszUfCFBwiif2ZclgdF95dOEPiDgUp0S9Ns1+ZPJvtOuOuRcFB3g/gkQb98jIGGWPjxzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyBTklD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyBTklD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2CFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752140393;
	bh=xuLuE9CkCFKe0Pnt3bL8QlgjyYvNJ04Tfci5Ypu8nhY=;
	h=To:Subject:From:Date:From;
	b=oyBTklD2G6EIXVeIoO3SdEZhKobuIK9gNuk+ngjl3cY2c58f2WskHGzRkAvgnZfer
	 oGQp/3PRRXUen3OAQoJlWyGv9/d3v+erf2ITlEz9gVBW37pqbU2+IogGOW1evFACtZ
	 mbKj+2OT8Hx+Zvw8UKaOu50AHk4rdeyJFaysVv7qUrAI3BhDB7sY7lii/kyN1WK3oe
	 B4ceLVHv4QJNXV1Faivd1vL+JYBM4yn+mlbrE9/poqkLpU98lOJqOzFFTWdkHpOYTH
	 ecynGvDogkmEx9Ol+tg/c8x95s4wBsLCh0O8AWG2TchgINrQJvjRH3JTSTIJwmryDT
	 oGmlT8QwhOAGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB33C83F1F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214039357.15543.13320819292520408489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb219cba98487037850a51b19e69791dd3fee38a4ca7924f34d34add4060e005
Date: Thu, 10 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752140393
