Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2B02D1913
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778039254; cv=none; b=C8WR5mRRe6uWKVZRHPpSZnVwRy3vyCq6OwoP5y19nS6CGonUYRC5/GWtwdz3nMmH9OVnrFYcMpunAsXMcDgzdDoKrKfFVq64H7uhnEx1zWDoiNy6o7PAM8poIKk1NsdWmA+vR7TXLSg6cfBhylz1LhMHaPvINaxo3N7YusRPSX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778039254; c=relaxed/simple;
	bh=dkYeK/IDTit3LH7C2yXobE5A20oTV9kB87YngwIr9gs=;
	h=To:Subject:From:Message-Id:Date; b=lJeb1J5bYNf7OBcky3LchrpvXbEjkUo1xL6rpB+TWTnoWMj8GoF4t4fDPD/4Ks0JOHBr+0gr/3uWfnf3gA1s0L7g+l0XJiHWSFR/QhVhUEBkjBtbuiF+dDNbKBbawZk+15EaLcQLS2SZFSry70/S+0WnqO843vP2t71dM81nm4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jt59P9Cq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jt59P9Cq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE2AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778039253;
	bh=dkYeK/IDTit3LH7C2yXobE5A20oTV9kB87YngwIr9gs=;
	h=To:Subject:From:Date:From;
	b=Jt59P9CqercI1pQS/prKLJQmZq7DfpcnUz6PSdSu0VX8b1C/bV5fes66EkjlgFpFL
	 o2Uc1IWoY1qxskf4Ac0IViuu4Na+kMnxM9iD6hPwXSCb9WCdtpbfTdFYrQ4kJaXtsx
	 8lDG4U7e2FD2/znp0/RYMOPSIsFwABC2RrJF+GR58jRk5EBrD3pQDQOIswCh+5Tiz0
	 e9adsryJ0cYTF0DyuuKW9hjI9cKDAd7j4AivK3CW081sSQznkscRIzGXTN5GkcvwXZ
	 I3nu0O1nMU9ARcrGeA9Vc5j2rLvU7uAmbBELiJfnHpj/yAnl1wCXgAZzG/tWJ0mJZu
	 Q78UGsfU0PZXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0B7CD342F
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803925368.1047.7567060951490974878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d935d9297dda2aa2c7c8a7a170d8d76e81a7c2d52e7dfc340182943615a6990c
Date: Wed, 06 May 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778039253
