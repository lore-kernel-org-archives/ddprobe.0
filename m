Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE36248CD48
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786636834; cv=none; b=nDgCml29L5Jdpe/RMrRBWDF+uuVKCPWMH5cPEXZCR8XMqFlyzKEjuXpYWZe9DTz3kTcMEit7qVIoAe656/60d45DTOUMnO7J6Uj/GZpahN9mDZbYkUhHzrmqyuFUZ3SOqCRvcgcSjZMGKWlSrKxOj67w7U77y+pXW28AWTEgvYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786636834; c=relaxed/simple;
	bh=3bwYtEGv1fjKriG2OnMU6OwoNx8z2NukHmU/Cffoeyc=;
	h=To:Subject:From:Message-Id:Date; b=jviuuex3iKjqO8m9sEgi8hBhFIVt06O+xiWR6yS0/qgQaD/5WqLEtD/pv73Lwnf97mNzdr1Dat0DKDe19dicJQJzyOP04j9NPAgRbXpsg3gHp+xgUyXcyv40sbG1FIC7tPTwY2Oo98fkYijIvKv+ApWQy4xGn3jsUKZLz1Zb+ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6Tu581C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6Tu581C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B25C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786636833;
	bh=3bwYtEGv1fjKriG2OnMU6OwoNx8z2NukHmU/Cffoeyc=;
	h=To:Subject:From:Date:From;
	b=I6Tu581CC/12RjKcK0SXq6HufaqlIy5xa2kceu1kp4NH5j2I1r7OXUg/WHHj9Jm3T
	 p7t1hmFkA3pmPAN92BPzVfLKlih2Szw9lc0z6apN1XbdkAxaSs/9MQEXsMyjTAEH3k
	 QUShx0//UTFchFqGYPnJDK4niYqze4N2Eh2yLCvOsytI/iA+okC2VuaL+Q04P9NXXH
	 qc8j1kND3l5g7YMbWpYp5BYjXscuH70+dlM76zzLhdgOQ+oSiJSNkWy/qiOr7Vxxbc
	 bXA7+jsOi0C900dRASseJ2GSgzt+aX7mFh/K5K8H7BGZ4qqrnIFo/aHhyUPFGIHsoH
	 +6Nt/KMwiGf1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A870BC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178663683368.10256.16602258495069114690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16671318fea3d52fb1576a0ec181e4d2f52829e659d8a2bc2a388bf635181b78
Date: Thu, 13 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786636833
