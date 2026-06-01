Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB201DB13A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780301074; cv=none; b=HpnqLIxl77o2pmeDEZGP/O8DVGl1WyXxrjHvz04OZhll0Lm9GXaP6qyljrNPMqccDoMBiyXk5vmvJ6s+BCsCSGZfwTUf0YxD3r2+StwV4G5//eCeBT91Ued1cgyPozkZrkh8ww4wMu2ZsY9yA86o3g3pDQAa0ftclvTac9i9zgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780301074; c=relaxed/simple;
	bh=neYuckAYwoP4Q/KFDZQLYYDcMjxTBeRmQwo+6NidUGg=;
	h=To:Subject:From:Message-Id:Date; b=nn3zIVyNk7W4iMCfWdK8ggHEVblt/zVtXEr2WX0c0vJfR6g+Syj/BKNrnbbGVmyCdaC2lju/aq4SDOhpQJvhGbggGA1GJGyfNyLxWpI10kpl4LiOHv++UOOp27Rhs0P+HXrKgidxTB4nMSyoWGOU4Yk6IHs0BCqI6oaOxnIvklA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utC+FeUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utC+FeUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3357C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780301073;
	bh=neYuckAYwoP4Q/KFDZQLYYDcMjxTBeRmQwo+6NidUGg=;
	h=To:Subject:From:Date:From;
	b=utC+FeUzgjFz0GgzqjWGUfgfI5F4wGj1X7gU3Uxx8Xzpldn8iYPA02iYVJ8MbsCkk
	 m7Dvpt6RIijg1yLFaBOIORvJyKGyb3wIRB5KS8dwTCfidc+RO6PHzF4JLbWNE/iqsZ
	 LDQKEUxtaUcjkgKRHmKpV40MQAIwON8Ts098+/ZBA7XQEO+mqGLQof1iOjzp+ns9nh
	 G8fpT3HClKkdDMG6JOhnbCnrX2vd2BN695zTIjsZY+78gtZN1VJ0f6VNImbK3PEqf3
	 KtTbA1txCMvrzPHfLv3cyEzGCdxluVt0KqRmbIundmfxzhC3S7SAoXF94j8wweV1/F
	 Rs7If5heBPbSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD03ECD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178030107369.32533.17082610410028125684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81aff78b8d20f2bcaabd8dc79ad3de1bcc1917830f94c902f333035d3a6de759
Date: Mon, 01 Jun 2026 08:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780301073
