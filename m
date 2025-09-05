Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A26614E2F2
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757041194; cv=none; b=XDH0twpkLb4yRox6X3H2O7GeMsagVjf//COcfOAkWY3AhyzaRKfHCfyMo7CYM6oXBmr9A+jqv7az8K3aJYQavtVSLSL9F5bXj+dkO6JmN4EcN9nti7FzojQ/kZFU5H1U151bTtaPFvtiUUFexxiG66PDerPoiPzfozF3On6yJOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757041194; c=relaxed/simple;
	bh=z0zSQfDAr0uWmZazdZEXMYkrrMv5ZgGGRvCfG1C1S3g=;
	h=To:Subject:From:Message-Id:Date; b=ULTjH+5FdOgVx5r9GDlscUppdMcMmwpNju3RuB3d2EG1oI96Lvezg0Vd+GJ/E41LczSPxgStkF+0B8rhdMYPrHY6hHJrKszjdvVylDUBQG4/x3D+fMcqa0ou9WAgP488Vvjl0LVH76lD+6iCh9z/3dcllb7EBhfbprA0ruGLOUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TY3DdpGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TY3DdpGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EE0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757041193;
	bh=z0zSQfDAr0uWmZazdZEXMYkrrMv5ZgGGRvCfG1C1S3g=;
	h=To:Subject:From:Date:From;
	b=TY3DdpGD3j9sImIUscyFi+YGo3if0yO6wN7MQ0WcFQYwlu6bodQDCV8ZudeoJs653
	 JUAIrgqgMTizxsMpnKY2O/yn1A76QCVZy4hTMNaE7zH0OS5x7V/Im68APooIUbTUMj
	 cOXN5ewVYklel6HWUAjmUlKEX5p2H1cFnDK5svkNknU+Zxz6/oe9pNU0EzwX3ao407
	 0yhG2pOpvkyUAWufIb4ZupYr9vKd0tJ2r8fucSalwsLLkEN9vgv2IN5KTOOg/Zs8RJ
	 xhiBM05miSok1gCXE4BKqw0AGNY5n32PU2h460wn+//fT8c7qTdPf1xb5/VgEsiJGp
	 th0Bu2+IQ0poQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F532CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175704119357.19075.15535926270949208875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96eba08a3a50086de8871310977269f171bc64224b7d1906774c89293caf1866
Date: Fri, 05 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757041193
