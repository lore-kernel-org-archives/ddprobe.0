Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F25D4266B9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785414034; cv=none; b=HlFImbaCnOaj+JtkWXSA2IOcKPb+jzjvAdHRXB9rNWfxaPp4vLgJkO4hptR/Ejb6Nths8fQkbmxSwmhKdDm5wLozMQEOIvKnHvE3DchBm4kjOCHK4Xk1nTf8bBg1Kmgamyw39y4UPxDJGhvvku7HSYKHnr6Pgx7r4mG5KxUk7mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785414034; c=relaxed/simple;
	bh=i2I/S0JGKQtspEha7XUBsEce5MpZWrNzc8Lhn+gcGoc=;
	h=To:Subject:From:Message-Id:Date; b=TNDkPbTv4CKSWx0rCRggC16WS/avHk+iclaWyiDfvXcYxFx04qlDOkOT5L87tlwWJRRgxUqKUiwrDF9rVUkkTlLpwpmYt2EJZwL3Kh678In7g22Zss8x5i3QIZ3rHrzMmFetpksFfOW5i07pzYJwhe6UrEJB61we9B3ENa1AO4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDNZKwmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDNZKwmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D205CC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785414033;
	bh=i2I/S0JGKQtspEha7XUBsEce5MpZWrNzc8Lhn+gcGoc=;
	h=To:Subject:From:Date:From;
	b=VDNZKwmXHysXM2fxXJ7sKXUfC+Vd0YoOY3oCnfGZo92fuV0fDAQlU66KIcawRGpTX
	 wPcNjIzPZOtTdf/hcGVVKFtnGqlbwd824sAUeMx2ZkdDgtZ7Ot3DsvcC8NScfgtSN9
	 d/ewiHz2htK5GBYrlkRneEsgjyrZD5eIShEMnL/xIKh0gi5PzTLvOmsNP3dZx2katm
	 uSbehTfoH0s+ozARt9eAvSrfEXLWUaATdeLpNPcLxXeTlwitJeE89/yeopCaNtzuaG
	 AdR1pT8oCK8c1oqQxEj/ORg/yqVBLCk9xoqRqsSyZ266i9+Es4Bg5b8Nx2alOeO7Ax
	 qwYLRLttmWlPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4CDC55160
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178541403370.7188.13628629257379085949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08cedbe44ec0e19349ad12abea03e6d90c497ea59f1e7194bf712801647051aa
Date: Thu, 30 Jul 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785414033
