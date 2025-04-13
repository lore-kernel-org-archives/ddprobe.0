Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31809182B7
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744531794; cv=none; b=tLEhNETEP9wAzOWKcmEZiZOFW5PRYcd+l1HoFM2C24F480bIszhiP8Z/wso04PiIKzAMtz+idNelQuVSMSZql1SP3UJMeFXQAFCy4vpcH+rz7Xxntu3EsuGo1DL5QrsiF3g6rhhbdXE6oYh2PSiCzLHG0PjM3XXn3uBhSjs5pbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744531794; c=relaxed/simple;
	bh=XU0viiFXG+LRRwnqqsMXqxeBL3uPKmE+QasaxBS60/w=;
	h=To:Subject:From:Message-Id:Date; b=jZSM7ghc1L6jRe8wqffQGbWEyOUlz32bT8MMEek+zy6cxElMhoA/Z1FzjG1j/2995ucPH7oA+PESDa3lcahtj9GX78Av8b8VACcP4f6YjsY3XW3pu9hlB2DRyNm8NRneFXS2APrmaoBLFGt+ZSy84+MFalSZuNf37orDEZbpyxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rfq9jIqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rfq9jIqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8A2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744531793;
	bh=XU0viiFXG+LRRwnqqsMXqxeBL3uPKmE+QasaxBS60/w=;
	h=To:Subject:From:Date:From;
	b=Rfq9jIqs16nKpkxyq3BrB2qZeqSgFpX5ZsWYr2N2ZVLPdg2oQMKB9lmxc4DGkIEBC
	 pFGx6VA2gWAYr6zwyKUlB2VbQihe85emgEo/BD9yliMVXtEsLaKmXs+U9WCTjOtihK
	 bW1tMcHnMZjitTGfHr2V6uda5wqUapqxpCsmwgSUyO3PRe5pPLDZAsT2Ezzen4o+7t
	 EY+J21dUSHQiTM6Vy23EaBha1y835/tO19V+J5s7Jq4e8k1FVcXGqErSYyychu1HZS
	 a8+7jZxEP/Al2PE+bidvFbqvdKNUS/KWUNGa05Scfg7uxxvfT9k9HmPv0le5AO8fI9
	 T9KFvCv90GMVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E050C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174453179363.10091.13984855935186982273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db8a22a24bd43990aeffd9c24d7dd709f4630be06022903edf95b1365e46f15
Date: Sun, 13 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744531793
