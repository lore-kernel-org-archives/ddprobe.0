Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF081FBEA8
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787965834; cv=none; b=aU3qGh/lhbvCx5lghQestoeC9o8hA3LQORhf3SbCKX+n5toG89k7SACt2rA//RcFc60wURzdfSc8X/PjjaGxlxMDz7utXtlr6WFHd2BtJc7P6Lqi0SkbBKJ+Pua+wRItY5Xb5zhGI1nA6c8MLQD5dGAfwkGO6HuQd0CJXBSLqgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787965834; c=relaxed/simple;
	bh=xZ0ifwcD65PMqZOIAsCIcE+0worWEDEQKMdw9LZIq+Q=;
	h=To:Subject:From:Message-Id:Date; b=jPawsoa2efYgnVXPdC3SXuMotZaPeTlgt1A1k7PnDp3Dhjztvnz3s1peiTV20lm7AeXJ/v2antrrYlYfnm6EtanvPFsl1V9sDyAuM/ZQtNqiHrZEWy6pbofIW0A6RvjHKNkfMiu/C/Xiy9FgXXwo8jK4P+Q2PhD/xmJ2SU+neBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOLyjjzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOLyjjzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23C8C19425
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787965833;
	bh=xZ0ifwcD65PMqZOIAsCIcE+0worWEDEQKMdw9LZIq+Q=;
	h=To:Subject:From:Date:From;
	b=EOLyjjzKCK+xIy3QdeASbyVx/8cZ4xqtiiXRBXCCaeX6IGe4jlhbU1h+6J94l5R6Z
	 Oj56NjslOwWrs/Nu0BL/QxEVDYL2mIwLCyNLB15y1kA+VNlqJaebASVfw7eQam6Dlc
	 3zoOEIZucxKRlIkEu7DG8GQhcX86L9I9QjSAUe4arTP8W24suwNWL1Ab7pBjLM8ALB
	 h6l7NTy4JqDsBRfyrRBXMkBcuojEI1FFDmMXfJ5YTxlNXMr/L1QZBLo0vdSzhdu8il
	 6LXIlySo7oY9IChwsPSvQluepBoVRtxYuOQv5kiJiOwkeZoYTTrWt/PxfcNaTfA0jx
	 rmm16/iucHQVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB18C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178796583368.20631.2748386744814883121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64a3104aff6433c282986f224a686a5059952012072b89053686f0b0c99c276
Date: Sat, 29 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787965833
