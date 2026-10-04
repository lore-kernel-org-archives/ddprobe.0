Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87BAD39FCB1
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791120634; cv=none; b=O5qDnWyIegw8rmgJCj1x0rt0vQhqRZC6I1vjivRQwobenj7k7/8ayEcyPCGS4UZVVTP2/N/12yDxrQlamqFewrQjZizfj4A07bbpB5W5938MH+aHLhIvWRfR1tT4/jzkQnjUuZqplvzlddijSStw9S2PDdc0WuO1w8WRAJNeE4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791120634; c=relaxed/simple;
	bh=1SBPoZ1t9leraaTVrVSY0mvWfG0NM04wkm/qbNZlUMg=;
	h=To:Subject:From:Message-Id:Date; b=tM0IatC6A3vtU/SQPInApjgQydXvFJEtzXzYWCfgWACFDN5Q4lPEacshsdOIskqsFHa9V2N3RTJMp2Xt4iN+Trg1geAKR1gnt4rdxQ+OIho/FKOf7b6hxs6j/lxBUPa7zOp2Fj3scS7eu960B6Kvb/DEa6QOIb3/YpfXomiXXwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6omW1qv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6omW1qv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24C3C2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791120633;
	bh=1SBPoZ1t9leraaTVrVSY0mvWfG0NM04wkm/qbNZlUMg=;
	h=To:Subject:From:Date:From;
	b=Z6omW1qvgQnKQo+bxAuPvO6jqw8gIlb77ZI7E7twtFnot7msVGcSrEmtqGsH5oA5/
	 C3892ASqSw9CGbv+rfWascVSr2JLcflA8Q+pGp+bOXZhU/NSgxHGwDI94+ePU/Kc4T
	 jK4r4Chkz+mCyiHB1og1ADKzt5zo0wr3/h+66V9Ot9lJ21pauulCGQabBB00BNbXzK
	 YjT/FVOFlXga20txZHInPLOff0yNKU6MHzJ8p4VxAXjdSkzzPrdiNlxgZqzLywaoSA
	 rzoDaf768gZ8UiUxPdSoDa1JWd6B2vZSjNNrwOan0k8EHznJAkvfKRCSkAR/Et5L5N
	 GWzrgnEJBuM6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD288CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112063368.12932.5102381500231599282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a52c32cd2fe6f43464aae43333a63b52773d96f0c5528bc4b8fa94b8bf588d27
Date: Sun, 04 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791120633
