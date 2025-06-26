Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DE01A262D
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750922995; cv=none; b=QTKvYD7gKxBrpvJ3nYOeWQU+wVjrLhizwc7RYp8IXEvSHrL6NOIS/jud0kPCe0jffgpZ6RA5YuVW18y4/V1bBXj4YRUz2NNNy8+hTn62S1to9xWnNLmc6TfnpdCpS0nCLoKGTGOgxjB1jAMcqVjchU5HIA5Nsp4BIJ7t8tuf63M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750922995; c=relaxed/simple;
	bh=2GIs43Wd481bSAHfWVrIhC3Lf5vCzf3EZZLaVITS1B0=;
	h=To:Subject:From:Message-Id:Date; b=aft3UCEDnfpV5srn4bzsjBAeBLhYY9/q2rhvAVKGcvTQW+K6zbfQHpDCR+z2SajR9Vj3++/ChcijXff5mDHdZeGkHwsKs10vFMVcvadU2niglOAc6mAdGMYkicwK0Z6pSrTzHAdukwcen0ZFM/ZyWG2y4aH/3k71TtiA0W+sCOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmVKX6RS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmVKX6RS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F15C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750922993;
	bh=2GIs43Wd481bSAHfWVrIhC3Lf5vCzf3EZZLaVITS1B0=;
	h=To:Subject:From:Date:From;
	b=ZmVKX6RSod0bF7o4Wb3CgJY3jkJiTh/qcuQSJtNl3FYhM3saPfl7egJDVteJ3yiLR
	 c51F0NPCWyZTlgF9J5uXuAS6rAXCkrCLOQValMobRj8RogI7QYeeZ4Cp73HayYoclE
	 04LBwL+OBH8nsGteZ8/iGQrz6KLgN/4bVouioOfRsXq4UrLCOT6S+l36qi33FnpSH0
	 j4ceCUWE95jFzIjpUy/vaS7h04NYKmsa+Y2UGA/5fVRSisjtZKCnXum94DzL6gbRMC
	 ACKrbbWge5TJ0BR7YPtrPr3Q3R0ambKnRlcPwHnFflR5O613ggfYzp7ApsgQxw8Awx
	 lvTr2splE2Cpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E92EC7115B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175092299362.9085.5657914198715978451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf3f6502d32f3e2aa56349851286ae52a3ef1faae8a8fd0485dc8d7638c4ede
Date: Thu, 26 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750922993
