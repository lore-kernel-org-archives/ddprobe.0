Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0922519F13F
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752960594; cv=none; b=rRkpBHxbOBS30pCIGLy6/XUd6sNphhPk+z4XSHfX32I/QNH+5IAvR0hgn6GF3dP4gV69xLaCOcop0v4042AMUCkLHzgGoivi7dT3emUl/r/bm5VrDiy5T7V8wtw8fDGCC/8CwCc6dRE7uhKxpmIcH6qY4q5XQes74PaAnS0UaU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752960594; c=relaxed/simple;
	bh=Y9NTMHjCLJDHZHEC4ogT5W+Url+sVwGaCejIsCwSZZA=;
	h=To:Subject:From:Message-Id:Date; b=S2/NNh5fp/pmdxzbLIiTiR9LUkEeVni1eZyNGGT3KgFhOmy2LD7ld9hFNwRzmaJGcyfEa/TWY7bT4rAEAr8QQJYFcJCYqCNDhVuuJKQ58nrNyQzgjP/sCGju8XerZmjCbpJ2obX/2ROZ5UNl5CYnfrxMeB8zNQQtBk0dVC/RlGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7f/s5Gm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7f/s5Gm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9947C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752960593;
	bh=Y9NTMHjCLJDHZHEC4ogT5W+Url+sVwGaCejIsCwSZZA=;
	h=To:Subject:From:Date:From;
	b=Z7f/s5Gmt75iTGzvxZMhdbBu53X5M5gG96K0FZ9tyL2IxMY0+A1INJlq217MBMCOi
	 oltVote5US1DabJCisfcbiYALv+FWEG5+vDsosdwxuLo1tSMiJ6Z+9d/2oXuG6g5Me
	 JxQk75D239vngspiQD8Z/nTEsSVzZbgVO8tc57An9aDhj3bkvtoTG52Sx4lQBmKwNy
	 cFhDocUzmCN5cA/A6fjq2Jky4IYqvfHQ0Gzm1lWHBZ79jDi/L/1lagBoI9VADg6nGc
	 XycoPEiBnn7W1g1u2scnGExAdxxs9I8g3w8XAtmLrTJCbzv0IOqgKaQi9AseyM04IK
	 zXHFA0t/IDzFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969E7C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175296059358.24392.8279207429953507650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 165efbad64fc1b20f187a924cfa34ac9117e2d566898dd05263deef04cea415c
Date: Sat, 19 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752960593
