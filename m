Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622AB3624D4
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784474314; cv=none; b=S9fgL/BGf/Gni9fit+xcx3uO8jjwmP2VHDP5sqtSSJFraikjkK0rJqd2VPkerb+Dw1fkFXFH/7iiLH1tE7lsu1fQI+qF51JEQKK5RzOVhp1c9WLloVkWguSpbXIgyv6X8CIY/tbXA0hcz9ohDRjgMykBDJuovhzkEi5Qo6UTECA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784474314; c=relaxed/simple;
	bh=dby8dN5d7P7ZlCgGLIBLtDFBSMKxuqFVq7qN9utdHC4=;
	h=To:Subject:From:Message-Id:Date; b=V0sQDDt46f82X0giFb4aP4oVqlNATf4f+O8Dee3RHPhweUaFB9khArQSVz1Lv2QaBN6JQn+jXG/e8sXbZef+O7qlAWxKHNAblwZ7lRrZsuHyXxsPmbvj/6EOzaM2nJOvizO2P116rQ5VunMUD/Qieqjzl9taFg63ky02HrH7dzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8VrH6Xx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8VrH6Xx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD85C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784474313;
	bh=dby8dN5d7P7ZlCgGLIBLtDFBSMKxuqFVq7qN9utdHC4=;
	h=To:Subject:From:Date:From;
	b=F8VrH6XxtAhWH1Mgvg7GxJXBIgwHsGhFZn0MR8feLl4uRBYcSbl6Ton0BMf3EgT44
	 LihuBBRD3E4/oRldsbNUqwiakyGC8DfLhTDE9JpgZdDW/0xH4sEq+Bwt4Ps2UCuZ6u
	 jMNEBDMShxG7MoaYqg7S7DWIkx+O9kZSaPMYrB8u8DyLKzL9g2fTLztQUeFid0l15N
	 D77ADppmE/57LlMHwOJ6GJ+/nHNcJ2yENKRPGc0YoC2u1X5aV6E0UxNJtYd0Dq3jrv
	 XwwEXaOIgX+7Uz23hQ15HM+C5HmV/cJX/MzHoUh9BUkVixsejYp8SmR8iBWTvHm7ly
	 UmmabDsOLeduA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC14C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447431369.32460.8982003916815293605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 819d57e49c3e4ced59a8056a104d717c6487b3584ff120cc1c6ff75e3cc724d8
Date: Sun, 19 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784474313
