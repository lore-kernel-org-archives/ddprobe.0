Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285161420D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727858155; cv=none; b=nadyQTbc04u7fL+spsxP8Zmk8z9tXc7XSz2lFRXt7vkSjJ/6pda0iGW9u1iKnQEMKNL/jrtYBTpy8iDvuzW3Cr8qPww7+VVbw1UrlpGpJuoC8coVqJOu0X3Lu9yBzx+0tQQDwPuDNh8cTlt6MHbMClx6lJ6rw9vdPvyoA7VEU7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727858155; c=relaxed/simple;
	bh=+m+Ny/ZFPIyiWsQ4xCaLuIcbUzZf3Pl1yK9GwX56KNY=;
	h=To:Subject:From:Message-Id:Date; b=NR/lri28SAgxQ7Og1PiGGeedOD7I6walZJfIoRvdpGyo4gdw0iCsnYKX49sdNxiqwcpxv2z9LrWe9CCN6DzfN3oTjX4h/vhwaygEq71+0dznepBX7P6y0b20X+a7S4XY2E5QThYdMrwLrLPMxrzxLog5R+laUJ9p4/BFkupxXQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PY5pFqWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PY5pFqWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5965C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727858153;
	bh=+m+Ny/ZFPIyiWsQ4xCaLuIcbUzZf3Pl1yK9GwX56KNY=;
	h=To:Subject:From:Date:From;
	b=PY5pFqWPkgFzYE5SEQO3AibOkLMW4Gxglx7PVlMrW0chrdwwpvwcqT5HTwa/hRHgK
	 qtl0PL/mHRrRZGp3VEMIWvWkrd+uXkttsNWFAQETO4zBiFXuy2f/T+42rT2X6aYJsD
	 MyCNmU1I61gBQLD1fusL83iffpRaXABmqq1eRr6kJeEdzg3VrR6jGGYkx/1Syi9mVz
	 F7tiUedvCLWsqNFbNpWwwReypQPP9vDk2YKA9wnzIOmsfrWMCNVclN1XyQ1bBEtjCm
	 wkrYB2uOtoUtGN+lGODwSJjcueMjNDKeOdDcGNrxXmnNeTiKshUdhOXjTLIAMkSi8T
	 MvUo6JF9esfDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AEDCF319C
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172785815360.538.16227960454619184942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c416e2c82608131489ed0397350f379c96ddb7ac65d8fab09dbb3998d923ff2e
Date: Wed, 02 Oct 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727858153
