Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346151A8412
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737142554; cv=none; b=XoMqB4gWDH3zT/ok7YnrMcfJWSvn146OwuKMYqCfQP3dqjxJhgK7yHKwYQjS/QSDUI2Ccw6QOfN40anQLRHBABx1EzeMbc/0XvLKTylTaSSqI5p8f/TzEKpSu9KsZc5zOepR+ZOnDtkJKmUkHmt6myKRDmJXvRumowe7KMKvwuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737142554; c=relaxed/simple;
	bh=HdydjaxhNrLBnRUTMVKJO+8ce3HOQMp4MwSmHNUddt8=;
	h=To:Subject:From:Message-Id:Date; b=WGiDwsjUsyMPMzLpJhK6qHXBdtc9Psw6ocDPV5cEt4X0TwICAbJD8vu0VUaAgtOGqFeosKKssLWFpVE8djfxSCsx2MB84zWspDQkb+J0xHp0uScMv9DLs6FacdVHiKtoM43KoDn4ExS7/gnMnZPufM6rjpBh8nFULNK+3Z4NwTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFlr3Y+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFlr3Y+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DC4C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737142553;
	bh=HdydjaxhNrLBnRUTMVKJO+8ce3HOQMp4MwSmHNUddt8=;
	h=To:Subject:From:Date:From;
	b=mFlr3Y+1+Nzspc3bQheq57DyfPozvMJz+jTzPabaVyzNH24mGIcGIwL3yEk6x7aqx
	 ieuBQ5HrAXImuIxDWcwbSpRjtSBh4zoqnwNo8dTWxRWgCjqKW9fn0SOC9zhvyXhMhy
	 ajddN5Idx83WX3TKH87RpvOoTOAePf9meUgfhgHEzI2N3YyiD8lKzF+ltFW8CMRt/0
	 tNlIPw1ZIRvU4jdu/b8qax3fBzdzdRCJI2wWXCiws8UKGRT1m/zb6ed0cKcujwLrKx
	 k8UsONicwycOdmkqO7e84NFgLL0t6J11K+cj+sB95NxNOFmWG+KiJj1KTSYVeR7EjW
	 jTsOPA80G7rPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92425C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173714255358.31379.8519126629526535989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db81069de6132775b59e9012d46f49761fbbeb719ace995ff8142bcefe3d5329
Date: Fri, 17 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737142553
