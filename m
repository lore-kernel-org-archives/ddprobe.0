Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1662528504F
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770932094; cv=none; b=cAuoUAsoeEz/bPoFwoMLrM+WYtW7QJmkGi7jNMtGSHIJzf0oXBqZHQ1eYibXxv8YMGzFEukL96ESPvqDcgzMbH9OonhbBRp8Y1FNDH3IjnO6/uect+3yWFdcmoYelJigvMIl4gVjGAFqbOr0BDl9CxQyBdLBOjIi1m8b3PEroQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770932094; c=relaxed/simple;
	bh=vo0IwuRCOQF1S8vkIzeSV4HfjSue6oSOsWobhahds34=;
	h=To:Subject:From:Message-Id:Date; b=VxDcG5qPSp5/zgu2v5WmfV7DMKdJ8Y43ZUVrtFFInNx6ZUB25mf9jX7uKoyDj8Wbs8uXjcD+gizww8xO1MfUGTwIoTIP9fZC0g/88oyUTUN99TzelkJNtI6p9raEvDIpJMxMEJTW2J2ifKBKM4xmOh3wdhOVXeixgxHdUBA3yxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdjIXx7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdjIXx7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A2CC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770932093;
	bh=vo0IwuRCOQF1S8vkIzeSV4HfjSue6oSOsWobhahds34=;
	h=To:Subject:From:Date:From;
	b=QdjIXx7sGuG0LNjoe522JGtSMfdV1k6g4Mkbs0LcBwOeUz3kwLoXdNCmvaYV88iM+
	 27PCPvqzDU9GUm7NM+i19961FVM3h4B7DI4RymOluYeCc2XcGbPdH/zfaKWWLmwikQ
	 DccETKDDxS0teg4QMYbMxgVhcCGtuiTWt8WP2f5dbZQHVrx616ib0Lil/WhvqCorfB
	 yVDi7RBottp305Sl7kaoa1vyXrosvGzWvvRxPb3bHOw+xKB9GZTPZZ8FodA3QdYPKd
	 w2VhQP4NJr/9+Y9t/lHf3MCFVfx6/DN3HN+U8TDvmNQwwuKuZjekMdeSmVrtnVNL+/
	 5c6jErAkoyKSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C07FEEA854
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093209362.8919.8487368341138735857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea83260be439ebcccb4e850048b02c7fddb7f4b113dd85c5b57f75fb3969159
Date: Thu, 12 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770932093
