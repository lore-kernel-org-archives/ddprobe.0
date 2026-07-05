Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3243C465
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783215514; cv=none; b=fhrLJvfl/Lq9FLnFd6alPqi08bLF7pt4mbyTXR3N0xXV3vWY3lb9LtPYO2hdWf8eSG26RHYT+wp310gPRHLyTnTUjsGQZHShxB/qF5Y2Ieol/IUfahCXOoxAJARL+yO6YYz5V1s3CMyxQ4TNjVJUXrUD7SPzf20aUOS1Ilo8o0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783215514; c=relaxed/simple;
	bh=gAaeU8BNA0/tCP6rWZXVgCcI0sw+YkHPjFFRZy8NOaA=;
	h=To:Subject:From:Message-Id:Date; b=J5p+oJLUNZy3/ylwaeMLmWkyTssDsbkPNTpl2uo+amQJ4xrLE01E7iIn47InOQ94Hn6rVnJyizAJcikY8fjznsvYZTP6GgsUrGSUkNIDjNnb8gI85oEgfj0jzmWo0X34yvYPxOSGglNJzuvts1B2T3iHw5wBIChxfjLia078W24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwCBwRe9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwCBwRe9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF457C19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783215513;
	bh=gAaeU8BNA0/tCP6rWZXVgCcI0sw+YkHPjFFRZy8NOaA=;
	h=To:Subject:From:Date:From;
	b=IwCBwRe9/JPrPpR3CJORTtNUp7ENNeOPxRc+n2sT0VK6dzk1q7PFYWnYx1bPkIDdm
	 DgGLvrs18IgMXNkXXOqCNByX5ybAQwwoT8c7aOsKtb3gKfNQIURE8oBcdT2rFbM8tg
	 i/gkDQI5Io15B46L1+jKPxLfpWXJ2J+VIkgkO3nihPDpI2wMSqNgJcPJeZdlAm2VrU
	 58aAMOAl75zfDDNumr1l3XUcvrcC9SALFiqHJp/Q2cGJxbAtF6unDT2iyGWBXjRj9/
	 oLZPG6kcvWs9K6eQxmrlHNGObTlDb0n2SoJaq6G0ItHgDHV//wzfA0fbO03uBSR68P
	 KbFTH2M8AKybw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBBAC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321551368.25504.8042270622131012432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c7862fceebd895ddb9f472a1a4a2d31d607c441201bc5e8fddf77e9b891493e
Date: Sun, 05 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783215513
