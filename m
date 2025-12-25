Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFCC1DF74F
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766636634; cv=none; b=KSRwAImlDONxfT5I6w4oEIVuHK1yRYrhMbaLNdR/3N2GyFFal3D6RNxGLpgDzuU14VjntcvJjofgZumHtAPQQFbs3K+pH7CNRiZq8KI7ev+0Vgy/audyRDz93P1CR1okbhbgeEEhgOHQwYF/mvWm/nofKBmhn4jXIcnnHDY939s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766636634; c=relaxed/simple;
	bh=h4lgZRC0rlxcUMjtVW3BYJkkYrve5l5VXhM9PNN4lyE=;
	h=To:Subject:From:Message-Id:Date; b=VFplk18O1XTk4KoMCl/ySUPTMtVt4zl4cyh0UPXZPFyi2Z9v7/H06O8n363P0+jTc+BeBXNLobRaJQXGwXhSkfapzcc4YMgIdAX2VB4GL0b+mDYRQHFg8WGJ423J+lc1K/s97hdjWCrr8tNyX8Bq+ipPLuoE237KFwVQXrO/QwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPH0P0S6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPH0P0S6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E4BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766636633;
	bh=h4lgZRC0rlxcUMjtVW3BYJkkYrve5l5VXhM9PNN4lyE=;
	h=To:Subject:From:Date:From;
	b=VPH0P0S6X6jd1SB+bZAlVjhQ8K0XQn9ZyBZ1K0fDA0qfPSlvcGCoIhzGlJIPNsV0W
	 KISpKnzjG5nk4sHDrLJjFnXExOnpi0FSQMFaYKyPbzSxuh3dA2gV4+JElAc1S1E9zi
	 sb6xGWA1A0moymTtMqXsEaKOlZ0quA8m2m5amBu2JF0rbxZhH3MrVWvnSzWn77zqZ9
	 RlpK/AJQUtcEWSG4FKoujCJRRmHt2hBqtH04/jYRldi6GHmfs2YYrNcqOpWQyg1zoo
	 VYPaKaAKSp4OPesMXTWmrqqdoM8zO8pZoUjhfoFM+3h84DlKmpq0nJuimNKxZpArh4
	 o9s8tzrkXA+xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F7D68BD5
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663663358.26347.13580431475912048186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5370f631b3739c271ab3c6ca67de062bc111eae2f2fb4d567a8abaf4646d1287
Date: Thu, 25 Dec 2025 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766636633
