Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C13D23DEB6
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756707594; cv=none; b=dIYAR8NxVc3F1Gf9faqyq9F5cA+w6xcq9AqS2XYeTmndctksX1YLZY2LSEkrh5zrlwRbRDcwJlqd6LCsk/1a0Z8ZqnvfWLAcvOzbsU8qNRSfg2A7nWrGU1/iAkfaAsx41f/EhznggAaFB46waEGTcqcqGHNDOoJxQhHQ4BN9Ua8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756707594; c=relaxed/simple;
	bh=wmiQXhlMSPyifIseQf3XeMZ5glMPq/5VYylse2iG0RU=;
	h=To:Subject:From:Message-Id:Date; b=u8gKUIufGZTzEQrfb2zEn6NjyWsasUgRt+EJiUMrv2g+nl150QjK+0mK5VYf9Zg8DV+I+HP5k3f0F1D+vpL+riKUQzTstJeUlAqbLlPuAqJVwPhvYyQPTotCj+4pCHYwH66jUTcPSfbJkEHAmbxnMfsEq0n3eq1vatfmmVK3748=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hos6sa84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hos6sa84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00B9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756707593;
	bh=wmiQXhlMSPyifIseQf3XeMZ5glMPq/5VYylse2iG0RU=;
	h=To:Subject:From:Date:From;
	b=hos6sa847mfP5JAJxjKOcL6OyNDAiVlM8tU/JP3621NQZTIx/KXMdJVoM9y0sl3Hu
	 cjZRsLtnLOEfglj2a2rU5+xjq7bRbGQfuwNWh2V+fqrh8YR2RCzjEDlRaC+cllQ/A+
	 +WCPM1y+8bmQFdai83h/clnMV3ENvX6E9fyQTF8qNMMWLwEt4kxDknbmkKvt4GRjms
	 4RbaUByBi+OTDP2wNEpdz3K57iUzfNe9Jaf/4Si04mJN/SFCN2Xxb+4vt7lQFi4kJP
	 4rryfJVeTeD2XdcFNWTEtumN4i9ZMUd6ahd2V+3iwlIERN74MoUj8qY7kXhcl8YcpJ
	 +Y7MwOQGPYXgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAF2CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670759357.10012.14157745893454700579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0de0c545b72c5e7cbf8f615c3a4a92a1bbd76b67e53e9aa34259400cc28886fc
Date: Mon, 01 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756707593
