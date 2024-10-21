Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E321FDD
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729470954; cv=none; b=Wfq0woS3/g9BE6YESod346EQvAMl11gBV4PUs0IWw4Hw1pD4CzdGb3lbzapGdqig623MjLyoJa4vg5jMTdJk73pWnrp1QNJ8Q9QO36oeIyP80gc0h2bTTxcrfI6OQw02z/i8liDyOobHur0OEEd6Qjn0mu+xtMiE9da+MycfBFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729470954; c=relaxed/simple;
	bh=fz2Xj15VlYoHDIu2ifauuiEIToyNhmewKdYu9DtEBX8=;
	h=To:Subject:From:Message-Id:Date; b=bSiexZl9kK5ukbcGKKojlt/sWEdKQKbw/LG6iGcvbTG8UmPsiXgr1aVZ7b7H4+CwCS9eoFLG1Iv/gAPlmSICmDdcGbCR+REICESXex4xXh3cYmlMZwf7piVyUcc/W+lzlqvI3Q8dXX94aj58B/ApT8oIeyb5XFbQwjNEBMuQGMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srDwO65p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srDwO65p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EE9C4CEC6
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729470953;
	bh=fz2Xj15VlYoHDIu2ifauuiEIToyNhmewKdYu9DtEBX8=;
	h=To:Subject:From:Date:From;
	b=srDwO65pdCmDto8diRnANonmqsPDx7ZLjnwVG496ni5O6/5Dg+enEvjAiTa5Of+K7
	 RaHhY8YHpwnk8ONHyVZiJuKJJ4szjFrm9kNOntgf3AASagkxwTLv/0I7CLZpS9IU0a
	 1rdhFA1NgX+Dov6tp10K2bC7qP2UrQxmkDHZ98fsunDUN0VHLe/YpAQcD8HXEIhb8m
	 bI2lmU38NZ2nPSOLqYc+BdbzlcJHc5+SZa3IrN6+aBYyPxee88HoWpxPWGpIwcmUJC
	 8WD5YFbJthv/hXz7O6ZXIWdfgvagjWWXFANIsVBaiBwaJjp8jGjZWE/vENpEB2TPaM
	 X5nDOXTY1DNYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919DFD3C927
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172947095358.10592.17084357077167468079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da22b7d265711abbed9d1e5af9d9fd271152a5d7dc51f4a027f1733619d84190
Date: Mon, 21 Oct 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729470953
