Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6C0346E71
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775664334; cv=none; b=iyxPb95libzOJtoOvqbOCIthnQtGw8YdJruE+S54nAlWdKMSubu9FjOVugui8vGY07GS/VFhYaF74shudMfNpxUuxRRaYjV398sV6aiaiZWNkKL9bjWjjRW2t3XRsbOJPw21Fe1Ftu9gRChT3LcpAWNQMAk/LCT14OxVRgigYSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775664334; c=relaxed/simple;
	bh=7Smc1pKaPSfnr2WbKoPQMVEuex6CM93fH3m3aY4IZuU=;
	h=To:Subject:From:Message-Id:Date; b=jI81ZR8AVum3tjM98J2c91yiyA27ls0T+Zvt/jimTnL05w/qGwCNGK9dBmkbXDEt4VzYQ0zItb2jWUQy1C4dm4sVGoK95VWUg4RXh4k+H4YlXegZUiJDcHOBv2qn8OQVYF39XyWXWjctjOBo9ydw08FkYPANeHryztYVoespQYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/R4J+7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/R4J+7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7C9C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775664333;
	bh=7Smc1pKaPSfnr2WbKoPQMVEuex6CM93fH3m3aY4IZuU=;
	h=To:Subject:From:Date:From;
	b=K/R4J+7xyG873PPNJCSeBrsHr9TZJpCp0ExEZs1dsuE7kgutVl/duJkDO8f5iGtTc
	 jGXq8DZyuyJjfe2/yBrHOx+XDwGIIPKuTnq2BNILJltZMpgamj0hye5qH+e4JSqwII
	 Xt7w8tU5ZeQ3mOV5Z1jXG/DU4unXXk5l1dIPxs4cZ6jWPZgs4lirmhDHfMuGonvJOE
	 A12CzoqHV6RvabyOXYYGeSQ9qjzvf7zsniOmCZ9wP3v3oaPpyz3XKhMb+17mxzM2+N
	 uOiv+J4wGeTP6CDBUZelItRW9dp3BLsD8C8npSkwD3Q1HWwEPKpQO1PX6McOi9oltG
	 p/ARUx48x3t0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3DB10F995A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566433369.20486.17923066891889527882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f2ea5bc30294c78a61bcabf00d39c8a7359cc01e0caf8c89eae8307f693246
Date: Wed, 08 Apr 2026 16:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775664333
