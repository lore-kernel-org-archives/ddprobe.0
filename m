Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1975229D28F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774408494; cv=none; b=pkRorK0+5/5XjBskxZfp7Xaokr0g733cS4z9PiZWfaZIY0wRLG0crPsRr4QX/v7NGCPjMot+/d0shwbI29PoKE3ZZJwYYKGtDkViIapNeRlI2iZw6zQIio6Ek2lkt7pS/olglFveBmVHWSuHFU6SQnTg0lWZzRiKIY8kvkGS/Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774408494; c=relaxed/simple;
	bh=DGTMZQoKoWOen8qYWe6FFNMMc13QTCgJxZnSTP2gDoQ=;
	h=To:Subject:From:Message-Id:Date; b=X/SvLyxWCSwQAFmI6PCtFIqCFTA6o+RVAVq52Zm1vauRGl/SyEbzbwMBW34rakqRYvQ/x9CI5KUpOwMps2P/VT7teaYfEfaOS15T6jNBMJFMBar+1jRVP+0UnzOGkl0W1og0hKtOq000MyV5cToZHfST6u4bWOs1rfkbXV2Txys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKcbU11W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKcbU11W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08EAC19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774408493;
	bh=DGTMZQoKoWOen8qYWe6FFNMMc13QTCgJxZnSTP2gDoQ=;
	h=To:Subject:From:Date:From;
	b=SKcbU11Wbu72IayFkFj6uiKq7t1KiqfK3Wa5jIEVibFljvv19gGd1mPht8OKz0SsB
	 MdhYDWPgY6fKBPYaRsb0Dx/pnCl7mApTW+7LYbiwpifyVBYt5xPojxPQSSK7REOPYw
	 SXATCeGtkoZKarIE/KrRNkH6h1kmwqvYI5NMqp5wrabFNFM3HPschrR6FQ55tisbn/
	 54A0SO1HNIXQWQXCzhpDo100K1NMP7zOLUrxMGMVy45/8fLYTCi4p+WJrw3UC9ZXT2
	 N8dEWFh8rDTIV++hK88Qs67E4+UTZbdKryL9VzFrDQjfa3vkJ8RAgdqT3t68dhltPR
	 HdMsIIwflbaeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94775FEA801
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177440849358.10965.3322221956148707022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9cf4e0b167ab19e2dcfd769275ca192281b8b6f8426f02d90f5bfac3456e140
Date: Wed, 25 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774408493
