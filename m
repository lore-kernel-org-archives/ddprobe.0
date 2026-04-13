Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179AE358379
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776121054; cv=none; b=CWo5ZVTMIS70P7u2aG3hPbx8ZUIfLnaCx6dsqCyoSaB5MV48M6cLGrQGtroYkdYFKKEyax393kAU9fm+wAomJE/IVg8i7gm67q2In7FOuPiBC+cO5r007EqkqB+9hobXuvhxQx1bCJnyIJRmWR6ktvWMXRJcTI6FxmUONSWG7WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776121054; c=relaxed/simple;
	bh=Mvj/e0W+bWHM1HyZK8rhKtBvNw2+zeafHSdeQbAonvU=;
	h=To:Subject:From:Message-Id:Date; b=qP+4cIClqPFJFdWQF5wWN4G7T+KFjArKRkNaN0hcfPml2Kl/ikQkCyvlKqNatM/ojGNNV0LLTGgfMHlpHPJcmOuOMXY5ai1ZmpxBdG9GsTE1dylXIY7wnLwcHO0767IJ3vQX+73bQfec+OjCC1/1XbGLQ5SWv1RCNGozs4uCC50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IH0W/H7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IH0W/H7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8759C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776121053;
	bh=Mvj/e0W+bWHM1HyZK8rhKtBvNw2+zeafHSdeQbAonvU=;
	h=To:Subject:From:Date:From;
	b=IH0W/H7b8XlbWUUbKi6siaOCHilWDxteBW6p26yIhxHbdvpUt5IZAbXUzrbaZN55m
	 uX6BgxmU20gT8CFNM9/j2jaCo7wF5wBS0wm7XB4rsPmjRqdJ0FRRtc7/9Wcvl6rnQp
	 uExuH/RufsdTlkO68rmPT1SoCHFyPdvizmqKSn5IFAwIaMa3oeqR4otVQrLVa3oG75
	 QzH9yXI4ce1e3zFQoRwmnIZmOhVm7sLpiZDeP5wdTsIjVY3RVSK9czCMCnpAwFDitj
	 +bpnnLkofUyaBpcNBtLaumTPGlAoMGCuJp0xOKRBrqAgkT0ZdNai4frry6mtjF6lkp
	 3JQAYLj504q5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C93F531DE
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177612105368.30579.10729988452381916897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f56164414963710ae78ba5d024ede64dc19a393b48003622b7925796d6ef33
Date: Mon, 13 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776121053
