Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A01176FA5
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 17:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719336203; cv=none; b=Ro+91l6W+SBXM+MIyXa7CtAvIpu1cdrWivHsx19Kib6fiAuhqs84yW41hXOB4foEhKfoThivC1aihp4+A+YJFxtzecoZ2M7oq4iygeCnBNBfh9cyEowh9TH4WPSJj8gm7nUINSORr1OgHQtlvy42HUtES1xX782/DKSZ1+5WyVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719336203; c=relaxed/simple;
	bh=QO8qtiG6jiSq2ODP5zsuxtvk7Lalkl5pRJy/9CRcOVY=;
	h=To:Subject:From:Message-Id:Date; b=jhGqxuI/HQDHIeaWgpS7Ea6JAQvRDhLWUUpVMzObCrXB2nXahiBiQqWjuS7KIr4wcMzcK6hNi05bp5kS5pH6/QT1IRviXBazifPK5WpF41bLiw1A17FpHsZ6kquj2JkJE8ATws/y0AzMMHbEXVk8erTJ8SPsBq6AfZ3G9Qy4UaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3YQpy86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3YQpy86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91ABC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 17:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719336202;
	bh=QO8qtiG6jiSq2ODP5zsuxtvk7Lalkl5pRJy/9CRcOVY=;
	h=To:Subject:From:Date:From;
	b=p3YQpy86dS1AnKg3NG6HWAI/THPB8HGUZy31XyYumhiWBjTiXMH6USjR3Q2uN7oYC
	 2iwBc+Yjuw8LoLAUdn3achhfI6DaMp4LXecS00BHjBAuxKyBJc8MoI7jxBhS5bo04N
	 9PwSMeYAG4uLU38M+dZyP2F8ZuI1KtD/blKZUdO8Z8B7kUqXrQ1FF7tXgh9YXvZuF3
	 FswvoIpq42QQpOqxtkkXbA0nSG0kK76Ohl73hS66Q6paDhZSloTrrfHai578hXAjk+
	 vceVDYvMQ49jCaxvC/WD7/BGJuPcMqeijghb7YPwDr2EaVlSfISUIKkHxZ3SMoe97I
	 HDg4ekaxa/3fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C332EC3064D
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 17:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171933620279.31118.7960683786692426978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f08a0ff61c2235632cd4ecfeb48104c3a6d571f2008e8659d3ab45ebbfdbb0
Date: Tue, 25 Jun 2024 17:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719336202
