Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AF4241E0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705518497; cv=none; b=WXcnI3Z6vs9qnJwTfcz0og/HCdnc9e2gSmyocDGP9ktL2nGoM22I4v4w2kyY9VGhvD32cMxIOj+TDVrAYNYx1GP5mvjsVucuaovB5fYgNSJr+CZxRgXSbL03NqjmZG/s3dvUTyuyQ76zjM/IuOOZvA1bznemdWlA1qggH3Hb5r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705518497; c=relaxed/simple;
	bh=MTWVPGZUp3D98yt951lbjuoi3pU76vN9w6K0TsGBRg0=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=toHieA/8ZQDXKMFIZ/UOa0I/8ofTsBwXhxfn03lUFC9h0QxDzT4pQMVSOTFEd8FnohS6r27NbyZ/Cc1o7sFsuDpkIxL2xVTneE1IK5dMykHXqqEhaLv1NxYXUS2M/2xneS4BemrqNStlY93LBtlZIU52tU8vYKGv9Dl/yEkPV3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dfkf+Sr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dfkf+Sr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84740C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705518496;
	bh=MTWVPGZUp3D98yt951lbjuoi3pU76vN9w6K0TsGBRg0=;
	h=To:Subject:From:Date:From;
	b=Dfkf+Sr7K6KTzmObN2w8rrIbP8WkrkKIbt8sJf49K+8+IJmGqEA+nXV453bob4JHt
	 4/q/T/83RRPhe0xXC8BtZ2QNcvhoe/xL8Tg3klEAI+rwFKdul9JQ3iC6PICkPHCkBo
	 Pd7EAew2V4VP8ybqFoNVLG2Wtz7B8vP4bD4jqDEAH4BnM0aIP/6dyKDDY9fXfEVteR
	 LwwFLqexKcph7REsxVeDQQXa4srSnR/WgM5dMnjVYF3h4ffHPzu8DFIe+tXVw5YbaG
	 Y3Fm3Kj4QCip/eutNyuis4NEF5QmcvmIkO0Eell9yNvvBOOjYGd4I7ChAVM1uU9q9F
	 CCNaCReCi6s2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68546C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170551849642.25982.1633930954373112499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 502f47a494ee6aff299257a0a216f20aeb45f6d6382a946c649e38ca77b85bbb
Date: Wed, 17 Jan 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705518496
