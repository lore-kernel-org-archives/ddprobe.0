Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344881531E8
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759048794; cv=none; b=iJMNpkh6vq+BOoVvlB8hA7pdSeTMrtJK2Ik1uuOWVtUt/LbnC8RsrPoKqpXynfAbH9cR0ChKlp/8UexiPpI1TsSNezfL595yM4/VcngdEJBgdBE9m5iX3x4l091XDSh9Q1aZjoL03fPjyrL0RiBX46TLK1WdV9AlxBEqOiVtla0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759048794; c=relaxed/simple;
	bh=A2y/f7hOCbNT6IJv90VaBcPuYD/7FxyPj4DbnQlxRjw=;
	h=To:Subject:From:Message-Id:Date; b=pDHmmUzcpJQ68/I9g67fdZoIJdEey+dO84Eq1oyBfKbWn0Ey9ztPyJSIIzWcWL2KMUmSV2849v4FG0MOCf8nqoRRYKlEEFvmJW9cTMAJ38es7oLQG9x4SWbDjame6eIKudsAnsudOasJ9VFC8mVHK1ItcVys+lnluLwXspnMoBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gaSpF0de; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gaSpF0de"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A14C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759048793;
	bh=A2y/f7hOCbNT6IJv90VaBcPuYD/7FxyPj4DbnQlxRjw=;
	h=To:Subject:From:Date:From;
	b=gaSpF0deP27HGSfDe8cuLmd5i6m2DrsZbBZ4eQax5EAmoigMV70YZeOzFwXltM3We
	 hAxfHhmrIG5pusAPVIxDboymVgMVJJgrtQv5Okb4PDsdzmnHRRefIqI5U3pC+2jV8z
	 HzcEBjKMwLeemjkEp90G8mu5F4Fqx1DAWKhCmbNbgouL26oBkLcoPxZaT3CrqaOkAV
	 s1XPgTCfvBYKx9k+xe49oCobcRPvh04oOpIUq9C/tCvtJQ/WlNyzMr9z9KqUi9ny9h
	 zVIlO7Ea0bTq8iY0LCdee9rg99ZhGaP4JjcBbbCNPK7YtkxtVT1YYmQ8xBQJlNwVg5
	 s39i8MjQjWCBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B1BCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904879358.17259.9752487581526291099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe4b063e943bb661dfd8093494f51fc353ce3bcd765dfb5a41b0e85d2778947c
Date: Sun, 28 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759048793
