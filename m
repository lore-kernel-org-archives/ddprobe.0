Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D08B19006B
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766903634; cv=none; b=r722U3bS1FQ6a1l+b/7xOdYCO/RMJurRvprV1eGboUunBZbigwkIu7mhU+umUEk+e/lVc4xKeWDtkb/vCXtAzDoVmCWPOAqqOatQnO9fJDYHXJnK/FvQB+eBfss1Pac3A590YxCBeg2q5fXxyr9Cx1x2xeSY0fTAHDHLD0JeYOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766903634; c=relaxed/simple;
	bh=Y9XCqqdIRl3D5uY4QCDVdo6p3T9ldEKJPuggu6cp40o=;
	h=To:Subject:From:Message-Id:Date; b=uKmaPjZ1vzxRHrjBMQS+LAzNOJ0aBEvzLj6R/9Z0App8F9Hl5wCdzshHsTsRC5Z7S/ELiBtE8bFRCHtbkGIf1+lXVbCdF0SaHg7hgkLRbpW0FbjBrn4PHqrXrbnIpK0b07cqN0qj2oqJdlh7vOmzEHDFpv/toPmrIhj209ABEL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0muZE1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0muZE1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA56C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766903633;
	bh=Y9XCqqdIRl3D5uY4QCDVdo6p3T9ldEKJPuggu6cp40o=;
	h=To:Subject:From:Date:From;
	b=h0muZE1dTv2eC0SRlqPhu3n2wmEIWyx70bpP+Ahs49sW3wRKenZ0GwqEzE4/GJVAL
	 kiDDAzMt6kpHOVngpKpyxMmBwoTgbj49ySV74MOd3PHmww+5Mr5iRSpjNiWrQ3yYQ0
	 PuuP9mRKkb2DBz6yOoKT2nupjrKl9Tv8QRtjLEg4HGLaS7epOZMT38PmIORgqm9f75
	 LypK4tMIqG06QMl6SfXJEjoj6Lzpz4eDn/XRI8pFNWtXpDr2fSOn4VpIArAIpa+IlW
	 4v8NLuqdBQShscal2XYNFW7wrBQnIK0zfUlA7mwQzcZxj1NT+Avh6wSBWzqMBnj66T
	 pWJQ+4eqkiXBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1C1D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176690363360.18616.6431724647977310484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae26916a243b408ddb1a9c1f1dffac1b29bf906d8bfad5fd82535194df59c8e7
Date: Sun, 28 Dec 2025 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766903633
