Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117FE13FEE
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777204054; cv=none; b=HPo1GynUhhQAmslgsyDds/4Wh2DbjS/G6qPVZ6lps/iOUiENXNK84lUhXoa7BHskO10n0qE+fDWr0i39pPvxyksQRrUgDEruOZjqDKThrnLwtNI3dsLPbiId5jMsYw7dzIXtcM4bN1WzsS2co7KCVMMIlqavzHgJWoJ7kGFdfkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777204054; c=relaxed/simple;
	bh=j8wXKgB0x2V+PW4pjO6uH0vJtjnyTG1qj98uRh0apiA=;
	h=To:Subject:From:Message-Id:Date; b=sK+/U3C1/PA1346X1nF4hFOrD7uDKlaMeyGsIw7VrfuHGpk+U+/oh01G9PogAuOtgMZXqv97mMu1LuP5WBL0YbM16mWgduVpJNa8xh8sXVwL+vOYov8GdE/H7Wg5C7UR1R43gtP4OKg1wiNVP7wfkHQf4h4kbHNWyYScMgH9ZHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5oyz6Wq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5oyz6Wq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBFDC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777204053;
	bh=j8wXKgB0x2V+PW4pjO6uH0vJtjnyTG1qj98uRh0apiA=;
	h=To:Subject:From:Date:From;
	b=s5oyz6WqPP0SfrnHvvLI9zFvZaBY8WhgTmhj683fa2wUwA9t9px7DYI+aMLtkuo+1
	 k7LL06PGO7qZZXI+/deeIBCqH3ZQHFjO7OT3FGS9HgC+4jPM5y7L6rULm711SOZPqI
	 ria/ub+GitS0bFri1kahq+Bwbng9co2jJ9FuCBTli6Osqb9Zp6hZJWkBdAHJUXRF4/
	 6QVL70Fn4ijFQDfR/2pVJl2PZ+KevPLtFLnprMANcHpIhbC6qzEH6pZ46jr9pZuU+f
	 AYwqo/NGJJyrGPIqFXkT868X/ioDtucNTn0/B1rfmxxlK/TZ3ctHSR/om4ki8N+jh+
	 6czOwplWqD9cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECB7FF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177720405368.22572.10954921606893312232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14b78a25d7d326fdc04676c3e7d841a34d32888af3ca2dad3d711934e234ebe
Date: Sun, 26 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777204053
