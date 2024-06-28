Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E551BE25F
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719586463; cv=none; b=YTTRHV/mwYAs721l/YG+cov0QOhpQQ5bO243WWNSOaGl/0ZG9lXm5JMEwNMU4/YLPQUDY885+TblNEj0CRuNJrDqkhxirumkubC5nkf6dFPw4yrvj2pVHMDa/pkSEkLdCBa8B7adjQOFuxgfb38Yr80Z/oK32i2lkUoUmj6lCPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719586463; c=relaxed/simple;
	bh=CVn+1H2/D822VFirSyMugwOITqW0sX4agh7Q+MRjUAY=;
	h=To:Subject:From:Message-Id:Date; b=rzhZVEXb+mfq2pC0un32dH0aRdPo0JwN70gsQt850uwO98QkYlgwLMomG+85XxdTaEm9UQz+xA2Dp/7IGbX4WvQIcEfARNQ961rzewXKO0pf62z7NrepXLMF52YiI3yieBtS/LKkkFCQ4suDhnycFqtgz9V3Lh+FyriJObH65vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LG6v0kd2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LG6v0kd2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E198BC32781
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719586462;
	bh=CVn+1H2/D822VFirSyMugwOITqW0sX4agh7Q+MRjUAY=;
	h=To:Subject:From:Date:From;
	b=LG6v0kd2CVsXFkr0oMC6Kfnn7Ym4QPgR2DjhFnJdvCFVX6wHaCA9pLWm2jur8N50R
	 th3W6i0aXa8xoGJq0wYFWspfOu2uOZST2X5K6RUz+LZumo360UpxRmiBVG3gjf1Pfx
	 0THs9J0Kk2uv5lqNqUqQiYaBjdrc0HgOCRGYG1m155yTJ4WzDikYR9K2UG6ra2/dJc
	 Ura/oNnftgX98VBBH0npyLYNRzUDOjhGDXUM+hzyX8jbe91r2dT9L+3KbqEAMpDaeh
	 ks5LOt2DzEjQHccEJ6KS+EDI7/LlvlLQFAufh7j8LgXjogdnW+pThWPd8UZOZ0blql
	 X2/A358gN5f+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38B5C3064D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171958646278.24803.12722697695122306225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04cf0cc8fb4332e2781aa1195c28a40059b50a85fc5e55bea11ab8fdcd877d83
Date: Fri, 28 Jun 2024 14:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719586462
