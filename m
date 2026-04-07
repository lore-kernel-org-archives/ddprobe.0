Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C63E22083
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775588734; cv=none; b=UabAFXZpM5bWLevt3xGnL52sE5+dRLn0nxWYO5fOrktyoQt1QS/uxg7oeIsf1vw7oJbnUilOgzZLNSwrZLktBtBoerMLVKAFHIaTeH5eMwDkp5ux8+UMb4jwYM3iZdHMohlK71DITQWq2mCObPyVNfREPoYwvlYyLaErk/NPB4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775588734; c=relaxed/simple;
	bh=lpHuiNYmmoOOP0yp6CgnzK6rfi9Vy98/ivafsmgwXyo=;
	h=To:Subject:From:Message-Id:Date; b=BXAglHgMnRC+QGLf4nqLignNqOa6Jd7HJYLYOIZVwMH8NipXfYxJZiZbuckpti1IKy15egtPs5CAaFB8KNJFU6OM1ah6XGF0/K18IuBiMAS2iiFd+kDOZCU7cNOPFxzW5pHroHuUoF06bcgO78KWP1iD1GcQKjL9MPUOniYRXWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQDU9gQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQDU9gQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA7AC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775588733;
	bh=lpHuiNYmmoOOP0yp6CgnzK6rfi9Vy98/ivafsmgwXyo=;
	h=To:Subject:From:Date:From;
	b=RQDU9gQzBjNOXnVq3eKs/HxjOHDXTanxx2kyi044JrBAA8yUpyG27/ziSboAWzcRK
	 UTorJGRJrYKoY438MkH4h2WTfpbgy8VnX3Xdnf3Ng0o1cJ54KT+PBFcASXwyaIvH8c
	 bR4dGJ9jKjT+Fw/BHu7h+ZAEUYcxK3iV9wLTcMoP/kU5qiyWrUXpNF4D6uYH/zCt/K
	 4yE0oMH35xO4xXiIy2soAMmVdyn72LCgl/x5EmeBBY3HZOcUaexsVTYd/weSbb/xTb
	 p/gss84z839Z0DkW0nx/GjGIS3Qwpeo2Wu3+iUEPpeMjMVFzBeZUHKafvF04xuu/RL
	 75eAOPMMCiJCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B567BFF5134
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558873369.5584.12860673987418992842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae5426c23414c9a4ed409f6d20cf2160fe706a97ff4f6d910021f3bad07d7e47
Date: Tue, 07 Apr 2026 19:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775588733
