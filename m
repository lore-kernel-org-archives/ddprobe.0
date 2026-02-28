Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3F5478E4D
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772292293; cv=none; b=sc8x1oEyxbgP38HjtbRdvjparZVIwvMfFd5HdtpK+Enku0IFaCRJ0r70ft+99U3+WVLBMCHs7jvC6LRMyvBf5WHy8snxkF3UVWccOqL+mZjCSzAnvvomuUUTmDG3mPSiEeYBGNP+bIsPyNTqwtw8N1izMAo26wy0fdhvfqJMIaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772292293; c=relaxed/simple;
	bh=A05GX7/cxb92pSe5n4XML1NetseW/7TI7Xi3rJ1ij/w=;
	h=To:Subject:From:Message-Id:Date; b=nRbsdcaaWrAn+lcP6985jl8pGAtESQT2DJWGvo0JTMW7FUUijFACw8yy/u+XThWKmSUvcAhchz3mGsbvS6OIQvRQWww2/8TvcwRKj1S2FEj6H2QO+sScZLRT84lgNptbQz+eqyUZrlhTH0drxfSrR7BghBm1ikpg30+D9aEv2tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZrl9lTg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZrl9lTg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A35C19421
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772292293;
	bh=A05GX7/cxb92pSe5n4XML1NetseW/7TI7Xi3rJ1ij/w=;
	h=To:Subject:From:Date:From;
	b=AZrl9lTg8ZIZLi183hKGYH/9P53LIB2+4rObFg1QknkdX+VwE6VBN/HLUkzPoBb01
	 3NjLE7TkiREezIwh+NJGcrN4d18XzPcqrt5w/7Ki/QMenG1MhuR7jq16pIQTZrTBO9
	 nWMCJ0LN+5HFgMZSp2IcFP7K1x6dpwq4l16hSG+DRP7MVMneWu4wSiv53HnekKl+MY
	 Jnpgqv2YITzTMddrZ39mOFe8vyNEluUxyqwGJ1Z75JjPZVy+7zxP6Na2OuwCBmjRgg
	 X7r0itbwuyhGoiorN1+2hwWDOPenMZ87hsw28KEzO3Y6sY/IpT8LQOFCEPsr/TDrFU
	 6T+zyBpa8IMZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E71CFEE4C9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177229229361.29765.8425146881843950961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0047e9622c09c094ccf36d13ce596b76dc757fa5e6d7630a8ed03ac35b21e85b
Date: Sat, 28 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772292293
