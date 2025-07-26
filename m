Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE69A93D
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753569594; cv=none; b=MIgYLMxpOTh7hQoF0o5lqT4rgUTFQskeg7s4p4GpcSX7C67JwWwgx3wSawrf95/ibwcmThKUf/Ty2ESNZh9aqe3vXJhWDSKvfvMKzlFI48c63w8bbhWEEbn7b7Iii0rM2Y5GkQnv7wYjzeaWZ8wpwbbD3hUE4381NzGOwgf7bbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753569594; c=relaxed/simple;
	bh=EMosdW/YK/evkqHOkILXXio1rYx4AXOfCxdSfw4pFrY=;
	h=To:Subject:From:Message-Id:Date; b=k9P6U9hInbpMd0ebl+j8uBlFNl+ckRCSovmI+9IMoOZeyPrmwc+igWLq72kCHRnJ6rfwcW+t2bLMQKZBbga9m7J1zusdGsZ1tTZZVYN9TzYPheW7qK74N3GkReFEdUXN7+fR+lcAMHu+iGqA9h1uoCDjHIf3wufOyf4g51+Y5JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWOZmCQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWOZmCQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56ECC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753569593;
	bh=EMosdW/YK/evkqHOkILXXio1rYx4AXOfCxdSfw4pFrY=;
	h=To:Subject:From:Date:From;
	b=pWOZmCQDgdsvhh3NabyGBrq2NhupRXnv6EnncuEMkACG0J9CmTqoAIIldlhGJYxV6
	 pAvQ6XNMRyWJOpSJqxcKnR8KPUyg5fVGDc613a6Zg0RqdkPrnVo569tXJguCjJJnVd
	 NiveXuHNXxheCqdyKnZPVM/EDXOEj6NgvUj9pEPyfEXc4Ib9hgD4RpoP4Ba8J6swLk
	 4oVZArNW2v/T3pbY4cD1p6UoYbegWyW0ND/SV0RqHwUP/K2gIsF6X6iNPz/IKRy9Na
	 hA7i/Pf/mVKNSyQc/6kBEaRu8J/0ixYWMgIqIyccNWUGNRAEvZpTaJRIT08SlcqAmp
	 gGJYbqaBbIrvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F3C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175356959357.2553.2501117525023685047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ef51d3f7a204433b1c97dc117e6f75956e3d12c0ecbd0c03526adf997fba4e
Date: Sat, 26 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753569593
