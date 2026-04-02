Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC94288C34
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775169334; cv=none; b=bD9bDaam5/7shljKSuclJ/jly5lhbvY+0a40pnU4ZJ8qOFNPTpwyAMU3JMTXcZiJaDqdukkpPzjZDxWjctOycnnCWJl53XxPpup/fG7QmPWo9S4eVrbLz0RtGk9FLORqsXLVBglVtdNUmRwhXychdZttiibraM9wSj0xXVRiM0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775169334; c=relaxed/simple;
	bh=+YUAXzMjGAl11we9td5OoTvkt692/0eENrWabQ35CQg=;
	h=To:Subject:From:Message-Id:Date; b=VugHPB+wwkP7RKoSbrcWSWI8OvYWfXMUSqL2NSLda4bydD1fkxF83s1zShhT8i0PQUcBhndUUk7RK+mTtWSQzICGibmFOiE00jsxpPesc2q9M80F2rI29giFUp0r9JgeZj8dDPs8AWD51uTKJItJ2+hBNFfhAfPx7zNIxbX6HGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0l6NmgU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0l6NmgU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E3DC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775169333;
	bh=+YUAXzMjGAl11we9td5OoTvkt692/0eENrWabQ35CQg=;
	h=To:Subject:From:Date:From;
	b=u0l6NmgU48c8HrsYbc3j3ueY8IwhRIj8Fk7aTkWiK2OvH11qBhsQFZYW4VezXma5e
	 qf1n131GpPAQj79VGb01z9YCrCkM5Y5dFxYHryTY3GCDmKY473Kbc4Vgs817NTbOS8
	 /7Ye4N19xD2yyEaeCu1qnRsMk0eyrH50npewDXX2CO4pCz6x41simcrG8y5P2wtvR/
	 bYWHCF0RTxwPhe7aOyaHuNhfhO3r7x3PMi31kVoCU82PIYTq2rRwUg55pR9lzA1Lm7
	 Q4KfbzwPphbvPFzbjyPQsbUjqYhe5sgoF+OH25lEvDtUULa2SnaN/sYx9PRGJ33MbU
	 0GR+awYFL0JZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAC1D6AB16
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516933369.1343.7819820227385894864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4eea832d9882d7fe4a528d1d9c10252cc9fd982bc76e654984d2645ea8a374
Date: Thu, 02 Apr 2026 22:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775169333
