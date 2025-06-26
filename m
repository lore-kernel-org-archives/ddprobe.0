Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49652292B3F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750940994; cv=none; b=HwG+4odKC9c7SkQroAoXUBOrLM57dzQiGkfpJ265TsUvl3MerEavJRbZ7AtztQCBxa1rDoZMfpx3loxb/TMioSlE549+KI+IDi4lMTf4cztllYZAKBtl9owNAI70Tp4hQy+FtvfvM6WMA7lpVXHKzIxlCYnAplgpKFeoj93IqMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750940994; c=relaxed/simple;
	bh=mQkizquVUOiIVlDO4se7dLQZLiE0oNudYWICZSGuwhI=;
	h=To:Subject:From:Message-Id:Date; b=YVyUvRjly+YfzDJoCeHA+DjX/QxdR23etDWlRgMNXQTgtwxyEZhv42igodiTPfiPSzSHfD4jaBsDBWMc0NYcF35GGf7BEjW8LAvZj24BFM3U2A1sMfEW09SzLTB8yF2fbNJYtQF/nMtcDP1NoXIVzavT70QzwbraPNK4da8r/Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRZCU371; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRZCU371"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0065C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750940993;
	bh=mQkizquVUOiIVlDO4se7dLQZLiE0oNudYWICZSGuwhI=;
	h=To:Subject:From:Date:From;
	b=XRZCU371Lt52mNdJg3pUjIVsotGjUQu8l6vqmpU+62dX/lqSS4MVcYnxUQcFmXKRG
	 j0vZq8ZbcmWX+2OE+DvWutezsms70x0+/Nx0YMx+JA0iMRLpbEhF73ys6ZcN3YMq2+
	 4nw0udxscBWo0DwxDgVYVCJxaH0dnFajbAJ2N85Xp+Is7pEVcArzs+paJIieTHfGkd
	 QE8Slo6FZYzdyGkljejI05ChiKNFVZ+/apY/9dxgWleHFuWBoGgTHikG0pAicZT2tL
	 6Kng5L3/xrX6d6Z788kDXQmga/SQL/kRTCwrMv5aFG0yygeqMDkqy1dlyXn2dS+I0U
	 AAI84GzaJXJIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D87EC7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094099362.25196.3207838601142117729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e137ba6afbf1c49601b4bea502b64c071c1fdabed5ed6b088509f9473ccaebe5
Date: Thu, 26 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750940993
