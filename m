Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FE615E5DC
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778060854; cv=none; b=sqrsUkus2NykysHcAY2Yl8CSm88M1v3pbceto9V7/rsV4pzoyDr53tFh7K7JtVdENgEaucQXdCcHZIDqpmHAnxI4kTE4RqMco8Bl++kxgGRTTvXTO67hFFSKoOFVkMnC0xhi1wVEyjTofHJzl1SPx8qwTYwjRvnJ7qBhriorMF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778060854; c=relaxed/simple;
	bh=EUnjTV/ee+t3gMR+jqJ+xvDXTLQBMWsi5guPTvejqL0=;
	h=To:Subject:From:Message-Id:Date; b=Z8hraZbtedgHww1HJEysMiY3aaizSTAWiazaBBOeGPaMLhVCJPqOzvGej05SE51I3rvGOyt2GQEcQFQDm2H6JUHds6+c8GILN65hquO8Wy0AuxF5QR95x2p4Xme5zldsWZz4j59ETjF9YYjDFkK0kqFwzsQgB6ugTu/mI7KNzv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QG0sgMyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QG0sgMyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD47C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778060853;
	bh=EUnjTV/ee+t3gMR+jqJ+xvDXTLQBMWsi5guPTvejqL0=;
	h=To:Subject:From:Date:From;
	b=QG0sgMygchfK9LZJRN1tzGJc+NWq2a8m0i72sO6/CY+Cjcp4mpNoQE0joqcaBRilR
	 odHTEYH2y4qkL3XQjVJWylfszMKRqoN5poXZ38/yOmSC8dhylGUX2/t1w0KUpiwvmo
	 2OgfotRl4W192TRNLYJpJU7ZLBr1qCU0tMJO2E1NnfiqZ0sul1d7A+LmlZnYomApGW
	 X3ZOYRWeu/oLSYbEfeJQtLV/nPpbBnCpB4D3prOcAnnyXfGm4OS3Evw7X4sXpnoK9f
	 rjbsFwRbFmUVVfGGhKXTQeY1FaL7Cu4xq+oxnLdwQ502xFHAtmldybLDxt3xgXDTar
	 DxOV9T2jWHjZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB912CD3436
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806085369.21658.865174902718340771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af84402bfd5a9fd23b3b7087a4885964ecbb47ee08ec32ae37a11bb7cc80478a
Date: Wed, 06 May 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778060853
