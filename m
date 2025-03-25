Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B1EBA50
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742872194; cv=none; b=U9u6MyBkIW6Ep9x/85OAiwwJqnTY9Ac+qS86SUsdI1P9mnt4b1ovkp0dMAAzOHD3l8r8v+DXRZ1/qyN01XkouDEWrek4NkNlZYkfw4HdeB3bBhcgxjno6Kn2BL4TOcu6v+1LwB9Nrgpe2Dcc7r4O+cXAimM2UNeNQIEfLwVBS4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742872194; c=relaxed/simple;
	bh=gKSoSC6dDNhrs3DTkzt+F159PqRlEUK9C1xgELpcw8s=;
	h=To:Subject:From:Message-Id:Date; b=V7vzRDl2brbRqhtDMzJtzweMIp0O2gDzgzFxSnAXjtw0xaqUMxH3WijmV7BU2fhrKVpwucQwaoljr4hlk0ixLobGhypISbDPDSPQiBrAz10xFX9Jdt/l4sjihchvxnaBWmywtQYmgSgz8b1WDDY/ufQQ4AEVth7X10MD8aQCaqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SA2c31Ew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SA2c31Ew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE37C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742872193;
	bh=gKSoSC6dDNhrs3DTkzt+F159PqRlEUK9C1xgELpcw8s=;
	h=To:Subject:From:Date:From;
	b=SA2c31EwemaDMwFCS8H6oXX3TLrR6v6HHA6FNun2O4JMbD0kNqRfla6u7uo68eE4c
	 AQjnC8Zbnj0axxrwbiXXIzG6TCblFJGh0vxVojm0NCmIhGC53ICCcvHrMjJZAHXtOI
	 cO47rN9V/x8uPKWT8eX9ttYL4cF3r/BkdMrbSE68D31QVUDnkkdGAwvCmu0sS7SpJW
	 JSh9S/C0LnYGRi8dA/guMH03ssLs5t7cBCM0rKhGfZtkY0X43psp1yIZYBpQpRn88P
	 3OvWRZHHY5m+jF/rjCncuXbgAKwQY0ICh3BMPy12mvFSpctHHLzPQQscC963NJY5Ki
	 bV356tRe89OZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8330C36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174287219366.27133.3755106068768887501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f5f564baa7f97222fd8f656020a887ac693e1c8b672ac4e0e2460239dfc09cd
Date: Tue, 25 Mar 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742872193
