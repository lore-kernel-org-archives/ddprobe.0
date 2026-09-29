Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0E94BF937
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790692835; cv=none; b=hRcYxXVDVegK5/K4QW7vX/BQO4chJetAvJMdCyTf9EPasvekL/CHZvfMuvRobG7Op6NQU3sdNrW/V5vmW33WpLTVK7NC4l2wznE09BJsanuyPgZhR8WK+POPNJFyiw8Y2Y2JgyAuoijYReMcobVXnz0jr9iHMOpHFS0iTXwzhac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790692835; c=relaxed/simple;
	bh=Q5IReDuFipBIeS9l3e0/yWzbn5REp4ML20cn0B/dxvw=;
	h=To:Subject:From:Message-Id:Date; b=IqpBoG9Jxzt0Zxfaq8uOGikCF4959osjyHMO8Sdcq1c0V0wRFFHaRwZSXB5XgDWgn5TeIfYxhNByBNFgBQkR8KP0tDAy6O7FgGi/x4OsnGUi5P9+5p5JsKvQsuyweyyvd8hTwljysGX7To0k3I2DW3gY0xgLVRDMQ481heDVKjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEO7uRly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEO7uRly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D349AC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790692833;
	bh=Q5IReDuFipBIeS9l3e0/yWzbn5REp4ML20cn0B/dxvw=;
	h=To:Subject:From:Date:From;
	b=fEO7uRlyLqlC7SNdyyl/Xz4gzyOFAzXGCCeSFnJEXDuKTU3gLGj2Wpe+0lELTKrrP
	 qCwg+Ynam59DuNIj59Drzct6SpyeN29u/NSuSoyPtxus7yB6eOiSDfzbTqLs4o6Obd
	 HAOFyLZTlDC3g3vYdPHDNYjgnTuTMp7FG+EZHMqqsWU150V/m1+2vHXrW6gYEA1FU7
	 4yKP/IduatemVUSyCq4mVG65x8AHnpoFVB8L5gPtnKxFbQoc+1RaG7jkQmWdurcxrl
	 l17h+2nIZ2ajcAwJIVn2rPnpJbwGeYfzGj8ShX8lbt2zsaPvIdxWCgZ2p8R0RwVnqA
	 Kdb/6pml4gF9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6A8CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179069283370.20505.3248671549078655508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beafc4a95827623c587affa663a98a90a427f8566b936d74a6acbc049eb25d42
Date: Tue, 29 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790692833
