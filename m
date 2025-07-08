Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DE52E174A
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752002996; cv=none; b=M4GRExj0ahQU9n0PaDS/6aXwqn9lhqkpgu39D66hoPmZ0Hk4/tI6Tuk+T6YAjTiR06lSclyrQUiyNeVpw/qn6qzhUWrepGN08WRamDB68KzsxO4zUNZBhbY5ROCu5/3m83Nr6iraU8cyVPbmgCg2/jgOzaR259Dy89BVjYnIPbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752002996; c=relaxed/simple;
	bh=5C+6Aq4FNl9/f01hsehVtA/vgEyCaXEnKOd/hTe9TzA=;
	h=To:Subject:From:Message-Id:Date; b=RkfER1boagUngcbA7+K9i7XW+HdBHZE9jtsvgwHpkGMr5EvWn9JPtVmaKgR7I3v/3zkgtz5MWlhtCqZ1xE5HaNIiNgMr+ktjzSrmlE+WBe8xePtzkGjdbR1owFX+3TVLLO/c9WGmo41UNKT8FuBf6juUPEkfoOdkPmaN82RHroE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5gr2CGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5gr2CGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37EEC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752002993;
	bh=5C+6Aq4FNl9/f01hsehVtA/vgEyCaXEnKOd/hTe9TzA=;
	h=To:Subject:From:Date:From;
	b=B5gr2CGfknyblfNW6lP2ZxYL0qaJhhfR0oUSxfc8fo3Re45I3k9ZQONlKxsU/SzKQ
	 hFqGLHFNP2jW8ubrjMmX/6oSKA6hng8KULHCQA/H1HZ6g4XZ6uU/6oVatOdyFmrLOe
	 K8CyBbbtAjnQQRsWzDknQil6iHB/HyczmAGyckCfrmR+cLZBNYX1/7hFn4L22wocen
	 G2sx1qsXr9M087oGGXXP1J2YpVPMwC5jzwGALb1/xz0tBDnh45/UbHr2rDBajd7JTJ
	 Zzoi8fdQ+RbBDo+LVcBQQM6VZc/mpKOS+U+3tpN5d/0XQvzBn6wxbenLZ9ttpTQt4J
	 6Znd7DpmqyB+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90688C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175200299358.21992.14324821747862588550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b2469044bfb31aa3e53f9c208556fbff3a3d2e8274299d07b4365566fc38ee
Date: Tue, 08 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752002993
