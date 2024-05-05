Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691571860
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 08:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714898543; cv=none; b=niA+IWbv7PEOW69HqTDdndNE5cFXLl/Mw9pu13/oYxO1IQ7MUckeMXXFaSY0J3II/J/pjMi+r7Qp/NBre/aF5ff/h7eTfpmHDTcaaSrzN3E2rWgXqUI35q6SINbo5P6Bk/0atqINNDa9VJJ3JwgzUNf1Op//mEnMohRk+f0Fm34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714898543; c=relaxed/simple;
	bh=QXGMdULaizSq2YrUayHwus+7u8fwrDps0qwXFoIRqOg=;
	h=To:Subject:From:Message-Id:Date; b=rzLNhUE2z9bvb6OKqlbTo/PqJSJfvnuaz7x4oHO8sTCsoxyoq4LWGPK7aSOxJ2YAwYPN/LtDgbW/RibTJEEE1S0mSxVpWt4WRpabZ5T/TUld9LEAsge/6VF9YB+EH6j9+vtjMkNz2yzNFFNggSPrp6mKA6GytpTzFifs9jPcDKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdG7me1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdG7me1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D255DC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714898542;
	bh=QXGMdULaizSq2YrUayHwus+7u8fwrDps0qwXFoIRqOg=;
	h=To:Subject:From:Date:From;
	b=HdG7me1Kk1ogVJMCyW5jeSYBf9goskSMR3aeFAprByfaPXS49Yt2xgdH3f1DA4e5M
	 UJOG2lZ93qEBLHrRk7azixfzwDUl3hqmU/CI2utb16ZKSBT++wn238P0XhAiTdNkm6
	 L6bQDC3AZrapDl7FjchrWtVlv8P031GQuHXpTYvR7PaMVdZvUjJmlkeDTYywLXHkKR
	 ZGsxPfx4fxAASKb6vYIRFSgrc/+ScuyBh61PXhXnkS73xE0NvAy3VIUwnhJgtnZa0o
	 LHcycREArGOUR298Ugyx9Vot2My7pLvhgnvGjyIsjZ6wrggWVG9uZWTjurr8docgq6
	 6b2LW86GDeXGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A9AC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171489854275.18510.11230915900190925461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb9151c593ed33aabc00618c64c6ac8294ca091f374d6420016b20c324ff24bd
Date: Sun, 05 May 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714898542
