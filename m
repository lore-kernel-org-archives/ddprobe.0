Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5048B1DDC07
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785288034; cv=none; b=r4c1X9qh1thvP4HtpcTTsEflFjq/k4ppTsXhcS2NW325mRjO5tZOSgot4bkz8/zCwaEyFFc1pL1duP+Pfw/WP4gRYyeRpiMf5aFe0lZMao/eugGqataJckOOZBhove+U8HyeGkhyeFSrih8I4WxwtWv7thnW+IvnwD9vSbV2GJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785288034; c=relaxed/simple;
	bh=JGIhgkCwOxzzmTWqJMxzaxYKBbp/fzskRatVgSx/OxM=;
	h=To:Subject:From:Message-Id:Date; b=G8e/FiDnXeMpDwEX/xS2z2eSJ4NA7MRTRgNuSR7Te4FXY7wm3KqHxF41tk4o+ozM1cfX9JiacGiz6nDfpnFpAK6qtGJapQmJvtPXptQ0yCAfAZXiDeSUNPgM3nADTQr1CgXPCavJgtvKeEXJ5ygZ9admZzJ8IlJqz3IFLTPHpkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NB120ahr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NB120ahr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC1BC2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785288033;
	bh=JGIhgkCwOxzzmTWqJMxzaxYKBbp/fzskRatVgSx/OxM=;
	h=To:Subject:From:Date:From;
	b=NB120ahrMaxocsPq/yXrc0hLnyO6fT6qmFzfeGuzd/Csna2uCKYouXOUukYluDprM
	 ObCLmaRBpffML1lAyBkXQyPuzK/RZxTjeJSRPpWUcroaEfPNjyVDIeOz0g2hnOxqE/
	 gbSrD9Zz/U74BULH+GNKk988w0Vrd3xi+78aomvQf3kyX1hEidlzdpK5MdD4UBIaYZ
	 j97Ka9Ku+ZvW/f28WBDJ2aHwMuHQADFnnvqvIK6fboXCrcAt5VVUKS0cQqejlcHop5
	 gEpdqUUJbcuG8J47GuJ6yqLmeOpGJp5F6ukIjJMwvM4CrItebVYoWGQIQnZM1OpqaJ
	 bWPMMk80sSlAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B675EC54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528803373.32055.15436655795545118506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94260faeb402868f8f533cf5743b81e67e5466f62e4f125e25ba8c5d0570880b
Date: Wed, 29 Jul 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785288033
