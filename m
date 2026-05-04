Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BC131716F
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777930054; cv=none; b=NoTzwWmhAuMdVxMx/Q28neqYXDvZTL8lMKNgpJoDl7KH8ELpEJF1IOolC3LwLPMhzVUDFAyKYTK86C8SgdCOBEpej5FQ3eSEctNM6nWDr9VQnFqHSkFf+I7Ly3oQ3ffyowtxKoxhsanLPRfb0uk2Xkb0O6I2yJD2lGoGLghox0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777930054; c=relaxed/simple;
	bh=7w89PdPJBatAqP2KwUldU38R5p+mRG70CewgeCiujXw=;
	h=To:Subject:From:Message-Id:Date; b=q1mur7Z5K8Y/+nqEqbb5FZRMd3WeJoIpzn7pizm4SNdAd5Q/gq+Pc7aNAOmVkhK4f3i49PJ/cMm5PmmILVfRLZm8QQKlkvXktozINnMB6g79/bChaaV19bX3m+J0bb8sr2TObndvkRwFqcn+kuk+v2Hq88Oj0ZcvsCy0bHc/kGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elZG8+/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elZG8+/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB6AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777930053;
	bh=7w89PdPJBatAqP2KwUldU38R5p+mRG70CewgeCiujXw=;
	h=To:Subject:From:Date:From;
	b=elZG8+/om+5jvo1axtRMb7GwMBL7J3n7lVxdgimXW/+fo8n/G3b3LAHKQMrG9pwx0
	 QZbh3QgaUzsKTCjNvo13dGcQWteo4oBbtnUp/IQYCb35p8SovHN1tuTxzvtZBw35O0
	 Z/h3iDjx629wsuZ6p4rBcMUngv/73AKGOM0OtVRLkE0bBYdeog06TZ08hgysdXHwUl
	 UC/BZVgY045tP6A+caiK03kLRe/l/VOVpEqdikbXwvhSjMmjCZmfxAvZ5TQk0gAnAd
	 FECAYKdhNFMt0Ovr+n1T3yEEhyvUzVdkBCfNwkR1KF0yYOKfVyLL/bdJAUDOl8fCIb
	 bdOd6LvOdLUrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90C4CD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793005368.28282.17824001028608357599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25f0f6089913e69a592f41d79842dca12e8c83348ba6cd40c44e451fbeba066
Date: Mon, 04 May 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777930053
