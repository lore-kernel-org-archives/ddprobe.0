Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642F413B58C
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788480034; cv=none; b=bdTlug92e7X0sA1+JLmGgq76Upqlwe6UtGGU1dXo9KuDBajaRSYP5RGdN1RBPnFeUI2L4F5UrXJhTjLfL1os5PAGrvCWYHNWT26DALs+yY4gkvXlUu1ObDkp91OAoRjvHMPvcd9GCrAaWjTnvp+CVJVkUEniR4yYpTqzyOd3v4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788480034; c=relaxed/simple;
	bh=R76C0jOXT006WmXwAtaDsP6i/7Eckob4IzgR2wIakZU=;
	h=To:Subject:From:Message-Id:Date; b=bvtp7YC18uhf8PtnRB0nfjdPq5olNEZF89vJLbdiBDTnGLEdnCO4urIVAgxQZ29uFTtQXqckpq2OLtr+JcSwgojJPj8pqgY8nMnBoALvNcqgAiQ+8aD2PNOD8qlwOjISnJBDo5cZw/mlWyqxPPL5NZWP+1wlDefx6yzY4l43OZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKtz8S0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKtz8S0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB74C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788480033;
	bh=R76C0jOXT006WmXwAtaDsP6i/7Eckob4IzgR2wIakZU=;
	h=To:Subject:From:Date:From;
	b=fKtz8S0HjeyqjQFhM9WKRHp6/Ol9OobNpS5fI90ouil9WFw3Qzl77PkMduaxJs+Y2
	 hC25aYYq6x0Kx4VC5ULdr7OuD/DlaGBE3E8aw1zQ85Tf+f3UJBDyUdB9uKeoPMNsXK
	 bbbxAYLxQZLysdLNdWbyMA3/fHWu85oXfKA68U00sAZc1WmnnLfGM5IchFeGRBD8Zl
	 lbwhfueRLUvBO6uABCd3taHD75Qf9F0YOoFRp0i2e+UuLFQEAMqojrFTmee6bwCwxd
	 /ANbPJHeurOGKOc0JI/fXzsf/wziZUfDSmv0OKO+j7Vt3i59UbWXzndlohyuIo8+3d
	 uDRU5DvmJ5mBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65E5C61DD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848003373.27619.6386730099589849038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2305e357877373547cd39eff6f3f6b77b137a908c8078960b2bc6300944d97ce
Date: Fri, 04 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788480033
