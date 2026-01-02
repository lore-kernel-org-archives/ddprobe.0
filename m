Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AF329BD81
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767369234; cv=none; b=fL1+Dgpre7shRj9FyqsXjPGsBnoTsaSEhUkLTRJ7/ku1i69q5fnCBZpG1uKmE3La+U/ObLm10J+3S4JW77aNsXya762lEn4Ct1ee5YBUfYDYz8Z0DrGYpwSOjs/skMrwSgxCSEMa/JGmYt/ltndTg+swioSev6MmD6kykuqxHeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767369234; c=relaxed/simple;
	bh=vtb5AWcTDFQIfy6Thok7ye4oC9E3EDyY5vDPpBYZfFs=;
	h=To:Subject:From:Message-Id:Date; b=vGnmRo2QXkOD16XKGQApRICt4B5tdTal9O1EnyGIp16+ieJdiokllOUMlQJRPoLZ5B83gpiO8icEU7IOqymoRXw/B+92gmqBGyUI5jDnpwOdyGySAz4BZtmOeNi5XkNRP8Seb/TVECWGDvLC/6B5hEDR4pIH4GJ/lq/lVR9kZ4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1LsIZJo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1LsIZJo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A4FC116D0
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767369233;
	bh=vtb5AWcTDFQIfy6Thok7ye4oC9E3EDyY5vDPpBYZfFs=;
	h=To:Subject:From:Date:From;
	b=n1LsIZJoQmaZQ8lPHjhB2v6momg0v/kT3Z0zpJGA8j4LJHMvUc7tQDF4yv145L+Es
	 wPshPoxIWeD/zCmHPlF52KXTG6frIt3qQmMtzN2mWYMmjD/5S+JpaN2ZoaC8SVwG5v
	 LnpnBEw654cc77NSEV66WdHcUsWfjyf0/K6Mt1frrkafmzEiPz7YJAx4WvZQQutmk3
	 VgUCV55LX6BCL28PAWhxRlzxAU3nKpaPl4p4/Wm6CbNBOSjzPPAalN/hWM7eMC9wNs
	 6BZ/wDhOrc9V6KRPoPSC+6EXGZkYbImwtQV1v2nrQ6E4KK3BUfAfUvGrm6Lufa/Hj4
	 SZVPlqYqoyBZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A060AFA3752
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736923363.17716.3032540149328242277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef038eb19d2607772727fbd73e1aed283375caa55f601dea371c1665fd97da1
Date: Fri, 02 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767369233
