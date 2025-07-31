Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220082D0C8C
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753970394; cv=none; b=lGxHVN2Z7wClfZGR6hymzdQwYS+xyNq5pooNY7qdm7NFZXFJzzLiAz/2JiqA0TL21M9/q2IIDo3/ud6ZuF2AER7AnhB5v9Pew1e9j9+BQLvwqd8UhHmT0MTzBAlapTbXwhjEmxBKbM0b6TVilpZCuDl2LL84uMmrLk1uNESFBLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753970394; c=relaxed/simple;
	bh=2RMBlS9NFnv5CAuhY7rGQK7uyZeadZG7GxjVxy4785g=;
	h=To:Subject:From:Message-Id:Date; b=O30eFndVt0RPAEvLePU73WAMJFOGoIJyBDkuFx6Y9GqPA3McmBVKzhRaASuWn/BVR+ffOWqo+uJjI9+/ckuYvivTcK4Qb5IjGH+M+XCaQ2v5oc+69hF+Cjv0isUKyR5U51ui6PT7cJ92HcZhnTzWD2tpY/yCIS4NEszT1VmRl4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TO4qBaCi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TO4qBaCi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBD2C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753970393;
	bh=2RMBlS9NFnv5CAuhY7rGQK7uyZeadZG7GxjVxy4785g=;
	h=To:Subject:From:Date:From;
	b=TO4qBaCi9HbHU7jqdx+cQ4/StCn2bEwwoL4yMP1IWgCnUGH6GNwJBRx046Fh7qBYz
	 E08vtud8PHGVqTh2gnC4S1u5rqoh9cO3HeaikuFd6e5MjQ4GBKcrb64DklFGtuNcoi
	 c/VuWL20p1bd5PvyGeRIqCVj9ZV5IwwKluDKlcCkCQRJVNTaUk7wLSBLx3dh8IjYTp
	 +Wts3rC1a2le2z/vnxH8iqIJyJfwULrOerGCazjIxUg8QR601Gn/xdWR3zUn+j0bii
	 k3M4iV7MJGwpCoIQACNwohUDjjpipwIF/g1uYQuSQf3Tw5PG96481nzOygQfaonY/y
	 +tQcsK7LDuNbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E053C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397039357.3580.10258634911550830821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375e6c401ff814d396a6d07c3875edea0080e9144873825befb6f49432ba5c8d
Date: Thu, 31 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753970393
