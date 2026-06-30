Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E27B226D05
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782861514; cv=none; b=HRB2uYYkyflQENO1mgVW4fSN6OJlxX1LkjsRyxRI2tgYJepfPCXvNi3Z5mQTIxaVv7E8x+tBiOihNRO7MADelT4IdHp+4X2DOcnyCuX5Y8zrE15w8kRkm5KUPDGkpWhnQadYUOmPlhb2Y4OzSBTdH/h0ow+qc8h74a8pIjMWDrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782861514; c=relaxed/simple;
	bh=yXXWkIHWGwU28JABQl4VJZpkawUR+o6KXh9SGVHJ2hI=;
	h=To:Subject:From:Message-Id:Date; b=je2TyJ9VvY01fPwTYjMUJMacfVJSmuRNluUC062qLZjIWCUDRwEEhCtIJejjden3hCkB8fzrJGyuU+VYuBwcVdtLu1YxjXMa76lKyOpt9Tp5TBgsWaIZxrq51HYewufxttZdORXqbrFXiB3F80VP24IMo5gVAxLlPLKfz2WhiyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAXjc02e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAXjc02e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8961C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782861513;
	bh=yXXWkIHWGwU28JABQl4VJZpkawUR+o6KXh9SGVHJ2hI=;
	h=To:Subject:From:Date:From;
	b=HAXjc02ey8eSBYaog1vD2awCuvBG7v+ACVZCIiQy2VVIiagKVBCwkWxrqs5ItjB3c
	 3PFs+rz8raEcLQG6OoJI40+elRh1fxCTyw+bIaRNKare5NzVC0p0XnjynDkTwu07/x
	 alKAlhshyELrj4vZ5Zvct+P1AzjLz3tBbuq+O40NhUAN9JecDkSxyce+Y/Q+Np2QIi
	 JJjUesdHyFDJ7J9iKGcJEZdpAXoolHICNomEg8wffhpI74rPnXaOG6TDfBGe9JJYTl
	 IKnHICXw4cEGQ5umQ7UzBVMOAKX22i0ja4ChK7JXd1cuSMl6Y532+Y+RmmYOzQZJJj
	 tOvr3D15EplCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94DBC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286151368.21188.8924878081214995694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fd87f03cc4820de1385eb53a941330e159a2deda757c935a4619ef05bedd362
Date: Tue, 30 Jun 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782861513
