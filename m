Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90CD28B518
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745512193; cv=none; b=ShgUpYQohYwiKUpKaJgEkWj26PoH5vy2piAfAprvDUFosrnZe/PHDwXKtZHWNjwiiGS1yARe+IXyK/tSAw/WR77z5+yUfu65d0tbeUf+UP4dElQuGYQvx7TEFrAAZCHPtHcaSIX9nsUjqX+qaAr6TSSS8tc4vNd74jxZ+FcK4o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745512193; c=relaxed/simple;
	bh=Yl/mxkAFxk01f/Omlir98Ki/s+F8tjByqcEYKhpGC8o=;
	h=To:Subject:From:Message-Id:Date; b=WKoXu5fm/ehVi3tCkA1LSOjaxBQKF93lfZNPtIgSG663LaxSNHXVg6/729COfn/33TUeBjejh6b/aohOwrO9F25Ib/Q4af4y7jFpB2hBuebBbo/dxBEFaL0YWdPLW4dmADwWNTqVZubfubl6/55ohPCF9Au5H9s6lL/c3mowEQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M84YIg3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M84YIg3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F754C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745512193;
	bh=Yl/mxkAFxk01f/Omlir98Ki/s+F8tjByqcEYKhpGC8o=;
	h=To:Subject:From:Date:From;
	b=M84YIg3G4lfhpOm4+vqWnCpbp+cudMIxeVBCib9uIvkt40wGd4r6+/Tdx0hbYvgrO
	 0i7tlDdEAcQ31inhDxym2RRsVznwTqNwGiuQUYf7cHQbwvhMB0ncYEnHxhzVy7aZQh
	 vQLXQnL6ZG45tu0FhDMDeTWk2y5/15DJz9VX35Am9fMwHJeLeh/il3JMLG1BzbZfnl
	 T3Vu6HymNiZYVNm5iFhuBWM0uS9i1RO0P2lVvQM0gwToNf8sgZ/UPfPHamm00E1lci
	 A4kpCWjdaZ04rlqVRv49ECN/zVBJM7ZxdYjVMrTO3zISiUljKPJwuIMyu1KFHGqcgf
	 ldomDPAP8wnoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECAFC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174551219357.31500.454815130595088519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26a9dfb6fc8a490ddf90ccfb8d60ac69977881f7670400e7966dd0f110db372
Date: Thu, 24 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745512193
