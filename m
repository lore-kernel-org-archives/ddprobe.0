Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AB22E54B6
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777200454; cv=none; b=B6yazUj1fpjxnuRzgLRbwjmdwSvtAGeC5b3ANIYTOxom5HrF8kT2/UleGeHCSNcsA+QrVgiMQp8sgcFARdBGlaaYqt2N4BcMnuw/Wc2dTrDZY/5ls4O1SKMQvd/cpblu5ux+f/rrZR85Ysbs6kyk6Yfw7zMdwCngIE09ORtUPsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777200454; c=relaxed/simple;
	bh=oBhfb1oUmGXvAVZgGX/eVZHqssZz+ggdu49sqGTHp5c=;
	h=To:Subject:From:Message-Id:Date; b=PAvbxOVc5j7Kq9xKW3veT3W93CnC/RujWHm79/ww0wtI7Xwv850JxGB/iHSSO4C4gYEfLCfPuECOXVs11gHs6LnB21pgpcW2LBy6Y7M22XtnYuZ4uon5fItBPKgL1c4FjHK+jl/qGBupEvpDS8C+kc+RPQ1pXKZxLSjafo5tRtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=df0vlzzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="df0vlzzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD873C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777200453;
	bh=oBhfb1oUmGXvAVZgGX/eVZHqssZz+ggdu49sqGTHp5c=;
	h=To:Subject:From:Date:From;
	b=df0vlzzwQ5KF47XbfEdRI3p7G3C90z5e2niiGCC51UH0n58Tu8VEPTqw0TxArtIH4
	 Fq4LNfL7VfrOXqHgHGzoBgFqpiUnyAEwudatTT0I55hgHQ16gVRlgNWeBxZwBjmgwm
	 P6Ozx5DnKmlkSA2kq2X9Dq12yUWRKPzUWqNiWPriwW6HTe2GbhSCzZ6fvBPH7GHCvY
	 nqEX0PuXyB6WwnW0f7gXJ5Bd5kHE7/W1AEi2XmqTNhcxu5YI/7UF0HC3/IUpd4oRcQ
	 XjbMw5XvR4yCQ4hoz88hOg31fyKR4XhH7HRVnw/KdbhtHOgkz+p6/Vgs9eNIFHzOYf
	 COlzxcbrk8JAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF358FF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177720045368.20015.8515898841447482315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a644c6cec3c0c0953662dd880cb9fe65d4a8aa877c11a8d1533f0a40f879521b
Date: Sun, 26 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777200453
