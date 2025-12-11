Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1600F2D47E1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765484574; cv=none; b=SrENZsolwABf3XvSpDYovMl2HIv4xz/0X3YQnMBoB3bV/wQSnGA0kBJBXTnTPoZ0g5cx+nw+aApnQxqUo2Wf7L+o9nOYGX95IgTvcKw6v+7tutpE5+kGz5L7ZNgFosiakZCNegokqP58lA+DAqOdWGwgujPfOntdMXP4Fl5dhE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765484574; c=relaxed/simple;
	bh=pPWRsYRerAEnj3q2BgGrmkrPucoLAvnIObnXG15k6oo=;
	h=To:Subject:From:Message-Id:Date; b=LOw+SIiBhAFUEa9zkcJdarlX/hOFp5WAMUwW8oX11ul0LJrfwViGgyKKxuN24y/aMgMDMnJHkOY6iXn7GEzDTdF1RA4eilDzVEZQxtQ+i23rqJmrNLCk2msBdDePH0zF1P8WFqh+zyfCfvf8Bl6s0yvuZcaY/iJzun0u6NRVPRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LteO9f5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LteO9f5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA03DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765484573;
	bh=pPWRsYRerAEnj3q2BgGrmkrPucoLAvnIObnXG15k6oo=;
	h=To:Subject:From:Date:From;
	b=LteO9f5UoZCbYUEuqTPgxi8XWcLM+YZfWRzw8XHuu3N85bzC/N2aDriMCBRx3K5ZE
	 aL0KJgT93wyTxC5ODXv/iIwIt0IlZLC7uIvXpAohrfgp1gaE9hS7AqKDzp8GJnHnav
	 iVuE0RzwNPJx1b/qh3T8VpEpd59ascM0TbAWVVXQf9IgCiAJ1fnDGmkItfh0ZQc6/1
	 Pmlpc/HaSXOE8IE+qFXo6ZVPUmGkhuDJ6hlba+dnQ0ZVRPJRjFzP9axMUwqDhOzZf9
	 LuB8lnasWdOoTpp886eGfK46rbzDAV5H6/Aambdj6vAUtLgeko/kHCtqm21ecudeQo
	 tBo05l/elhzyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A17ED43350
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548457360.28843.16241376779521509265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 831d0189073799b51fa26a90a492b13297959227ec2c8554fe8566b12d562c0c
Date: Thu, 11 Dec 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765484573
