Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129772F1FEA
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764762174; cv=none; b=SQIRjKR8uviau7mVod+nDVWh6TOOHcjIIRbeU1WD4k7OQa/EG2ucTkMDSiHAF3MWMyUQV64+l/J8MjU8NWMaLhIR6u4ly6X7O/5ZOqGiA27NSIiJalm3uwzqYsrySSQDUjsM77v4NptiONjeo7AofL06aD1VoLBoA+f57UqfGrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764762174; c=relaxed/simple;
	bh=EXqCwFFfBt+3z4f61Aya9RreEj4Jz/I4fR0SmlUtcZM=;
	h=To:Subject:From:Message-Id:Date; b=m1zrj+s7tVBTOGVPgZL+7ZqFyJ5AdXXBJspyK7pkfbGPGUQxdTUAoHG2HP7H18OKLVWnrFubBSLXVC0FXGsNaxpdaSeeOXo2rMdcK/wsVLFlTbCoKtZwc9fnKQctLE9LQjFCJRVZVKbAJsg3u14U/k/PaTZACYZPHeWR/WZy8AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=My6tO9yf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="My6tO9yf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F10FC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764762173;
	bh=EXqCwFFfBt+3z4f61Aya9RreEj4Jz/I4fR0SmlUtcZM=;
	h=To:Subject:From:Date:From;
	b=My6tO9yfDFRHwIyy5fuDD7fi93nLNCkWdgxEGoPleGRNo7Y9JmVqISTu5KA6ozTnl
	 3NxDmosmV8LI/YU9ECEUWe+AVWy/QWYOTeuFhub/4cvgWt+9D70+d+24yvEfE0bgaA
	 /dhcFtLYzwzTjzHsjNYDXvN9uDTm9fk9MGdcUCPHkHFp1csDBLzru1JnXwVB6Ce0Ng
	 hlpBbppRsipR0BnJVQzgdEgJHrEvTLIi93w6PK+IfIUDZrAsLrpYmjwwmC1030rLw8
	 FvljokKFGRYikPNZOJmwIoBpGin6BSGXrRs6ikTuyv46ovCeg9c9jsOCz7SyZ3lmxW
	 S473qOtc6vU6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9035DD12D4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176476217358.28648.6772435981028737079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775fab9a9f9effc12a0f30344cbeae24f71dafeb93254c4ee064ef023069a4cb
Date: Wed, 03 Dec 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764762173
