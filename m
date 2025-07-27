Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0D920E6
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753591794; cv=none; b=JLZ6hVEgPmn+cmhxdspI2XPvAYw4gwaF6xU2agrbKXuZQamkEBw/cANOfFv5qPS+vX0j6xzZKbmqplAy2UJC6MdLqRSLxcDkXOsAYn7JcCnUExr0ov5++6N7UnPw4EGC/JgnLL4QPJejyV8+v9uEbRzFVvU29wms7ShV/AhWUMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753591794; c=relaxed/simple;
	bh=mw1X7te4AXJasADQw4tF5F4h533JfKnwRBHNojR990g=;
	h=To:Subject:From:Message-Id:Date; b=mmF2OQLvLorEbt5dU/DVD7QZh2EPQznK18OCzs7GHWIlvkwBUC9V1mLV28UnVxdiqbG14bOR3PSKowybpy4oYc+DutElZyCAFakyWLQlr95S5Vwr+yIPPQ8fCiBYLAy8ejS4beu98VJ/qU8XETPpZqNjSoTHNfTlGQaiOYc1meY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkQ8tFu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkQ8tFu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C0DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753591793;
	bh=mw1X7te4AXJasADQw4tF5F4h533JfKnwRBHNojR990g=;
	h=To:Subject:From:Date:From;
	b=ZkQ8tFu0Rhmz5C8fl7Lh8l7DS1D9NgHRukk6vxmo91O9dykvdw1n1+3AWS/tWRmdO
	 6dkljAcDWT+rPiF2d/wUoI8azhL14qbtjj094eCozLugsNuGKOH524ZBvLsPraR9CQ
	 5RYFYhozuMjhKI75ifjbcL7xIeltNUxEtBrRj8XScqp00wAhFzog1lqfbZBBzBDKTe
	 1BSF3wYUtoCHu+J4eDnpVKzJAtLPYWGHYoIgeaAR+ATUbXFJ4YarQCCczSyIGSZwx8
	 Nh75pGH97sp8lEqTuFMmk2nc4VEZwdFTFhFX7dCLarCVEjKQr/yLTx6oZegfBjLFBN
	 OfNbezrYsQ7vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F0C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175359179357.21844.12723938658353829797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2c546aa6f664cc597caaeaf43d9bef41d9a4cbd8ce1163c4f4c619a0aa178a5
Date: Sun, 27 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753591793
