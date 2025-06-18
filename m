Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3842529DB7E
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750246194; cv=none; b=CSmd9RCmSaGnlTZSInn38gz+vvYm98Svg1uO1ly0vJHvx0PRA9ODANL0BgwE0+Xu6ObBxS7sJqTGHNfnPjD6ipIf/nyaAAkzOCV9JgG51TkL5trs66McICDHjfC78+U1cTSOOliEI3kVgW9+6L0y9wdgIertiRw7lNYkO0S5GnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750246194; c=relaxed/simple;
	bh=euK2qu0xEl181IJkQWpkARPRxtltlUgPHFZwsmRJNlU=;
	h=To:Subject:From:Message-Id:Date; b=RA99zhtG1XirdRqJ6EaGylwUsm5nieP/u5GKz7Km7igPtdVNh6++OTAt8ELuss5Y1aibd29p1P3b1swQeWp+73vBiGzAPEkSGvS5y3nRmHAB29JWSStbPygM9Am05ZQrTmOq4blNRvFdYutt1ppuxIlrmEiFjh254fhT07SEnNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szSqW6S9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szSqW6S9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91FCC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750246193;
	bh=euK2qu0xEl181IJkQWpkARPRxtltlUgPHFZwsmRJNlU=;
	h=To:Subject:From:Date:From;
	b=szSqW6S9s5DvWGvm5iQmdMrwCJI+M2vcABNAv0fy1TBeazT6VxAnJcXFydQpeVF87
	 1o4+AC0cjH1osMmJjDjezyNfEwTPsWlsXLDd3dSq3DGS3jIm+H0vSnXQrms5BP62/L
	 Wy/VOKBKnUfGO1L2KC+dHc52kqUkeE8Yct2zpUuiPyozNxfRn5c3FRzs1qamNLqphR
	 a7zn1g9VnBmTcJLYZTfsZSsRNmMjEcpBqf2/JQjSVZB3lZ9BYN2Yy2WG1e1z3sreKd
	 J1SLdQBYJKTmgNZsCEG8qoPgbVbiaJvp+wBvjFaaNvTxpEEOpmJM10EaDXDT8ELR6K
	 pvVtMnNbTSNbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957D5C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024619360.6237.3128818836285398168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63db99a0d5307a20893d167648224d82c1b0a219877e1fdaa4163cb8c3c13ca
Date: Wed, 18 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750246193
