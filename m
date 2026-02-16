Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E318236A73
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771270494; cv=none; b=qIqS+dPntbQdwJA1Y+ZLyBzzAqXyT39hj8vxy1I+V7KeJsFP8SVExJoduyANM9SS79snUZtBXKI9jiJoq7AGJhEs8ugYfbStbilZGUwCJ1XHBePYoAxSDRm8ErMS5qNFhBxatUu+RxywNhDvebDxhZjjo+sVzoKklai7pGb7I/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771270494; c=relaxed/simple;
	bh=iaWniw36lM2+TuL0C4xyS7fyn2TYQy7ZY2dNc4XZwZE=;
	h=To:Subject:From:Message-Id:Date; b=kETxxvDyQvMxdS6xqT8LMaezBBF/diKF2DYBIGxH4+OE5jFgnmc9KbedPnRBjmeWeftRArce2qgNZLLxePk3QC2Xs7kEbwLmsb8iJsUCUFut+8h3erRk11+IqJDvUOuIe+1W7vxajfW5lGXNTFFuXDuk8yTQJ+07a4ENXSd6/EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrONRs2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrONRs2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC482C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771270493;
	bh=iaWniw36lM2+TuL0C4xyS7fyn2TYQy7ZY2dNc4XZwZE=;
	h=To:Subject:From:Date:From;
	b=PrONRs2cPA9mdMD0krsuXTQduG4vH2b8hlamDdkcMJ7G2SamKpGOy+ZTrSqdZVasL
	 p8r9NWM1t0XC6AVnmOGK87/JdD5GSYA4NdB88Jyd9eW6Exhup45o1NCYjfzRwFvbAW
	 hZXAzzcUVMAIV9lZWq5HFywxMTsUnM5FYLGsRGZKlGSTmvbYh9bls919dr9h9vWwJa
	 a60/o7ZG8Uq5PboATwm+aYH4JPnkJv4qxa/q8wab+xWyoX15C7IzsmVeVGjoqyW5sU
	 InaIDXPfw7irn29prWdzchSJ76xoz/Ls1OB7qAvFIkDd8fZTW5sx4XrhTkaLFkFLNS
	 C7xQB+whNzNmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94451E83827
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177127049359.16483.14523968072593996684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36892a3c187f10b21cbc679dac736bb6706e7e12d29f29153f8565fc72228677
Date: Mon, 16 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771270493
