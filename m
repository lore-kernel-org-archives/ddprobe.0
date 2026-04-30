Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1762233B6EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777517854; cv=none; b=Fq6d+Ova6AdloW1SvgO+4vOHLjGXZs/Vx+nG6MYO5kpkwnHNRZ2PaKaX058gTHRouYUUu78LYxb3MozEy0d11SgDdMGGHJ7TzB5BPCAoHPQ2PW8ZPBjkmPZHjjKXEkUDQAHEKgb8Xo+Lyv9gR77xkjJuXhlVen0bLtqXLEJMO0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777517854; c=relaxed/simple;
	bh=nQTjjqFjgrZSvTOkukPEnSeriBfJWYaB1S1oqMlRm+4=;
	h=To:Subject:From:Message-Id:Date; b=XzXnuz9UshtfBp8rFczgnxiLtrAYfr+ov1yCgfAlQYzYgZHzObBjHWa6+m6lWMGLKATOTAezTINlvqwFr4p1nf5NP1RLdmishwVkOATg1oKu7UT4tEENCZrqEr9vnn3UquYYZkqFMYxnz0wAKY3r9BUmZFOoOa5ym3AyTivYUv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7AWJQxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7AWJQxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66E3C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777517853;
	bh=nQTjjqFjgrZSvTOkukPEnSeriBfJWYaB1S1oqMlRm+4=;
	h=To:Subject:From:Date:From;
	b=l7AWJQxbNqPjOH4DE6xzOzsSNmpp4+aeNcc+HfVWuaJ4dp5HGn9aY3g8mBNUVOTXb
	 Y5IlwLP3upKhe4VYwBFqqy76vaaTEQ/sb2bShXlOW1kwe1XNcW5tjuHfnnF5Uveupb
	 wfX+eoPD5I+hgWBNfwuBRC2nOGqrhmE18Lgda7gmBCyv00ByQ2wmd3Tt7z0NWC2LBq
	 A9OM+UUzvqvOGKFXxTCNwSlh7e8wxV2I7XWYID1qbePuAB/mBlcwNk1+kW7nKwiMDw
	 bZsQWaAfy9wMQjRAlNLtYrEeFdas4azsQUrMMVvtCLh5tz1RJvxePw65VF0mHm+Jxo
	 0dPnb4NEP3vhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9470FF887E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751785368.23043.1272651214708369007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 887fb8f44042d6c8b9093bf0df48eac950e98c382a4b9767e7433ea2bb666633
Date: Thu, 30 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777517853
