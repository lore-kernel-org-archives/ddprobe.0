Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4E0131326F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780649074; cv=none; b=DRDnrWXlt4eDiKI+onOgSAdXEjfT06JDz6jgQKOrJPviS7gQVudNLsm8N9GbhbShlm2Ge+xYwKLO4YDyrkM6xmPvWSFnoWEZrPr50qM05FhfuNM1g4JIdD2FbvFql1AnzY1dt+Kh9wXQvgUeC3zctT4aCvtgoElb/xIvZ2579Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780649074; c=relaxed/simple;
	bh=vo5E1mii4BgQy0MKgbLQzcaAdJss5OKiqFjqECViDJk=;
	h=To:Subject:From:Message-Id:Date; b=JJTgWZkzfjJAFy1ZEDh51N/Z9eIvRlQ6XvJn54jsiVdVEx/Z2Jqqw0BdpZUukb5WvjD+O6ijRQVzpNNopDzLVURFt52JoaaAE4bQUUMKWbkTzW/fWgRB5quIcR72DSOJlXaBl44y30jIOjhJRViG81zkwqMVcb0MZInFLmr1Y5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cX3HCUum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cX3HCUum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3F18DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780649074;
	bh=vo5E1mii4BgQy0MKgbLQzcaAdJss5OKiqFjqECViDJk=;
	h=To:Subject:From:Date:From;
	b=cX3HCUumFgHjjRBpE8zH4U2fKg0mOFPX+wW0P1K9Uxc34w3n/hsIemCJGfdpbw/lj
	 4yI9Qax1E3DoJfrZ7TQL+mFlz+kkFxN+irLpZi+uj54aMIDvarViCA6oVhC98zTRyM
	 s+Fm3jEZxcovyWsxxW/5y+QG+EsOSBB5FiMZj4jBZgH2ITCxinE2U1yfQ2wO3U+XdY
	 v/OYVZsQmtXkFeFe8xY8cW/45QjaICng+o0iXr8BSh2Dtv/e0EfO0657jhfjs8ZW8J
	 toztGmc3216TLveRdbsi6gNYTYS51n6kOl4gXUklkGUGmGWsXxkMgLf4N3uFNffHA/
	 PdGjThysmyrUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC470CD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064907391.27580.3726240230822776369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10bcbee083e0707d15ec792de705ad35bfa63c973eb598955dea9c11552f530b
Date: Fri, 05 Jun 2026 08:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780649073
