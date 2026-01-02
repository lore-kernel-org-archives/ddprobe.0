Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C321885A5
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767381234; cv=none; b=aGF6OIned8DFZKFvQ/LIQV+162HUEjer77Y++XvnLUUX5lEGr1aZkAgmpBkfBznVomyL4JN5+puzLyLNJE+XIUL1SyFUoZ1wS8h+LJGkM23l4QySMsXosr/b7Y0NjCZgk1rNeFTGb9Xo7p180nPH4bPHvH+CeyO+7nFWGEHt1fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767381234; c=relaxed/simple;
	bh=+3e9VbKH8B7eb9jYU2Jj1OkUpW5y7oyvN1lHyf9ZgH8=;
	h=To:Subject:From:Message-Id:Date; b=c0wHRuDggBncC4nSDauSKm3S65IVdIRrCg4ySLMjE811beQh9mKmc05bED6X1uWmuaWfZYhAA9Qnjwy+K+/5JIHrp/ocyi1VAeJP0vuDU6mxK7TB955EeCuUdrUvyu4T1OmdsWzUMXCGgMN+DWi9FanTCLGDcG6ImshBQnpGvCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIDBhEz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIDBhEz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6618C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767381233;
	bh=+3e9VbKH8B7eb9jYU2Jj1OkUpW5y7oyvN1lHyf9ZgH8=;
	h=To:Subject:From:Date:From;
	b=pIDBhEz8E83ajwHw6ER0BmItFaut/OUijpIeBLrKxf4HeHsYd0YQ2CPBeg+MNMA1y
	 B2BjkwaV65+GxKk+5MV+MCOWpuKlQhZwqEXqpEWqbSe8v+Yfe04ZWYuEJKGkIzW2P2
	 Lcz9g6xhbovoZOZStAAgxZhqRL7h8pL3ALEiXx0H3BKA/AehW52ml5NIrQ9zv2aRAI
	 R040oYP0J2Mxe7D/F8ttwPGm+2XtmaPRRVPD8h8M1f2EBL9OKab6Y0ABodecK9Qnlg
	 hOliSHnmRNGk0bNuyLMTO0oeaOHEvFi5Sxh+/vWxFIMfexor6f0yUYXbtCBIAZU6wc
	 JN/nNy/hNbSjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F47FA3753
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738123357.30742.8458552263880398306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c54f10e5f4ad7d994f2d9ae043797d9e230a9407eca914f416998c2af25f0e1
Date: Fri, 02 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767381233
