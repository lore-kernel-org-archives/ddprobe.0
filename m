Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5241C8638
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748638794; cv=none; b=piKScHxbDH/4hQqzmhsF8gLh46wcviK5eUuwR2BvmPLqeFl9+5uxDnMj/Er+EMi52xauT+TGrIVGuzMksXSIvJXOsu3mQCnLgfqNs1g2CSMVwYWHCBdBuR+bRnJm+n4KR4gKvWYrh+NSiCGslqI3wHbJaYGUl2cUnMXrf+oz24Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748638794; c=relaxed/simple;
	bh=LNSkETM7yIMGK7I44M2M1Ah8pkPHvfPhx73gcgUogXM=;
	h=To:Subject:From:Message-Id:Date; b=bXbODvWBBToUABVM0+wFOt/lYPa7TZW842FQ5XUmH4mkbNQFDQVsfVQfTJx++7Z2JxpSQpX6BVyyz2ZmJV+vkHrtNF26DgcP2CdXBF6beE7uYD3C/RAq7xfzkLFetKx75YdAcK+QCNbkdAKYHw2E0K6TDM/X4HmygScr47Dyp/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVTeDMyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVTeDMyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2792C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748638793;
	bh=LNSkETM7yIMGK7I44M2M1Ah8pkPHvfPhx73gcgUogXM=;
	h=To:Subject:From:Date:From;
	b=EVTeDMyRwr7UUvHRHAKW8Uk1ThZ5AX2U6U2ZOGaw5HruIbUEhNgQZ78bp7K4GmHWq
	 nGkto9rs0SLmZIX/JK59C0Hy2sLm3HhHFMT7pz6+yH4fzXW4ZvsPBjYWJbkAMkg5vs
	 9f3f6tDZhKT4mq8TsWpQ8SQnjh1LtASdCpgu8tgp5KjyiijEpEr4GKQxCC30Jv3ufa
	 9LAQ6Rc+Ls4o85VaBGeIGj1NFmjf7lPUDiO/r2qfAZeTIAx/7Pd0wb+6CPkB6igG60
	 h5IMF5bm9guapDsXu1VE9Otuog/RZahZUWj4OJ8xHQJ17e+ds2SXskvTEavuL9Z2wE
	 NQOfYdn4Tqoiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F090C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863879357.15732.12845399822433125588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e692b518fa829c362d1dadd9561ba0aeaf4e338fc8a3c086e8c5e441cfaf23e
Date: Fri, 30 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748638793
