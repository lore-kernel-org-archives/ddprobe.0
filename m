Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC094C97
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751329794; cv=none; b=moJnDaQr2PdyvP9JoHrZsZV3FCTJ+WGgiDFNSk/GjY3GqIeoaSetCQRwbixTYQ1iPQzDLu9koaHw1FyOjcOU/DCrg9Kug6qL3Xlni+SYgdAkMccVP5C9v5Souwfkv0lKei47QSHibKb87G19oMJd5omjYoTBFoeKAr0xzJu/ipw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751329794; c=relaxed/simple;
	bh=waE+Ts2/FQYUVByKz1xG9jq5hpFIPVL599cOWfbeMPw=;
	h=To:Subject:From:Message-Id:Date; b=rFOUyPxx13SdhjinlsrAr2lqnb9CpogrGleL1Ej/EZpoSSKyq6Ii5Mc4JO+eq9tiXXxfENttHWK7pX6VCDAQYsJMXaowIlf6vu6UYn2YMhQ/AOCeBhANXmEGiBLTs7ybKy/IBgorbtfZZkOCIkoOGpxpTWYhjclUSJzXmWmH34g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnhS580s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnhS580s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD92C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751329793;
	bh=waE+Ts2/FQYUVByKz1xG9jq5hpFIPVL599cOWfbeMPw=;
	h=To:Subject:From:Date:From;
	b=GnhS580sKPD8a9C3OCkvrQBjDs5fCkhZypT6Fm3SulMdApbGIMuNnIvo0CtXZg15s
	 RJFr8zLSR+84PwmGphyQBmdl1WD3ggSTuCGlg9RViDKSTMF1fL0Iknh0UEGUuRSl/q
	 PmnSJ1LJXFD8cxMfQNbfaoCkHAXKr+KPtAgKSfUCz1g3K82CP6w7AZsMB79OXBdf+B
	 Anr6UutRBH9IxfLYc8i6UoT8Xd4hMBellcWyZ579xuqRfd1VNr9c76LVjPE0Wf7zeF
	 he8UY/6HCfBwMEF/g7D78jjaBHf7ovrwqCv7HBWCThE3J3HH3yXliFgedWcsr5FhxS
	 Ki3aS5MFTKGeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E654C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132979357.25757.14346962304166227969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a8e3f00544aab2715cd8486ee37f93b37443c13d2ae6f820b191301ec9da0a7
Date: Tue, 01 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751329793
