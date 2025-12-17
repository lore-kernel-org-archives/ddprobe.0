Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157FD1428F4
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766005434; cv=none; b=kiZNVXxdPuo9/sJWdMuOR/ooJHrYtaHFg/3UuR5GZ7bug/I8sJMajaAM/QZDIdE91vjoZVJ+MPLJnbe8RlyU2wafXP3OZ5NiiAuBchD6S2XZVWpg+FkmNAsjMw9KdkjVG4NeF0w2d3CaF50QbOYp7xX9OBWSZo+XRZCqtSEBKUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766005434; c=relaxed/simple;
	bh=DLiKllic8EyOuBaEJqadNHOUmhnLyUe/hefB9COCAl0=;
	h=To:Subject:From:Message-Id:Date; b=Lkb68votEu3od4DvoV5DVdGjbH5cZ3oZ+JqrLPuGVHMYhpReXnlb3p+epDBRtxtWe8ajy4leHtnw9/Wj+hmYfp1uyoR46vbOr7GDJ68sLS2xQ13Owo3sCMY0yj5zvWQo2o+lEljFpkwreIk0A2K1bjwHjepO9XQFr+ysXrDe2gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dg8wn/mS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dg8wn/mS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0014C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766005433;
	bh=DLiKllic8EyOuBaEJqadNHOUmhnLyUe/hefB9COCAl0=;
	h=To:Subject:From:Date:From;
	b=Dg8wn/mSewxt8ZOYh8t9J0bFx7Q18RGFiXIhAt5otkYDafxp0UCkmIUEPAzKUeDzy
	 J/B33WeEVWvVX4BbZOrphqP3ZvQomWXz4Tzl/H98lPUrQ6lpUVll5sT/YnlkKCnM7g
	 aE3/8TBG9LC/2Y58KXVvN+56bzMDoVYMDuOnQa67foRb22PImfPIXT50xZ0PplODAe
	 eVDk0UxTAJQ1TmWMNj+jUI5WSrxvfnybmvdZUvkUW5s47Us3kuULI6PeTCLP9xpbAW
	 wN2ghh2Lm/phH8zN0fplNZNoug+EAHLujzqM03jkQCJc7iiK24lzCJ2riEPG0uKhQp
	 RLNM9dJBkvRNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F6D66BA6
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176600543358.25281.5101757356967087107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0266746acc0147e653aa76afc1289df125f290876c490a84417efc24a5e4c3b2
Date: Wed, 17 Dec 2025 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766005433
