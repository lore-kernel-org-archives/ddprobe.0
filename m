Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3E6400991
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790140234; cv=none; b=fr06Cdu2P319k/nJpxrIMGN+5saR67/aWwOzqeuLbTfo7aRNSsz7uuWCgF/7gnqVU2BhX5DdcVq37cSL8tJ040GmfDIlY1MB7FGBWxVwOhoiKAlCEnr3xHVGlUTw1K8AQVBjn8U7jwEqPNd+38rmrhibRuKXQPndt91wBUI7jzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790140234; c=relaxed/simple;
	bh=E6+/8Chn3KFc+YOPDoXAob3DROQb8S/uGxOlcy98kbw=;
	h=To:Subject:From:Message-Id:Date; b=YGMls3a1F91w4XRCSx1PvQ/74Gxulr4lm2qN7wQ+gLxF4JCA4TM2rtJFHXZDjT1VRBrmOrIyY6l2tQ35hc+CFCd0EUOJ2NnDjUI/ZcJ/aFSPBGPGtjGQnz7OqiCWY7FsxmFpsNXDt/IEiPpNlfaRfoI4x+HMIXTQPaSY+mug54E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5737Kxg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5737Kxg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2082DC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790140234;
	bh=E6+/8Chn3KFc+YOPDoXAob3DROQb8S/uGxOlcy98kbw=;
	h=To:Subject:From:Date:From;
	b=s5737Kxg0hQgBtH7IO1nlQ2cH4oTa1hFXge4ZGTiEUR8Z1ptuQlA8DwGmFHk5YljW
	 vVMWiwHvtOfkwNFolevxj5T6ffkNZDeaBxLwbZKIQccDlJ5tyogqGLdavs5JV4Qh6u
	 McgkaBftMDpE4M09+zMLN5DEoMZA+5gpMHr/OTx3mb2jAxDrrK1m2nz4z73uH/SUcC
	 5FMweK/AuDM6YeuaVjNZjQuEgHWlyYSRVi5Ef27jOR+1Ja3CB2qwoK4Qk4z9hHmj1+
	 W1+WL5YLx6TnO4M5YBVpTAl31hTb7KN1oDV2+ucKXTsSujPIgo8dZFEnveWRPpQKmW
	 nImgVFRKbXniQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D81A3C98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014023384.28795.2802223410584296902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b37deaa275690077b19d6da75d33a6ede1dc541786851ce940f819d348ffe88
Date: Wed, 23 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790140233
