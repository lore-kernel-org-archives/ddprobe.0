Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F7F19A2A3
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767560034; cv=none; b=ngbXhRUgvd9XIh5ZI7TJZz7ARLyNiWdfv+3/BPFjgFM83hgovC2a4TeDasT0qNbvNj/hy1k0JNubG4u/F8dCQAaBAf7DAJzVW4JTVehwpoT35DBPIrvLtBme7eLCcnBFs0mHrbWrX2l72p9Hp90SaV2HsmoudpLVmBlOceB6N94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767560034; c=relaxed/simple;
	bh=9J6bwHWwa9YsbKBV1PPRM8WtO7J0QdrFGT4AzhGfUzs=;
	h=To:Subject:From:Message-Id:Date; b=P9xy0oAMQCd7p48DuiyX/Owp4s+xnRSnR58pBG7SihCfC81UhY7NISRKgTsNhTu7hsFOrD70MD3IM9FYtOtEDTqQ0cB1JbqSHGRSu/WtFcTth4Or+IFSDiGg4V+5qXSLJ3FS32b5IEd8QtPpKrZAf7RVFScr3gpvKmKmh1q0QZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iG7WZXm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iG7WZXm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28A4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767560033;
	bh=9J6bwHWwa9YsbKBV1PPRM8WtO7J0QdrFGT4AzhGfUzs=;
	h=To:Subject:From:Date:From;
	b=iG7WZXm+f2tPJEJWgUlmI8h3D/9/3Z8iYjY+ylQiVCw/dzv03k5Y+R5r0fUKPGNwT
	 GWbpi2kJULGQ3eogeVGXAfHrEu+k990LVc4nBOrS1TVXOD2s5iZgXrdQjWPYKrWhk1
	 XMvGW24xrvlf0nckDIaxi9myGREvN8C5wABm8ux6g3N2PvJoNAN3rRDvwNSFbh6CBG
	 UMkcKmA2fscaTbTg/lP0aapPZ1Bql69WmLQvG2x3yt7X+e0FxSqq2Pm4Sxr2P7NpMx
	 W47r377NnUEFZUqCcRFPP0HJ4mj5bIX4AaBJHhhKUVc9KQtwsAKJdSDSsIfZ5LAVFt
	 z3jQrh6DPYjnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AC5C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756003358.25215.464750191972214365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf6815c1babe55393b82cd59f114d25200e8b928bd2c1ada5508ca3ecdf4024
Date: Sun, 04 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767560033
