Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC253793D5
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790010034; cv=none; b=EhYo0d/E09giv3+fGVvFpnJ2OSvF/Cwo/FNsmC/WbrpaWPsJvy33a0UykZOnuis5fM0n1uAlfZyoZlaa7msN2yZy8yL8u/W67SkVe5fbIB/mXdUrCiO8hmXQMwh5mc1tugMfjcK7eaffF8B0jtrOCGOaQL7mOlXRt7eUM+ht55w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790010034; c=relaxed/simple;
	bh=twt+h/lpCW4Blb0xQdnhke8WYjzKNwan4YMfzZ9KgAk=;
	h=To:Subject:From:Message-Id:Date; b=jbvCV9yk8tV3v5hQZN5WthClxonJiIl1peqfgkMIUBmGfHdNvhlDUbQ+E5eSnPwRdi5d2IpeZ1oKax/MRMfybUBTgC4B7unyEQJhIirwTovRXsV/11PLfJ2ByS7nlVlQJZEXNRkhl6j6kA/E51V7sKGmlbYt0LpZzA4MC0Xh0IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRl4EfoW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRl4EfoW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D246FC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790010033;
	bh=twt+h/lpCW4Blb0xQdnhke8WYjzKNwan4YMfzZ9KgAk=;
	h=To:Subject:From:Date:From;
	b=iRl4EfoWs9vDYnkD+aB/29PWsF17Xoo7YmkXtH4ODnpR3XaxOcNv7J07lz4tY5pa2
	 W7exW37jBIfntTytgK8Gct6ETafGEUvHVawx/ORmNr5b2f8kJaOT5xhbgU++V1Lr/I
	 Tg7MFSvF5h2DN4/SQcBWcdveqN6Ctu0AUZTIQQLXlqVn1JM8an0EQkCJnpIBbp7lc5
	 dYlrg8pYPU1gBlf8C7bH3SgFvChW16u5qxm3ZrYHtxs/FmLTd7iEBGJUYFDofUxGT1
	 7DVxe/njOpnufdfCVNFi7xeizfb42jRwNA90jmMVI+aGY5RytK5tRepKuyRPx/bPKQ
	 7WTtZaL0j4J3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF8CC982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179001003369.29670.7237574847389093732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb60997f0ca8e6fb7f0aada0095d28caf2eea79b92ba91a5e534e42d2929156
Date: Mon, 21 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790010033
