Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010331DF963
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769603034; cv=none; b=KbNBb+CW+uS2E7uItMidLvdHhYmL+Wvl5g+ecRHAdC745RIOk2A081qjrcZ+y6ZoEhDPt1iobjGmvQ/EitgZ7vJiEGL3IPcF312IkzS2uIaqXOCMcLYtRz0LjtFRJWYtjDTmcCnacIJnB+k8J0P9jqVCPWLiiha4YMiZvun8eKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769603034; c=relaxed/simple;
	bh=1ZpxxHYfEm/pIDOHnxxNtSgU0KUXKGXdejsd0v6+BsQ=;
	h=To:Subject:From:Message-Id:Date; b=PBogcYjdIr6YW6+3BXsk8+b+M+GBBPrqTKECxu4d3v8Ibf4Y6kJW4oUA0OgiSgvZ+V593pdhid0yn+tBKY7tePK5LB8oUUi1gIvuoq2r17yxvWcKVJXCuQsSunRpZmjBUBHKWEUCh+4oJpeqB67b6KbbqOyzStbLYNpa6EoyPJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugUGZwKN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugUGZwKN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97E04C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769603033;
	bh=1ZpxxHYfEm/pIDOHnxxNtSgU0KUXKGXdejsd0v6+BsQ=;
	h=To:Subject:From:Date:From;
	b=ugUGZwKNLXM6SGuMvlVGU/ZPI88sVabq7T7NvJ0NRYmxVB8XvIRzhpbEfv9EwLvvG
	 nokrHmePXPKq/p/w/3E2TjcB2WvIXooazBn0psOUDDAfOE4jUxI6ly2rqJSGsWD7vk
	 JcuDxqv8VoFXYG8JOUmcDpV5oqj13UKSH/EYE8iLnXO18XRbN6uJrN+o5YKhBx/rZp
	 XEn84POp0DwnRahK652y6ekBV/O9yB6S+8OX4C62tpil9v/H9+mxy5X2J1ogAL+mHa
	 ZksJ42RgMw9mgVGZS4Ys5wqdUGiTw/GBT12aNmsVougFEIQsO+f+uajkMsobmn9+Z1
	 FbIG6GdNggpQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901CBD25B4C
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960303358.30761.2391785548057079800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c56478369d41d2e5d7a7adc9dd4f4153bcdc674452a5c41dc15940de9224e3b
Date: Wed, 28 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769603033
