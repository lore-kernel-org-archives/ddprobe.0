Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F5E2AD11
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754098794; cv=none; b=fHx5aLu8N8vA/tVGFOB5CvWwnL5KcHyOduZsE6rtm9F8LbLGiVZF7Rz6VHtr985oD5jZn3xk8ikBL/n3I3cgOFDhMfEWEN/nQXBl5fhmqYXa/l/xCU7m8mTiz4sVU1rDeSzWI00DuUJ3daEs3fcq3LNfYmmCFnnGMosKXfqHMXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754098794; c=relaxed/simple;
	bh=l8HR5BdwG5yhr/C4y8haWU64adQRfMTmnAjdSlWFnBY=;
	h=To:Subject:From:Message-Id:Date; b=oGYAp8ZbyJPoa8Rz9DEmyAHk6YN4pvYW63D63GyQ4c+9xNIcd6VR1snuPoaPTUDvLEfiiB0EreLJYdUC0FMuLCvmc7xko69IranWe2YL72OFCTgBAyky8EMKMpoJIE/ykDjTGrRMxyHPgYfEn3/dvNlPP6L87QTDXGkadFA/5Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9aDCICA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9aDCICA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B04C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754098793;
	bh=l8HR5BdwG5yhr/C4y8haWU64adQRfMTmnAjdSlWFnBY=;
	h=To:Subject:From:Date:From;
	b=K9aDCICA83JAmI9rjE9bifvmjV92hPSU4FjFCilY8YVxAVy1krUnTSwwnlqW6LYWX
	 6YdgxnHbntlEoljYPWPScQ39/r8Wl7j00YLBZ2nt1K1318WqNmV/ymIDQfQY0Nvsg4
	 mxFgEt9BoE6GP9Jt8YqvBEetfiH95U+4Bk6esobrMsngoSCIQUs9ZoQUIW4dMUPV2b
	 fjCSU58LazoVuSVDqfOe85bduDY3S2fVG0wkteMO7A1QopR/Jz9MAVz95wUGCKyoOk
	 xnBjrkGiRoEy+OUZfPmfXOkuOat/oA9r76vUX5376Oz5Lm7rc8Gl7G9P1C9GNqUeuu
	 Whr/YlXnY3wnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F5EC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409879358.26462.5706430294511406771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0849083a2a40f0e05d41333d4392ebb33f12371ebced82db9cd6068e633293c9
Date: Sat, 02 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754098793
