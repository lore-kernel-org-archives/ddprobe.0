Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7EEE431484
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787752834; cv=none; b=B07b5uC8x8jPkN+6cEtn8MGDRsL4zUI6CYvU0ZQmOFEzp2GlrD8A9UMeTdAlI+Xqc+3QLJUkdEr88pf3vhc1NuAxhOCrErhqae/RUzHhRlp3qcd4rd+rBwd2CavFSbeg3KvH/wSIbYANvg5ZcHTaecq2/5N8nBkNXtiQH2xB8Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787752834; c=relaxed/simple;
	bh=pIhyCCAyRLomQM+1chCSJ2kecE2kx+pmuS0wODY5Q6s=;
	h=To:Subject:From:Message-Id:Date; b=hWy7ke3CuL1t8Ij627EBmr2yFudn5qNvnQkoa52FHwDY1bNSpfA7Yh5VZE9XzZcjXhfCyOK2v1CyvMT/PTrTO3TqWerf5WYlbla1KmJJSdsdsbMCOvhDao5vAPVEeDLvtub6qBHJHzm71w7vZTOMzrgkHaIr2V+0z8EORp8AO/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrmpFqF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrmpFqF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7FAC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787752833;
	bh=pIhyCCAyRLomQM+1chCSJ2kecE2kx+pmuS0wODY5Q6s=;
	h=To:Subject:From:Date:From;
	b=IrmpFqF1CRWTK15GO7UEbrum4yRHYwjp4/JRzu8J5BjWgIv5hgr01wVb6jK9mANLZ
	 ycJ+tnDWSHPQ78hfbmlN8zEaF0fS7dq85BWt32zN2cVB1cu7zdk04fY98aF1xcdCpf
	 AI9G9rIsxZePuvjRkduW4Tl6ThqgoCwYhyw7CQPNEv129VtF8NQhwJbydrnIjgMOwN
	 Nqk/P1AcTvsuj6U2GG9eKz8RH/hItlrWvMF36WYUCYjKBYtnZgMqWYRjEboHfUoezt
	 3TcUAZRfqyLkqcVqRg60NH9xolh1jr4Y2qeP0HCxDq0YPn9sWrrKO6Gwai+Qk4RB8T
	 FW62vH9xUsvqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7E2C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178775283368.22545.6091822969439753074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18088745d917af617eb4807751ada16467b746b2a9fe23b131bb2654aea152cd
Date: Wed, 26 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787752833
