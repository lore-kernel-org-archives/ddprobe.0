Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C881A0BD6
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764733374; cv=none; b=rCVYCX1DEe2xOgPQoWS7t/CfT16ZpQLyeQpJBqxHqmG8c5suokxTxJuM94nPrDdsaU+sTIGHwWQSlsRvvG+CYCQ01GukidQ228A1Cj5TvFU6//7EyCu80+4IDNut/5RHeM71l4Y0MiCWy5fdvcXj+k3F79qzJnVRYB8PUbXDN2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764733374; c=relaxed/simple;
	bh=L0fhZnHAZkYcgiDj4QGVZGYmjRrHFwxFyhM3dU+JN3w=;
	h=To:Subject:From:Message-Id:Date; b=W6KQhCyN4xDGp6RBrBwthysY0WGVWpe6ubnF0HUMX/SlJptl814o6OTpevimNSI5R2bv0Le1qirCO6gT8yHjnScffvn8TGOYagxEFcAKJ7EekSAeBPYRP7hxjsKcJ3jsoejOg68DSy/pdWsk1880cON75uovTmqv5I940rIhpK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEHUTuNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEHUTuNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB385C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764733373;
	bh=L0fhZnHAZkYcgiDj4QGVZGYmjRrHFwxFyhM3dU+JN3w=;
	h=To:Subject:From:Date:From;
	b=uEHUTuNqs+g7Tdtzi+BJJel3w9KclSiFp+kl4LHX4qOoromtYeGgbg+KG3QqcO3/G
	 GIaSMmG0TWfUGzvv8G/elxykKZQkgoZ08K+Zd4EAzlFMPeHYfYlVySMcdjnE4r9yL+
	 2b3GdtDuuKYSX9lmErOrZTR/Psty8mP71kCvV7vUfG4M9BSqJklzPJZMWiZYzhVGja
	 h2dPDj+6KB+JngIznN3WloI7Zs5QLUIMsIgfnwZ8DBph4xkTDBVGIjda1+DL/XIOGd
	 p18hbYIycoeVaBSIQ0KPTRg+dX8+NRxSJRyGLMyBoDT7M+Pyag39i0B8tvGHOvliES
	 pvPllKIVZ7AxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C45D116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473337360.32162.10146027438830613084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c4fae966c78a58fbeb26447cdc97c114aca0d957442cfa17064ea2d36d39b16
Date: Wed, 03 Dec 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764733373
