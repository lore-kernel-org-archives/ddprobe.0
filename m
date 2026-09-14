Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73F743BB114
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789383034; cv=none; b=S0fGPN3Sn1FMLfVJ3F2sLOJ7ymnodVtyMEPpHiJOn3FcW7kvGx0xCHk0yWExVnBCerSaTOevK4QXdooo9xHCjJFRcqcjjmV5e7DO0BhkdVfoOv2H6Il4AAmm2pu3h5ouOPuykymkx1UaYd4yVX6xxp66XQkkx2cXQ3iroTZSDhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789383034; c=relaxed/simple;
	bh=hCbYseY3y2YCmZXSDI0TGsSd10Guae4fcrUyk+mab9E=;
	h=To:Subject:From:Message-Id:Date; b=HnheRYCOWeleHSjVDUhCpBmu5dszPdu8MBlI1zmQpvFtXZPgh9DGjj98CmgHbKCzP+/LjoQ+V5fvwFzD2WerO03vjyiHPqjBZ1QV0OE+CqB163l9pLTr1GQcnkyb7FodIZz6HZEBHmZtfTj0UFTEb9FvVhge50bi0cu8yWCPBxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWxXmYFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWxXmYFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF07C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789383033;
	bh=hCbYseY3y2YCmZXSDI0TGsSd10Guae4fcrUyk+mab9E=;
	h=To:Subject:From:Date:From;
	b=cWxXmYFDgonzuNN95A3oQX5vpOq+iB4qjays/Ku3hyTDBgck2tkUZ0j5HpJO+6hzj
	 Fi8w1nQ+kE2+Zz90NDFIgh4iA7ijx/v3uoX94A+rX/HCnmsdYbmmi+Ef1YZ9lXBJSG
	 g1o/U6kpB8YuFhn0gulVKeby1qZV4vKn+HpCMFHJgEK4IyCN4j2jCg+eXxxQmsWSXF
	 2CH5eCQITiPi2ZQf3TIjTASDXDu6tWTiahXmdTBbKjDrMY5OWbYynNT9q+hNOLT3bW
	 qUtSBiAQ2k3GM+VFFD17OYA6YByzVSSvyRmTZpuNklwkzVPbFUIiccg5iMiU/PjA6D
	 cyLheDR54TZ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB90AC88E66
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938303369.4238.18207563302409986809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74dca4ccdb69c90e6b7f6858bfa191e415f3ac1e6afc7c2ea84e0d71bf6aaa1
Date: Mon, 14 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789383033
