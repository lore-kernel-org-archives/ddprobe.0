Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245941F61C
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727321754; cv=none; b=Ka4uvysEEPvm1m0Ol6vIVPcTOI+mDGFTp3slUphASaNsyDUi96lbfZDD+l5uM7FVutPRCTjxJuBhLvmyypHTuZJgo4RgBXcJR+eXoM8mYEW8caWk8cDBSrhTcbNy88JkfOV8w0s7xCPFjEvWlDu/Dr7+Skzfn6/JCrrNTjVnqNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727321754; c=relaxed/simple;
	bh=DiGi+7ur6FMQBJ4IPCiLH2bKl3LRoI1LRsmwjNKG36A=;
	h=To:Subject:From:Message-Id:Date; b=DY7vo78Q2X3BCIYXqgyRCjXiWXITzXbFKA7P1fsxrLi1lb+hfQ09VoCWe5hOsRKIwxRFuPUlAWoyNOP+Rl9iZgnL5SAs6LgYW+hVreM7+o6v/8cBgJL8u/7OYVYQO2ebBopnch1wZfHfsZ4heYUcQmMS5FcinXyMEHOrvggZWqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFIEROll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFIEROll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6D6C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727321753;
	bh=DiGi+7ur6FMQBJ4IPCiLH2bKl3LRoI1LRsmwjNKG36A=;
	h=To:Subject:From:Date:From;
	b=JFIEROllIOlFTPqLIs3ZYvt4RKMyFlY0+oDlPXZ+joK+FZIsJkcfyvkAW3bJGhxmb
	 j+eiAbnrJkdqhzClX928D3huDp8JaD5lvB57a1mHaYe3GcJkrrwkPVlEHshjYCuJ4Y
	 h0MyCFV6G7vlZrFSND9Cf9aQV40cQjqFS9jWkOgMTwXAk/WQpy70+g0BTqbmjkk93T
	 mx6AoocPa0RH8x2dFisgZQnw7lGhJCGUeE/x2ckjHkQy2We2U+xnMT4uXlKII3HH+P
	 LEDubKCjinmz2R3kTWm8fvoxE5WP2buXOcNQgVH/gFYY82bd0WYrbKCf/bfwrTbwQl
	 4LsykHovi0Zvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E41CCFA17
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172732175360.22439.16872490162520470279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4af43968af3ffc9f0555bfab45bcbd67f35ddf6b98e0f48c7b328e8a1eb60c
Date: Thu, 26 Sep 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727321753
