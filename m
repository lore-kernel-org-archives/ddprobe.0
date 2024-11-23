Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE69A59
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732404954; cv=none; b=igrrcuvLXE0uVyeHPj2tRs/z95X4g+zRGtlU1TRLfZl1HenAsTDTswo87LoE9TIFArC7pj61w5i7DEvTlG50HTFRkERSUx76zZFTYjU8om/2Ix3abmF0aN7q386Wst6ARAFLzd1kBEZAqQFQPGOkx5gvXD5AcnhxdHbd8Pm1AKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732404954; c=relaxed/simple;
	bh=F7y/l9lkJMvj3Z3iYPH5/rjOXV7ZMLEEwlvNK2nYcF4=;
	h=To:Subject:From:Message-Id:Date; b=U5PMGXHrpGO399ZgpAbienG99zLCH8oECDo0XNqdpwkoVyXlmI+zNgMCUGat/vSEcnxKLjI5/xoGwM/IKCF2LucVXpDtAj22Uu5sMZZLiwsbcraQ1m2FuyaKuNRLbnt6d1x9GKkh8QPY75cxOKN7QTcC3DkvAq2BRwWfKlWeA4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKREXLRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKREXLRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A0BC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732404953;
	bh=F7y/l9lkJMvj3Z3iYPH5/rjOXV7ZMLEEwlvNK2nYcF4=;
	h=To:Subject:From:Date:From;
	b=GKREXLRKYxONBmQGdXyHNKFh5ngDQ3tWYYF2hxGUqqa2DHghQs8orGkQ+OtKGGZDd
	 Eqhd6LKNFJeEj4WlUh2S6xzrUSYR/T5gZlCKESqdMFLQW1MFVyMkM2D8fZZ1c5gmpo
	 fZiGq/zuJoSNI3Ro9YT2jrGqFOqCboKkFoZmzrcxXxHK180tDFQCo/CZL69epQYWpA
	 TCUy7JyCmkRxgt6ZuLvsRemnsRLsfPwTzfAG/c6T64PgToPICVfPEIm7AlklanjX7i
	 P/EwYPtV0JXmm3vkCJ+DFyhvfTiviTGNozNBGQpmUBcBquQFbvH5Jmnhr4II/BmKux
	 KsrHhT+fl8Fgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B7CE66893
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173240495358.12510.14115556896625203713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08611cf4b253b42f6301d8aabd9fc1a257af7224a7cbb77e60204ce742221af0
Date: Sat, 23 Nov 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732404953
