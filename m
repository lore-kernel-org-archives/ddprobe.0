Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DF72EF2AA
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752256193; cv=none; b=HfEVx327h8nFyNyxTQ7MO2K26vuFrhb7Bva+m0ayz23eoxJwNphrMXZ6/4w/RHRCkWhIwJTz6+tf/xVzb4NpESMil5j6pDwJKOew8iLWBkt/bDCnk2dviKqQlrdCuJH9OJkTRFQdfrnSiI+w12E1Z6kn7URWUAKRUgUAW9JZojY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752256193; c=relaxed/simple;
	bh=/BC8dZBZdkkp+T7ucwWxQRGc4YSWdDzfsC1+AlY7lRM=;
	h=To:Subject:From:Message-Id:Date; b=rLi3UTJ6se92Wid7Suucuq7wdFoBaelnV4iRFo1M62Glvtgkzb2QV9FdQ0JeJbbqFsz63/jHTCmH7PMKe85z5lQP7d0hyu2WdGLugwLhwfpJvc7nOn6OrgZfKXH7NYRaWUJp4OqH132mrBlvrv+gsRKxl0DFw0dzXtWihf/9qJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKdz7xPr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKdz7xPr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D7AC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752256193;
	bh=/BC8dZBZdkkp+T7ucwWxQRGc4YSWdDzfsC1+AlY7lRM=;
	h=To:Subject:From:Date:From;
	b=NKdz7xPrTUm5t91T/bhpbdv22R6uRM094/WnjHWnzornAjyXcoMPnBxDTMln3r/8M
	 kO8VGPXDaE9QQofeKHs6KeZGYK+Zp0di6hKMpRf+IaGcVLnbjIuHf6qJzTAnFiM6hb
	 Zv18hqjktxKE46FcMiBExPynoSAZLW8suE/u2xPvK1X2+96YMCdCuu3v5LxJBd3PhS
	 tZZCASp3VWU9+ShI7vpOMn3FVlpNQEkHWJrjikBpvJCzpCiQiljglEJpSVwNHOmt7v
	 wLEKbpdqtkmEl6WWqUxScIy3aiD+8yHJ3nZXdeLEli6a2ZofunBdrAnvUc1fmENz5t
	 GMli2KQjbpgJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927CCC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175225619358.24562.7227465860772085985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa0f74a20186b2ac804c32c90e6dc7a158c99a2ed7499b27a7c6085767b8291
Date: Fri, 11 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752256193
