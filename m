Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281D7323E
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749430194; cv=none; b=o3n3LEpNjxz6y2eJRQx0gyCHMI9GfFqpWMJzvBuFE4hZ7LNWpNVdoocR0PLQdqrNgFFb1PSHolxfd3SFGCSDHbJE2LHE40wzRJQDplKQaRnc0wNTn2CaVSYRTQgrP6BI/EGkIKK08nbVvKBtEJj7Hysq9sZt/IWgYv/X063LVbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749430194; c=relaxed/simple;
	bh=tdF4trUUxc0MMbQn8jrUtKig/ed6NakXM+JGsP7kR28=;
	h=To:Subject:From:Message-Id:Date; b=KI43fJ6LRs2r0HH7nB/P9ZvBzzhVswYTaFMo2WpiyJ9SBCT1H79DhfzCSl9W6Sz13+qyCP6WMkHkhKvcR0ibkM+McXBs+dJZLrwdjLQYrruBZjhzn26cDNhDCJBBfGnJ6m4sQgtiWFVGo9F5RenhltXAcrTEljFWcsyJ22pDwWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsD5qKIq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsD5qKIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9888C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749430193;
	bh=tdF4trUUxc0MMbQn8jrUtKig/ed6NakXM+JGsP7kR28=;
	h=To:Subject:From:Date:From;
	b=JsD5qKIq14D4wxv9fQBE4CiPWH73c8iObrXDRs93iIzDUlkvMyKqSy9PxOChpfkCe
	 CDSZc9NMnA9w6BBAYsRfS3bWwvzRq9IA/+Zu5v/a5S5Yqt6MdlsUjhNJTp0oTeq6ks
	 FYGA08KtfiG6JqGLTAw8MCHXKLl8ukaVi6xX+/V8DnouowKyo+r0OjZL7nirNvKnOt
	 PNyQjtZwPmMjWlHw/RWzhW8OPLPIRlD651YuNiUEmp8PxH/38OE1wWi1BwxGcy4bRL
	 UXwx2t5YeSMd+THtnrvLRwtTEHXQlBwa572LMcGQW6j6JbNSZuw/aMQhtSINeLT47J
	 IcIcmmV+oyt9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932A8C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943019357.24900.640671069179580744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b56af75f3b9344ff6ff32d60eca0ef691338b7d6a8cfefc6d998436b8c7b1dd
Date: Mon, 09 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749430193
