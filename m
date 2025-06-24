Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E8823BE
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750731594; cv=none; b=VcHqTgQlBRB880NaR3HiGGufNRlSjVpe/xemdSUkhshq5g6OteQ01fPxUt0Ww3lCHlpJGrTIeSrwP1N+jk6iH1ceZHxBR7EYnqf9qBZwXas5Xx7X0/UpgTgd7H8uNMGYl3OgmIpfp+z5i1UVPAkKmZWcoj6XFTULyhGzYlV/u0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750731594; c=relaxed/simple;
	bh=g0sRFTkDXbg6q8kp1C1gcW6EnJDUcYZmg1PmIVFUxzk=;
	h=To:Subject:From:Message-Id:Date; b=BTqg9lPkEHXScQjGWS/I/oZXJVwcQ/g6wEeSnSThe8DZ+cezNjMa8ponAi8s7Sz/wz9t+b4T0kbhPMULmCIl+xnipfo2o2mFdIf+sBVqUKU00nY09Dlf76Utf5STJBGTeBJkpJCXtipO8njFqiSS7f5B+CZXQ5eiK/XSS8KjJf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjK/gwFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjK/gwFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A106BC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750731593;
	bh=g0sRFTkDXbg6q8kp1C1gcW6EnJDUcYZmg1PmIVFUxzk=;
	h=To:Subject:From:Date:From;
	b=OjK/gwFIKXTwQCUS1t7TPWgWak5rKrNh5ddGeRPK9k97F/eCjV0TC8g9efPX5rRm6
	 zjn1TZaO3X+EV6zt9mRF8Gltf3mr/1uKBi4P9jqwyznVAIJxO+i9Olu4UOgoWyEgwO
	 3fdGdwcxh5plLik/qqD3yKfDMmUCrURAhmf+ntemlH6RMvzA/vnopaj6Pz4yKWbztw
	 3x10D4koa7QLMDYu4wF8F6m4N43GYNAXkd4vvlWlKC0p6bf1C51b/KXGMfPg59W1V7
	 Tx1GHliLZ4wy92ikwGhjFJRr/XpB8wdYhBIV3MG5CahRRPd1RSvuwYzn7JGh0qpMZF
	 uuaXM9x1PpxmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFCFC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175073159357.3085.15291983568194734425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3265e5d1c2f4f2b167a5f716d6456c9adbf242a88c6d4fe6ef54c2bbd4369972
Date: Tue, 24 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750731593
