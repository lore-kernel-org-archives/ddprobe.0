Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62148D2EE
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 19:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716145943; cv=none; b=TUniYXdEQ+3RHmVJ9wyXGCbperaZvssc5V1u2/fyFO1xvOrHKpqN1lfgDY5gMb7DCaGIMEN9BTXum8wn08ox9Svkv/mpzrX7DOC9dIxAcdl566EYXDSoA5hQvyFBAq9NWg/TeQcCARW+zS6CwUe8hZIq4KY6tI4GtyVH/x7Ohnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716145943; c=relaxed/simple;
	bh=31OGWJXUihWaPyiwdLPIuv4EXgLXxFHHdbG6kb9bm60=;
	h=To:Subject:From:Message-Id:Date; b=bewWBRLBvSNyReMsUAbCYQ7Lv/GPuENsYRuFUvSSh8DBG8IwXgzHCAEY2oxrGIUgt0MUqBe7dZPNUNGfOBp7pGPDjWRUTVREbVvDqMiW98V4nPWFQH9y6CIfqKQdh6FCB2KRINmKD1bvej7FZlV0eOi8xsDfsTAGAlqHQ4osSzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrzi0oOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrzi0oOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0078FC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716145943;
	bh=31OGWJXUihWaPyiwdLPIuv4EXgLXxFHHdbG6kb9bm60=;
	h=To:Subject:From:Date:From;
	b=hrzi0oOD9yqr2kuqVlEKW1/CLDKO4sSHUEeVU3vaNclgXMwodsuLmgAZpjzzFWatJ
	 zNrHNuMkJ2+8VVOZRIm/sDv583jaWDMUvC6nLeLrmjlseHy99y1nvYMtQmdVkir4fg
	 JTb3/4x+Z4zXyD2ZAbaYtH0einzPVt0w+0Sgl/UkGdOUAkjaA8dRAVkbcqz2ShLECN
	 rsRSMbu2JweI2daP7sEnDRKQWVkBseKcrF/NV5OFL1BTPJW2zwXr7ezy2lC8GODydd
	 kjsPa/ZizHlgpCKK6snj7qoh8psQGyK4uIUn1dFbBFkko8rjTDShsXoDRp9MC2hSqq
	 VjEFg3aHElVIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DED18C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171614594284.10688.13763359309095729463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e1a380606b4abae3a7aa975d1c1857162852a8f75f0a1d8997369243bd1132
Date: Sun, 19 May 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716145942
