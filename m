Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229BD8F7D
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767654834; cv=none; b=bFljeyaAVfY99laF17QSph7Bh66tsowWOHCrnGUJGPaQYPcSmDtHkBsWf9wj8Kg0FqAyIV491BsZO0+RL7lSJK1yGWpZwCzbbUf4oraKyM1R4WGCOzLVFb7itgl25KPYfg44S4cyvIE/BbkyJkLqE0t6oXKFSe5XKtGV1Zo1pw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767654834; c=relaxed/simple;
	bh=m3qUJILQPquezFpWsSOtcVPfuGbtEn5sphvM5Yc2Ous=;
	h=To:Subject:From:Message-Id:Date; b=r8AAUbykQUM1csizeLm5yGGNRwKXUEisfI3Ufvpmv+CSB1vKmk9H4f9SiFmS8DYAEFB3bjeu833AJ87RrCetkcNgIPjbm9ZVqirHypj5H1QGIkrXGT1YWh3B6Y4AM99x8hgEOUKomDEBL37yo8QCvyaKNomcgWKdY3LlgrLsvIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPGA4Ka8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPGA4Ka8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66BFC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767654833;
	bh=m3qUJILQPquezFpWsSOtcVPfuGbtEn5sphvM5Yc2Ous=;
	h=To:Subject:From:Date:From;
	b=SPGA4Ka8Y4vWeiozr4ZGsCZg3+QAeDkssBdhlxRxjj1R2coK6W+Jdj7hn9UZ/7rqg
	 +YFb0hwzFXgK7RKthjVwE/1pRyN1LiSl08lxPSC377n3TCk6EETm6T/RwzDpXPBJc7
	 g5lAcsNmgYcd1IDkYfV3OiCShCwGdnNQcPFWxT8UwDj/cuo1sEn2S40gNwo3fGl/l0
	 b7PlCmdRjw7Gge0KZcEvEOpToA0jsIH6dHJ7YpKoZO9kSaZsEOkrrTwJ52bWTl6BtG
	 23kFNwD6TlwhhmIo3PjxIti338A+4WXcdO9ptvGNTWr5UDV+gZXRBWD219WKdSErzj
	 UwkGbznDMxFQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9238BCD0422
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765483357.24486.12424719330981488512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 866f0e17535b616de25f886389e9e3cfa9ef1369033ffe3a0909a1f9686fb06c
Date: Mon, 05 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767654833
