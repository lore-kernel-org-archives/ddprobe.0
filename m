Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC295B21A
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775360134; cv=none; b=l+2TkbGTI9mTviY3R+/XhEGHQH4OZS944//SgTfwWZCiaTc4rhCe+wjTs8wNmpEnCMpK+Mg2vzhWPB/sdgyM7/xCGwopj2GOoZgTCeA3ifkon+0YQfPd/gyxQ8Ze83NCR+gWuhQrq5XH31e/SZDzEc9i2QrDmyR1Z31NTD5q27M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775360134; c=relaxed/simple;
	bh=k4fSMjT12GrAETdVlOXl8oi4qnl2ou65LqUOU/fyK8w=;
	h=To:Subject:From:Message-Id:Date; b=faWXslgwhFUt7GvZIRT7IyHXlFmRdBr8V9OoUINAw9mXymPr6ZlExBez2yyPs/y+4AhhPccA0Uz1QL+6HlAy80X1pw3jDsWGEtHNJVW5aJb3iKKuoNxQa8o1Uvl0Q07l8n/x1nq09cNeq3L4y9kzkFqK15A1FH6J4Ltlx2AnTQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bk9hReDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bk9hReDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E45C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775360133;
	bh=k4fSMjT12GrAETdVlOXl8oi4qnl2ou65LqUOU/fyK8w=;
	h=To:Subject:From:Date:From;
	b=Bk9hReDg4OuSiRP5qtNUtxlIrzSvU3Uy3nxgKgc1T7+8CGvlkSr5gjr1G6q5VHTKd
	 vUjZuQlr2FqpHC/sRYBByfPgUAtAnciCyFgwe0l0TnJfdzHavCBU68AgpfthGGkjur
	 TFszcfFSRG0NkFrRT0bvVYcbOkSqwlG7WwWLXsNbqSPZHWRomPFzFwLwDap15qTu15
	 1KWPlRWJUDJZP/08I25/8ItLWHBLssRj+XvRTVTnfbzkiYkTqSRDp08DK7ZIm/Jqoz
	 fQFo43OOGrrBtxbMt/khCBJLnHUAIMfZ45sAHqtb7bKUEBId4M1miSd9rJPk+s8HFK
	 mz36nTxnixcVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27EDE64004
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536013369.30761.7633937371574789523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621230cfaa33323e8345a748a2c3cffb4ce354b4b070f2b57e2095cf77f20dec
Date: Sun, 05 Apr 2026 03:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775360133
