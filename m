Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0884338F25C
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 09:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781170594; cv=none; b=rcLR6RehzU7KtkLrP4KzJwIGcFevyhZRI26DnT8XVnzNeN8lbtri/bg7XwlrS8V+SJ0AiQ5GqqolySUufDmGXtseCo3jimnLqNXPglNemJwIgGs4WwgsQERhdo7etZPja4GtVLxZH8GdazqvFZBBmvLrJ0ldh9rz240c/Bqk7AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781170594; c=relaxed/simple;
	bh=hopO/zC271HNj1k2dXIeAXLhA0Hjt4h+A7VgcQzVjwU=;
	h=To:Subject:From:Message-Id:Date; b=KypudVq/BE6RgXnXy4ItNJIcuXWMQUKqLjHKkQ8378JuPY/DmoOUrrgl2tniRcHlO0c5HII4vc1Q/t7bjOU6Jn0ppWnh0uT/343RjYv0KV28mNT2+LQ0R+VJIanIcQQxJRkPm5cOladV/bMzYH55+A7Qum/bAHAuWlE4Rd3m6M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKKPgSCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKKPgSCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DA6C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 09:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781170593;
	bh=hopO/zC271HNj1k2dXIeAXLhA0Hjt4h+A7VgcQzVjwU=;
	h=To:Subject:From:Date:From;
	b=PKKPgSCFABf/5bPDyYAhrDntLIZ3okWT8vDtQY9gOpB8jAk6/2NBr8dOcnGV/jmtI
	 M583d5NqNLgW8EibOkXKdKxuQW+xU8rvTLJweUPQg6EW7k44JAh4G9e1ghrzoK5xlc
	 xEbGe2JGgLthDVsdbybP6X56Qsmd8lvlr9ZXefnVefvApP0WAPb1vpFpKuM1OPz8j3
	 BhuQbQTASVjuRfn4XMuue9i9YSvs1oaxsQVMilWiD+6h2VsoUuYy84wfl4v+ltL4wR
	 mhw3xliRtLR3oMJGztLC65hHQwCMlUXD0rezxDKYbfpKuIGECkshTd6TotIC7dQrcv
	 v80oCG5kOO3Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD142CD98D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 09:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178117059370.20938.5527277451828799557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947a1b670769a481124dde30ffcf90f1b35161157b41fcc5376a9012dc2c9b26
Date: Thu, 11 Jun 2026 09:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781170593
