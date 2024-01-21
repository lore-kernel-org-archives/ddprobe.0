Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9C3394
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705821497; cv=none; b=ZR/ItHLfgc7h7ea4V4TyTvIMLfGiRsufnbzkk7XGXpwBf5OxMjuzhMphisEQrGwtIKavIH6k9QhdpW3wuqPeJqQH1AgeUlyY4mk73kH2yTzvcOyBrAg74mhAtDqCo4DQu2CmDe0oksWzFYb39QgFEBGcZPNh4YkKxg9VvjaAak0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705821497; c=relaxed/simple;
	bh=z1Jq7g9WWHnAvnlQuSfaX30xRx3UHb1rjadKQObQawA=;
	h=To:Subject:From:Message-Id:Date; b=fIVtYW2umsJYpz4IFL6r8ierXFE03fi7nDfA6efMaFwybZIipqXdNg2UvLlZuFxxgmz8yMx1sNQeUS6AUz6tL14hVG/dBhbzJfGU4jR+8lkSwsE35EMVP1pNN3OKs4Vq4SSV7uLFOqIcxZagNZTg50eBH8+Gt/n8pz3K5zxeqKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVZMbncS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVZMbncS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7AAC433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705821496;
	bh=z1Jq7g9WWHnAvnlQuSfaX30xRx3UHb1rjadKQObQawA=;
	h=To:Subject:From:Date:From;
	b=oVZMbncS0fvIr+8lmNDXkNfI6XW5sSl+XIELxyMsjPxQwjifq8PcIvrP5/9H6W+bN
	 THBROihserbbLrqGLNvMAjtleHO5jw6RjSA7VCuxCo+BBbb66D8KsbVVDsNSnGDjpF
	 bZA+DgzvWeWAwb/+gKOB8hxVbKtLYlrNVGw1GYHLOi5Y3uOkDqGSiCTc1kMtzBrnJZ
	 rrGNmmY/xPUihNpN1+g45q9BVwpmnl0DvSXs+VnvGfLIp5kEADurb69ZBs4UOFml3O
	 HcNHxKf2btHj9SH7hJMCqC6kXQJgoyn95PIdXXnzUS8Rn0RRIx9XDyg7VoMWwjevgh
	 vbxYu/6dZ3BhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6080BC47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170582149636.4372.16378412732976634217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462ba696f0353838f5afc37bbd9f0b9b012e30f44e89ae44d0db5ee034d209e3
Date: Sun, 21 Jan 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705821496
