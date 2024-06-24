Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10ECD2F24
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719247943; cv=none; b=ce6NBF8ukS2oESmJFwCDt7NIMv4kHPvX7b1O5O0da9rSELuK6aypN0VnGvUz7v43XkBgKJCaLNSnmGT08aTs3KRBDyasfiloKGYwKNn63pWH0DLr9cYLcxuVY/k6pcFyA7ClfQuDYEToVbscogD+c/P5t3IrHoibMMxSzIN0uJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719247943; c=relaxed/simple;
	bh=H4d7bUNLl7WtJD27a/zXIa2sDV1B8s/v4dfMIyFxz/U=;
	h=To:Subject:From:Message-Id:Date; b=bkdHOY39kFCtqfTLfrQNhTIOTgiDzPafnvjrkh9hpbd9bEJqj67Emhg+dU/ouOJ9sm1deOBt6DzeFKgTmuFXW8/BfbBg3KAH4KwmSc5yszNf57DycQh0QZtZCclgCXgXTMTpc8WphXf2smby6Qbh162x4OGxslBYQ1eB0reQp0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkrDaUn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkrDaUn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0DAC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719247942;
	bh=H4d7bUNLl7WtJD27a/zXIa2sDV1B8s/v4dfMIyFxz/U=;
	h=To:Subject:From:Date:From;
	b=IkrDaUn0llYGFLpipQ+Nm9QfEMSbwEqDmqcduM/bXmrpPHQz1V1cyMxXhWqudeVIG
	 ESaGMY2wve3lRe8gp0maWDwve11kBpwAyv0nJMptn2CDC33ncEacYI8RbdxopeOS5k
	 rQ9Kfxu7oV5QUyQFxDjX3bw6A+VHWsMo7RBwFY5WJslftq8crKMcC/ggnuwr1zysYd
	 VblRs+nxlKRLlwfhk9LSOtQkJ8jRozN+cFDM6kGkDTmvprr7J4l38cWylqY6th64Th
	 8ItEVpblCjMcmzvOdcN3F7yLMi1QKAN38Qf3pE3E3ADA1uYVxl1h+/z5yORbV+H9r3
	 8l6BdCOqyGOZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AF0C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171924794277.5689.10442967777707303850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20792ee92ca93160f3c5e3ee8e9c996dbefeabfd4dd472c5e0e86021742592a6
Date: Mon, 24 Jun 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719247942
