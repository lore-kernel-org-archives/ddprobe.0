Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C46364A9
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 17:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716573203; cv=none; b=Mwo1S+7Nkot2Ik5fV0Jl174VOY8IYiGYbWOhmKCPZDqStma3j2Qe0Mm/OiBTD6j9ZMzFacCDhcYFxX9K+Q0FYz3IEqoxil+BuhW4CS7CAsi2DeJPPfenwq9iLjS3llpKoRRfz2bR3IGpoBcjMEw1j8zd18Cb2Zs0PZpeWypMMIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716573203; c=relaxed/simple;
	bh=XlEaRKYHmjN7J6KQAKA3uZM44ydOMseM1Se64cPFpsE=;
	h=To:Subject:From:Message-Id:Date; b=fuCBQwCWvu8bzRbVyU9ztbT9P7fGOLMmvDxf4k2z/rTwqD1BnHi7aX0EFsyFM9BViSoU+NDq4yWUxAN/z8S5MT6dJKBB68zWr26EGHtotiqFSXz+WLDn/ZSsjiE+8bsND6Jq4yRFgrrU0CKU+M80LPtmYx0KmjyBbgXiaibKYbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDodgGcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDodgGcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2629C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 17:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716573202;
	bh=XlEaRKYHmjN7J6KQAKA3uZM44ydOMseM1Se64cPFpsE=;
	h=To:Subject:From:Date:From;
	b=fDodgGcw7wgRMTVrYvfkg2tfCVWyp16cXKFsHXJrrFlBXGZfPPoWK7tyKzGrnu51j
	 LNGA1Sx8UXEzwhJSTbQI+U9xmC590N70MDlNjyc7uVFI1txP/grhdKQtUqaDFhzh44
	 19REQ9SSysTuzPlBvhegQdUKbfXipHAGOZJTOjAC2dWTdzuL9azcbpb1+08CbTzPVu
	 VJCiXK0f7yc4761ndwxAbmKL2XWJ3NbKg9/PoJuTGwpwNp28bKFU33dZgL36md2r46
	 876k53v+7QP2kmyC0g8kTuSJ2rWdiHOo4C/MzUjOc0sb1y6mDGG1ikwo/yMFbXCqqb
	 0uPf3Qg9Dda5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB801C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 17:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171657320278.13108.14898784421443444624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6a91d61f1ce582148b7be3be5274160895cc55c69086cb41735bfc8ebe402b
Date: Fri, 24 May 2024 17:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716573202
