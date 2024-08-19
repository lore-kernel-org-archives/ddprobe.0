Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214C9145341
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724097354; cv=none; b=GIWv+wbyd5jXgxJPm4D6lMksK3ZwX+EjJBujcJrEXcu9LEbICS8Q6KCGII5U5n2w/KOb7mdjzlXNkuhaLwJZE5W53uEEkKg1pGHb052iM/u0odlWsCd5WLAwVbMjQCOI3WuN5SLLanVioDddpNHOWiIsaFQ1w8OFueqoG+68SLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724097354; c=relaxed/simple;
	bh=cEBuLc+LrJ+HLG/N6xYHPs27R1Nzura0tJqq6TkBheM=;
	h=To:Subject:From:Message-Id:Date; b=i1+sDWO7cSTO2XeU2PE4R10ssQhPpEjpZOap5GnjsURHr/QlBd4GDpKijRpaZQwZPzL9S8Bq+otOm4CP5TF75WYG+J/FuSvtiwrhBNpOVORJRIF1lLOFxn5pRKwe+bZpoRDlAANJaOgmNaATyS84CFRhxITTtqYV5Gq1gVJYRZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTcvge3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTcvge3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C16C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724097353;
	bh=cEBuLc+LrJ+HLG/N6xYHPs27R1Nzura0tJqq6TkBheM=;
	h=To:Subject:From:Date:From;
	b=WTcvge3+zkOi7P/oZf73E9gSmv7Wp2WOo/2b5NZfwmNQ8A8v9jDimusDd2cTeNhHg
	 0nuibG8ZDzw2ZKvyK2ZUwcxtft+k9tQEvN+CYUTMQprhmt0AqlLVapZOieR1VG9REd
	 hmNZj1iUUoqWLAYV8f2kdG3xuUL/mnDxzn57Jo0id8CyScDB1EDQ2HQp7AZ+08CzYX
	 74XA+azdVwmeQI43wpWBEXW99+kcztaMoQQ+iZsm3OXcY3Q13CO9S2wBCw60J0xfA8
	 DHGdMnZth1dC7SpTF4TzdAcD2e3A4XnRijcw7ItAMElVfnJYCyTBlbI65qjZXjmH/y
	 Z924caUwAb3cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A25C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172409735361.10830.9890699865791495200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a919b2c1a839efce31eb8b33f60119b72ce261f015c847674e4703c56fffeee
Date: Mon, 19 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724097353
