Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E1454739
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773478494; cv=none; b=JTqnbncw77qyEpWk4X5rb4ThdY4TslywSH7jguAnyuO41AiWhzU+HWL3Y1S7ki+Mfxpaeq91IbKPgqYrnB5Fl6KJ+KIGAIpzIqi6AAMuKn250rLXq0TSbplIZpMrCHSl85qDmTobrZIq9Gf9ajf4yuLSb+uk9dHKFOiv52N3aDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773478494; c=relaxed/simple;
	bh=WnH9TqPPdUkPhe8x7h1JSXjH3MIajWm6g9EUpCz8gxs=;
	h=To:Subject:From:Message-Id:Date; b=h8HazdjjoXKKAbIw+QYHosQPAsyQ3d4iyy/NCgjqWx/V+p39dwGVakQ+dBtlu8+dsx1uoFUL70WJihUZOUneAEYekkNk1xyKpqKpbQ3FEzD4WReXZvtjXLf17tKyzMzh8Q7WeNp82+ar6oy62c4U8F8kmTYF3HIxVP1VDL9Kp+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPGzsl9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPGzsl9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83A7C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773478493;
	bh=WnH9TqPPdUkPhe8x7h1JSXjH3MIajWm6g9EUpCz8gxs=;
	h=To:Subject:From:Date:From;
	b=gPGzsl9O295PGPZ6UJbu5F1uGkF6OvHpbkwgZv+ByjeNVoCxwE+dHRtbNmMu05YNN
	 hq6W5hXVKJtM9Pg5L4rOsNdcFXtLLAr2eq0gSRrT3MXBwzc7sdnhK2moEzYq++tfcC
	 Zwp2Casi581dbw57QjrkBF2JR3D09uKhYDjsSbkioUuCxGE2No+YRvNfeYv0YLfmiQ
	 YxTnRZrIlThTeJBC0uXZeTwVGiDMiEwvuDz3P+G8Dybprt2ZTel7FDxRS6/u2otob+
	 ZMeOhAy4KBDztC6Q99dX6Gl8MXNGR7It4ZjUX/ggfW/KdNCzLOEnNREZWSGuPc8Ple
	 H7CI2ytXauUVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A08107BCF8
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347849360.1453.4628686508543664640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0469dcfe94df1661520ae3292a5050dd09c64d59579d78de41193442a049f778
Date: Sat, 14 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773478493
