Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E50274B2B
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760323194; cv=none; b=sftFvbWWB3owfegfBz7eb/HTs3waCE6fpsglLou3/YjutVyOzNQYFNavVPvYkeBs5/+MREJ1An3HTXuvvStSaDAF4ejSyGWoO7LEYPhpYluzNWaXGqejqhVUrvVYOE0SJu5aOdD7N1pLH8KKFVumIp1MOZXT9Zi34TCt0cca3QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760323194; c=relaxed/simple;
	bh=RVZxLrgGMMqpHlTWAMGD95TmDtEz3SIjDhsuj3FHZOE=;
	h=To:Subject:From:Message-Id:Date; b=qtCqKipTp7ubnLuvxp/YSQ6wezXsvSq8aZvCcM2IlxMHD8qDeytVvUGhfakwYUTr+m3+m2bmC27tk3DZKtiF5h4V0RCRshUfOtlkSs1dTQvhWH5TGSmWaicMJ55qNkhDjgRNxew/Pqnsa/SSMjpH1qIZR0SWASoJy6D4LQvlcmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYNYju7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYNYju7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A03C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760323193;
	bh=RVZxLrgGMMqpHlTWAMGD95TmDtEz3SIjDhsuj3FHZOE=;
	h=To:Subject:From:Date:From;
	b=gYNYju7YjdgpnrZ4U6gLWu/1m2uLtZ5FHI0bAuA8CFbvKoSdeEkaexugpgNIndx5P
	 KxwoPeF7TAj5+EdOw5JHhJA93yGivZLpwnkJHs4VevhmBAj9KPl4qAIcshuEz22Ovj
	 dPPeLhxQpXVvxqeaqcelx40OC562yEdIMZCJmBrwQzhYTXdq5Ib7lYxUG3SgxIcmsQ
	 4CwFb7iqQOC0u9gCcJ0tkUr2i49QV85IOVjDVwoX2RP1T7c/WbUjvoEpn7BVCRTo8C
	 sTcbzviFBmUDdWT0gy48ElPcjs8AuNx2w3/skdvQpwF2TB1g0aFmFb6waj0nABbSRv
	 5ogTZSofbxb/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7CECCD187
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176032319357.8393.3145162973411674173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6d8fac1324ce79ac7942f71b11fbe35d94df7324fb9320fc1ba5d0a105040a
Date: Mon, 13 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760323193
