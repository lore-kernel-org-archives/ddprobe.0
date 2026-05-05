Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208B82F25F5
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777950454; cv=none; b=Kjtt+GZo+YPvzsy8t4lh8mYqpY9x+iXLffTz+3SwF6+1DOiqS/7b7DlNaAQqi0Td1GREufmpPhuRisxEODYZQ9gVarsO1f6MlXSov7oyBIMNN3jWeqmE3LqE83T9wIooqZL0kxgr43nmvXcSTGLmQL5Ib5voVrk0Bb2A3gVhdTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777950454; c=relaxed/simple;
	bh=W/u0VGBhHZQyyWl41yfRbyPekT+R+65dNr6/xk0T3DY=;
	h=To:Subject:From:Message-Id:Date; b=E8yLy0RUcCCTdRRZYluSIbwiNzT8QSpG5LuKhPnkvgZrGhfw9lZJStak6r/vT1+9NO1SVDLFu9fENZ7u1W7yp5v0LywDYFObQNw5/g8NMjhnzicLIQsWKuSjtG3SB88rubeRx/4Wg/VQEFHjh3jtOipp7pqzUZG80fteMsvUbY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQSCLAgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQSCLAgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE13C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777950453;
	bh=W/u0VGBhHZQyyWl41yfRbyPekT+R+65dNr6/xk0T3DY=;
	h=To:Subject:From:Date:From;
	b=iQSCLAgX/aCrH8y0l+gw3mMy3iZRug+cJIgoeGxEl4ldEWaNQl5YTqJPAox4g/m18
	 b1XdLX6yv5Xvsio47pbaNO3nsxEJigOPnsq1OqhvZE+BXuoO2vhnDNicL3NyPfsaQX
	 0u4dsqrG/GXvsrUQoj4oCizvgLLYmBpv3Z5HMuJunW/u8nWxa0HUOHnTGysu8uVNEv
	 gtKHPt4z3t3o36Qcz4FF80nNvLGFMD75ON6jR2XMvHMFL2yUfuvOPxAVe0T7kNQrF3
	 wBC7xHP7bF5LSl6Ph6CyRXEsPC53ixVHSTmI3sJEh6soncMh0Ap9gbYCm3G7YYZPyq
	 VW067f2m3IiiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1C7CD342C
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177795045368.8553.13217954137896827169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a61c140e3e145a2c73af6e4ba6789939fb71b68540cc4fee07ec3e35418a16
Date: Tue, 05 May 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777950453
