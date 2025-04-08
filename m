Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14FC19AD5C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744112394; cv=none; b=a45/fDDi8PZs36AXop7H4KXfspbhQGWL/h84FSaeWCijYvIMbunaCIPDNeLawdq8G+9by8clpACwSaph63BWOfsyLtQ0MeMGgZ+FUH8aimAfkTbPZhRg76KbP9NlvbqiOLEQO1/VJuBjFr3xEPNs7oVe+wQfp5p6fDUkn38miX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744112394; c=relaxed/simple;
	bh=26nLSQzNHdjtNRie5dPKwcbV1OtDI5GSU3lxqVYsZWQ=;
	h=To:Subject:From:Message-Id:Date; b=If7KXuJRl5mTLXrFzLjcdXWXIRgPUaGSLlJNQApVzXHP+x9n9vz5JY9WPsgjTdwxjScCMAocUlAc5fCvLMk0WDmIknSiD3YZR8Gb+KkHCDSPoWnA+iCxXzbIw9cWuL1BFBL69AlQYPhh8lnmnVTSxS1xG+NcOJiNck1/PKI7yt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3t8atq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3t8atq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52E3C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744112393;
	bh=26nLSQzNHdjtNRie5dPKwcbV1OtDI5GSU3lxqVYsZWQ=;
	h=To:Subject:From:Date:From;
	b=g3t8atq+xDVl3Q097DcLPQ1hjC+KHUx2lOZG0T3vJqDwXAluhnb6zLceRIGQFp6Jg
	 JWo3Oafh8ogeu+jNUCkgmllV5xHROHt9vFV42nZvTOWjAvv88yC3io8hXFRTaDDem9
	 jLvlvKxM0u6a5KV17dA6STuK3E43cjWb9XPGgt4tk+RM77EKUMGqguY8yD45+cgwr0
	 iQvGestShULRBDVFX0EihzqGKXGdsNDkEeRw0ct5TrI0b8fev4zEU0jhF6FtoYHN6f
	 V1TAuBl2uoqsCeyXnMO5slZCSAQLJr7vwT5YYH/0ftzIQVVog/ceVdB1jgEIhiQXCA
	 9L4BmuOU2oLmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903DCC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174411239358.9478.3490378274256638665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f13519c2b2e669ea63f4cad0dd82baea3aca82efd9cc926e7a2d301bb37590
Date: Tue, 08 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744112393
