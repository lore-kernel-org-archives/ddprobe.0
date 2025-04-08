Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C95214205
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744109394; cv=none; b=Y3SWd8eCL0aBtuYXLmfNRzwQzYu5szXvQ9Z/9a1GQFIb4rfidbcyuEKXe+FkM4/tKDC9e6Dc/kycHlX3nXJiVHY6spe6Lyu+Cs9WQVdpmjIKanScr3raR1fHmB80RgC6ZGJoVDVtTqPBO1GK+5gr00UlzzHq9uYrlmU3iZsxL6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744109394; c=relaxed/simple;
	bh=FnSNWebJos4LTw9kmj/UHecyewBgcCEvSSP/XC0+oKw=;
	h=To:Subject:From:Message-Id:Date; b=ANKdwv3n+ND8I8DIerohOHaFrrR8B0hZ24EoktdQiwPaIUXvtUfAf/H/3ld6p/nbVY6dv3Lx2MpzWBWD1zxp4IOdi3Q/WxBzouwHkq6yAP61SwRmfmnQV+4v/Xu8js45mw5pN4yEi7+1R5eFtcbiJYvBWDYlLZ3PA8BlUygPsEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d03RBOo/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d03RBOo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1471C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744109393;
	bh=FnSNWebJos4LTw9kmj/UHecyewBgcCEvSSP/XC0+oKw=;
	h=To:Subject:From:Date:From;
	b=d03RBOo/IxFg9AU7ko3r4Wu6Weye7n4/nw7PCjn72M0Caqs3IqShHPpBgKgH7D0Oa
	 MRnl16mFEaspo+9q5ACiHaZawYeuemhC10PTNffIL2zccBBZQ9ASmRc+yOeLZa3V4j
	 Bp92amZClwdI7ImSZiuhh7+dnIvaUcSwv5I1Ro0un/MkfykcBqVHC7GESaMW0exzwQ
	 X2BxpIIatv1wE4yiJr4iSfmbDNMLFRSjaZtGTf4kQi5iw2Pw+NCV7nni5zGMOsPWGN
	 7j9fxrNpdGvJFKQ3UOQNxmYhX106k2lYATf1fLIzwGjXCLtJaiDXIPRGgYFDGtqegb
	 K5sBAhW9k38xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41D0C369A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174410939365.9528.2621355718222288916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8747c5d764e7ad26e659b9a13a0e8ee1ff12e85890d3f3d7ed3a74afd373c2
Date: Tue, 08 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744109393
