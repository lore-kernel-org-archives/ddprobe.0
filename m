Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B0C2EA727
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751041793; cv=none; b=LiP7+j4qFjxZYT8ej+YF0EueRi8IImtiWalJfPVGAnvXmgjZLyr3i1wX3MV9q0O8Zl/zs1Qz2dIuICRJ3ZfGNnhHh77imybmEpLFgPFTgdKnkNJYtK66d4bVLGx01oywgGD6ZZ2lJAuWQnP9dT0haYzivciL1WWDp5ODMowwpEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751041793; c=relaxed/simple;
	bh=hj2D02+tpWiJN4Fj2ySMwU1C4pW/Y/F/xsx/RpZ7z80=;
	h=To:Subject:From:Message-Id:Date; b=O7NZ3LtFGO3YGUy8aBxeJi2xXu5lOkTk7OagHOrW2hLnRNzbzZ7h8XQcFdvNlafeCc++iPtNApXDQ2SrBW26pBT09o2P0sxuDU5LJzBzgtzvxXuJ1PzV70Fhs3blnHj6BYeNaHsr8Fd7ESLabNZ6UzmJcC4XD0rXPBwOwyTt1SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZS/Cjp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZS/Cjp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4074C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751041793;
	bh=hj2D02+tpWiJN4Fj2ySMwU1C4pW/Y/F/xsx/RpZ7z80=;
	h=To:Subject:From:Date:From;
	b=BZS/Cjp2L+W4cZDqm5FdQW9+TeRRmNh4h0ZChWPzmAqC8xkJk2sINLFkggoeRnBXm
	 9+YmnyOOt67j+u4sVUUXv5r3wT2WKcNsUlBiWB8+GkJXXHuya3w8xyk2uctQFt8OM6
	 KI26DJMg/hotSbASNuSily6VJimLeoNpyA2wsad3sUtMm5ILSREe4/IIPxjBUeFT6M
	 Ovq2vtyVXLKwUds6f0ZH00MeCrrvHEgkYZzI04boQeVZVWe2tgrpjfeBdzPdF4/25B
	 /A41dkVrBsY86MwPtDhaHGcHq8VCW9+9Iit6a5jnMxd7ejbZyyEyw7rmr50MUaj6hc
	 m0U+qE/Cs3bGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915B0C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175104179358.7146.8808056950572904975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478176c292a8e222cc5f3a8b6a42f5bdae105c4b6c7125e43265ece38d870712
Date: Fri, 27 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751041793
