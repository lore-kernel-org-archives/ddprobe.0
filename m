Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1832A8F4A
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763183994; cv=none; b=YFa0jmq2dKdxlUgB9kzVqhuK+yer7LWadmy45OnKmxpUReLknyWii2qpY4j+zu9R0IiKAU5De1SFCLWFo//YDkN55vB03WZA+F54kjZjENT/9AKz1xtLnlhEvMwreFS8L4ELgmxLXDuLm9b1wLyYetI/eZz2RqAlRwgay9JPz/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763183994; c=relaxed/simple;
	bh=yd6lyifWcJ96atdIYrStmVc+vZ6LDmxtZwPsjfMxDLw=;
	h=To:Subject:From:Message-Id:Date; b=BqOKs6LjZ0A5Ss3JNoD/1dxBPb42/hLNvTC9MIHLf2FmHMF1OpGZpM8ian5BHlVVOWGtNmGyQrHTv77Rd5Uu7X7PkgqOBqIbfiP2Qv8byZX6+zhWq/zFAyV21MBS73Vpj1d4s6WFLlU0cXedYpkRlcxMGaoODWGiio8l8IZY2Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSRIcfN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSRIcfN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28FEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763183993;
	bh=yd6lyifWcJ96atdIYrStmVc+vZ6LDmxtZwPsjfMxDLw=;
	h=To:Subject:From:Date:From;
	b=QSRIcfN6A74P0ANDUabzq7KrdIQN7nYDqEcbm3NQLbIqOiqntZpWAZ7wJu+udSzfk
	 QuL/lLPTyJBIp+R4QccGWiJHyzWFSCGQcvkqZxUb/bSlncTnyLLoixf0r1MSZ7W2Gg
	 fNd+eLEiDi8o1lCwqtNEC2vOiSZXubHL9ViIn0Hkh9IpL2rJRWXgaN2iLOHeyYKfJS
	 c5rjGRWx3590NLkFxJapXleOdHlbnvlM3jzXt558nT5w5KGzb/8FbkUSCqCA0F7bc2
	 QpZYfbhx51+W9qFEElj5HGlq5IM6soz6SV8REDq1UkFxgYadk2xndrcsm9/6Z89OQ+
	 mlAxhCsOGa+Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962AECEB2C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318399358.31313.16310284315596583307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba512e6d2d93d6ed2b57e7880c91e953bee46a8fef97fb8988ad4e462d0b834
Date: Sat, 15 Nov 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763183993
