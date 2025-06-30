Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C19226188
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751282395; cv=none; b=of4WLoUSJacANEc0S9hSFh4sSXYyzXE2+lyEvLsSlqBopN9e/xgx3UYgOA9/MwES7+xSDp4YB/f3x9snHX0VaqjqAJtjhZ71Y+cN8qfNaabeRLFNP+4PTXsQiaTIghTYmiEfxoiEsmQ6uV45rmJOZVwnAs8a8rVsIja//o0XzUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751282395; c=relaxed/simple;
	bh=goRhzoRqnYOVf8hxxcPPZ6v2/2KdAfMsGLzypbr2nyY=;
	h=To:Subject:From:Message-Id:Date; b=A4AeIE0rX98PTYNKrXEDqiOK1c6l2e1og6ZgN3DvWm6ewC/peF5xsKYWZj1mGvJUUhSPcrvZ5jiT2XlVfXXXjLu5nSyIM5rE1OIrf/Aa6ItEBCnTSMJIeFJuTEKx5m/6Y0IzAttBUfzWJ60hggW0KS/RnMsIVU9CqEa1vKIbuTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDM1Utqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDM1Utqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A074FC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751282393;
	bh=goRhzoRqnYOVf8hxxcPPZ6v2/2KdAfMsGLzypbr2nyY=;
	h=To:Subject:From:Date:From;
	b=qDM1UtqpK/TwbHI26Vd4JLy/N8D3ssi0TAQVY/SA6q6k7J6BIA7mV2LJef9xj7mTq
	 Rtjl18y8B9ZsIfn7Ly6yE4lpToIxIxraWTvFjtUTCc210cW2wiu5bLaBB+KdXpMAXQ
	 R70s18ogXRz+8+xi2p1tPAkMRgmDzKxGcX9MuhbyKQ593oWLHi6ujfLKqcQktJp6zY
	 J3QXpTK1w+u3mMGt2v/dtfCWV40udfWdeVY9QpRvX3xxha0DSiu54qvqx0/xy6Vqu4
	 XieEJtX7HM78Y+ZC+2ayrC9Jjw3bDCcIc1F+DGfuWXlr2uzEeYtVP8/zylOKSQSmx0
	 MQiyIH0JKevHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6BDC8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175128239357.674.15691489772711083355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d77a3e36aaec241d2da1262de6b6151d11a5395233efbb293afb997c2c227d
Date: Mon, 30 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751282393
