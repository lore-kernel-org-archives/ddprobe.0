Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5312701C4
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777417654; cv=none; b=uyOnyz3f+boOPih59lATzFgweoBwAI6AOsiqySsCPurDIX+6q5fXCMcL5KbLVERLp4A+LLm0udmqcpdd9JUV1KwFg1W6L3VbQDMG4t5xkQqDdFlMF01kxXzc/ccAqB/QXoaI0BNXxhKYNm9ruaxo8J9AkARRLBxpcur6ubKxdM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777417654; c=relaxed/simple;
	bh=SaImfOJjSaVmrzs71nlzi1XgZc7U2ewcmniG5t/9G2U=;
	h=To:Subject:From:Message-Id:Date; b=BkI99bTtXBytZ7ndq93DN0BeXPaSDJHkRB25k03ZY5DhgBRvcXQs2MVe+OVHLveCjsONYClxp3B5KkJcgLNvEd6MLoJWqXJxvgQT/e8WP5Ec487etUzgNn3nnOj4km/osWEr1A2XJSvIzjG6jLJU3y+1R6WmWRPqLCZc3Crv9j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVtenpXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVtenpXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B884DC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777417653;
	bh=SaImfOJjSaVmrzs71nlzi1XgZc7U2ewcmniG5t/9G2U=;
	h=To:Subject:From:Date:From;
	b=pVtenpXGG/NWHCK/hyBAuRR+IVkW+H1ypz8Yu1cjdpkEgBgqJZKINXGPIuhgRsQKF
	 7zotnd1EfIG4MDFkZYShI9Lv2kgdWD+RWJJMO7oZRRGXU3W7fpUCjLPgtYFajsQhWx
	 ABd+KFyVrck9Ot95R8v3L2MppaxpVB6Sx/Pnp+YDfw9RC3Q9tXToWtrVL3NfRgf77K
	 M3flFaCeivO7SXaZWaMMcNrwqoxYMXV8RoUWlS6+R8P49WXgOuEj/4F2HhA9SZMDDp
	 Kza/QSWBplhBazZHSpdbRvAzILoHdixYwZs6aOUPvSnJS7XUUiJvd/NpOaX0f2Kkcj
	 nxW63dsRMWZ2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4C4FF886C
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177741765368.12629.814657651373681755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4511d28fff624bf2873799681a639611b44bee0ea98b0936b47bd9ca5788afa0
Date: Tue, 28 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777417653
