Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBDA1509AB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758374994; cv=none; b=XaCTkBOooQO8ATVlAViSoMMjgUqHYruvQpmDmVpn4rzLNQfhggLq3cH6FZXdDV5WkQRLlmcHfYVUbYlLsAc+3ztfveeFtSIHtHeVt66/W4pJyrcqC+rb3t6EX5SZiH4qjmYKKAYRG4+wYEz0ip8FYKJrXdjlLABJFSRP1ltIMSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758374994; c=relaxed/simple;
	bh=9Y8mB5Fwvt6VboQwYL0//y/trpzR6cjFtpPENCRk8rg=;
	h=To:Subject:From:Message-Id:Date; b=VunQ5vQKpjJtyCFlhNGq6LascHvqCiUNH81TOIZ6GhPDJb7892RvDz8zuNoMWaBeJNWkVNsxigeGugQCVCCeCGSG71FBMwlpHWr0bEkp2KBa3eDcE7xK+p3+hoi4lOOD9DBEv0kKRIWDhiv+6bb6xF28yhU+4s+zMwJTZHhYA7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otjbexqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otjbexqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CEEC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758374993;
	bh=9Y8mB5Fwvt6VboQwYL0//y/trpzR6cjFtpPENCRk8rg=;
	h=To:Subject:From:Date:From;
	b=otjbexqQ2ZWmdqKX5z4E+bxdXp3SAO4cQLb0AXCGI34ROLF8fMS9zO9gr00ghh7JY
	 UPqnxe4T/ycz/1xNNofH6QFdW0MgRiLN2US3iqPIyWxQn86ZcGC3s1Yo0oMycjNkEP
	 4KJsSmez/tlxl/O0DUmd9Dx48Yj1v199cp+eKgH0oVSnSGNuzlDWGl4l836UUOg4e+
	 iWxg/bYW2CH5l/OOvIMMObx/gfAtydFjU3pxdpZiJgMLbES3yzv28cFPDwKsW7M3my
	 zbwaKYhbeFwP9DSp5iIaINCMl2dKe9IzBFCK2eAeRiwI+H07HpLKRYSHJdg1n+BxGZ
	 SFqCIjnXwRa5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C2DCAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837499358.17934.10204620995002447708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7825728ab2818a0d3de97179e58d37d96dda5f403e156424f5ba378811725a
Date: Sat, 20 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758374993
