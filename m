Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B6236B905
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785186634; cv=none; b=XOF9lpuUVhkV5yAEsRbF4aHy9AN5+2LYeN8tUI4snIgJBxYnhGhoJXUZok+r8mWkf8mR+618BWmK9HJjlg2C/Dixmu1BtLUISV5hXVJR1seD7WLTtciwZGqn4n/l5HPZpx6oafQ6tT/tiIOpbNXLGDc4t+5vlUbJDwn04srmuew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785186634; c=relaxed/simple;
	bh=lYiAEWfUhjtj+Gmt4HB4TkPJwqSJP+B10R6cF099QHA=;
	h=To:Subject:From:Message-Id:Date; b=eEOTpPtmK76gdXKTCo80IJwDa7SOr72YONPQs6hp01TV0GvHBOhfuBDIN/gilUz44zNOroo9s5XhTH93Hbx5xTL9CUjw3Ya6e9qchJ3xWKJcNFG8DH+t2c3/epykixR0en+3uXASShU+zQYP9j2QTMyeCX4XGmaiO6Dw3xV+W1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDf0F7ca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDf0F7ca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2D6C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785186633;
	bh=lYiAEWfUhjtj+Gmt4HB4TkPJwqSJP+B10R6cF099QHA=;
	h=To:Subject:From:Date:From;
	b=KDf0F7caOoggwfpWC1JnZ7eLCsI/fIY/FWF9pdQel1W6pgEN69smhQfa4T+2Ieba9
	 YeQG5bkk9S05DZW9z7jXn0mMxb45G6xEwvTPbVTojgbFr1E3axTkc3hJPFJQjDU0Ak
	 UswVskj2HBAndmkgtS7ezTD49YRQkTMKEfBwwXDENYhJvTEAw5d+081SZoQVNE3xM8
	 32yD4gZBJsVB4HJNejz2esLDIoGn8HwMXh6W/4kK19fKGbzzaj/mNZwX8y5J0sZ19q
	 u2RdDEzllasgXJgqb1XRKJqC4Sp2BVuG/fCf2XAUI5dZ/OnayIiTrvrZJSs5DU02fb
	 oFLnX9zguytBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D5DC53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518663368.6627.2488541098221440779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26ff8b53c70cf72fd3ea4571181c8b5094c4c0c46121698eb566f1d7308b697
Date: Mon, 27 Jul 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785186633
