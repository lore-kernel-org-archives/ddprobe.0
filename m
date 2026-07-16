Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CEA34CFD0
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784185114; cv=none; b=cnok72Q9WtDgO63PlurwC9ZqstCdiAgFbMRauoIpZNlmbbcxli6U5wbXJPex9fnS4EuOymGYOR+QI3vuk8Zld3h26Zn7eahluYCW4JWySrAEwkqmTYLN72Jc/aG9SHd+FT3eeTLlDTrLlWJ5Vpt9W7LQkb0WM4jjF+i7lAnszP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784185114; c=relaxed/simple;
	bh=kthLohRoW4KqKnoWTYBLb4rIvBxHAqVIthgvXlmbiUc=;
	h=To:Subject:From:Message-Id:Date; b=rwCqpq8WVetN+2vCei0qa3CFK4WoZmGawQqfJzCTjVtFWHtc6Rv7+Ye8Z7bNnxijxh6tv9/vvecjohzGu5sVMyMVFSAsU6JnUN0HheiBtD4EOBh9CLScYv/Aoy96ttpZiLWflxavN1NqbSweHzsUYa+42QJd360SwuFKC60GPBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJeT7+tK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJeT7+tK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1173C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784185113;
	bh=kthLohRoW4KqKnoWTYBLb4rIvBxHAqVIthgvXlmbiUc=;
	h=To:Subject:From:Date:From;
	b=SJeT7+tKuhtO99sduKm8utBYnryXnM5d3AJSc33XLT/W2t0wCH0C0x6MYCvo06JwP
	 vr3+fXgcT0wFPJGtR0odZma2LExVbZ++MJl2nX4ufVT4b9Ymrc2VdEGm5hGimMXaoT
	 aswUPNa6YNOcv1jLdahbsPgu2TXJA1/I49SqAu9fXSbgKavK3nPAojM75kI1nNcqor
	 Gd8kr5x/oJ3rTfDX821CtPLALeau3aRQHAB7jV5E8PgMlDfRVR6u3zqGDfFqz8ipTD
	 ckTO6O4fXaHqbyXGtDHAualp8uCmEmz90Y6RS3m7bkpILwu3SUJGOnOB//3tMCMm+f
	 kXSI95BECfygw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE936C44511
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418511368.809.1710272440737931930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf5f458aed9531e5f2939df5a04dbe9b923740e94e67d33335b22b644f671e3
Date: Thu, 16 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784185113
