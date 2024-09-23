Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE121C36
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727067954; cv=none; b=T+DJLFNQ5UIKFhW6Ku1pcK8pZzyFxbbbJYd7DNThxCYY5o3nh4rFEjkrYLENy9V8loWPCHVxhmspSb8n8KVqmYsENWon4crSQs5JvFI6+5S26OmKUCxvzqaxfQOM+fTpw7fDkYKMwwDp7OPPDKBBeyJoO7yU2T61kS8nYuPqxZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727067954; c=relaxed/simple;
	bh=Pt8CMPdD20IE0Bz1tDYVYzpNQbMuBmwCRxtdSTT3J6A=;
	h=To:Subject:From:Message-Id:Date; b=HQGav69O5KyspoAIBZomidgE3zZaFGlE16oJ7PyDwC95O5juG5XffY1ksJokf99bWyG7QzSPSyGc8qDUwravXujaydsFb1si7pZ+Z0j+XohOWEsZBRAw9e1w5JZ2z3yDgdzWfTCpVTepBuUaTvxkTg5Vwru/c8TL0ZT0j0/71Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cw3keFSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cw3keFSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C5DC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727067953;
	bh=Pt8CMPdD20IE0Bz1tDYVYzpNQbMuBmwCRxtdSTT3J6A=;
	h=To:Subject:From:Date:From;
	b=Cw3keFSa2m6+J4jX7zdvdxF6ZbN9NzOJR8N+8rN7Zaas+xMJU+vB4ZFwCgV1/2/q2
	 0tX3b0pH3XJuInm7rHFdVGjgCljXqJRHaPxCRLEWtgVCjmlV4SbcRg1dP3wx6pu0mB
	 75SQ9bwGT1haCDLA07Cv/6S4NcPWa+2Hsp+t27+NrGmk9f+90+OdZFJPrmOf5aK1Cd
	 /7EOJXDM1a4N8mlKjzVcdV1eo5C1xXOfM9LB0mlp05hWs1BvW8s5yS8+TsMRE2i4f4
	 AOT8qUVFZc6dABWpPQrTuk0KxspgUAfmVjNX1LySln01lRWWZEP4DxuG3xCIh+taLA
	 CIjFXz/sLKukA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F0BCF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172706795359.21516.9917762185458259988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2e8c0256c2129ef421925552b659a510502a0ef75ac164723fb9f3759a7376
Date: Mon, 23 Sep 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727067953
