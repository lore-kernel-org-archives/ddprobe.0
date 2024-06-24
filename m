Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1743619E7EA
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719247343; cv=none; b=ZME/bdhA/JKEPdCe9Hslq3wdX+kUM2boldI1IzRrdhgb4az1uCwTX/W1KSseH/pgNXH18BIXRoDYF3f9ILIqX8s1dgXKoh9t+42im4HK2wKSxT3P5zNpUFTibwFSX75z086ytWaTbqQfq9IrEWS8uge4sSwoyqN8nj5L0+nYFC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719247343; c=relaxed/simple;
	bh=uBU1LXkZ3A+hpNGZhU+XoJc0+s9e1IAotfP/8t8+uww=;
	h=To:Subject:From:Message-Id:Date; b=EiUpJ6K5ppZek9OKoyqQbS0+k6tjdxEmcPafdU9Qk0TwHw50Qn3Aza720GisIyqjGAYKWWLQprac3LXWPD3W/RhI1Nws+mAvKzwzeIOp0EB6fjsPgBtVriVhjn0woZAc8BmefvFxg8Oj9xidf/D1bi+rOEcQCYTTP0gzhEz/SmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGhKHKyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGhKHKyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8855C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719247342;
	bh=uBU1LXkZ3A+hpNGZhU+XoJc0+s9e1IAotfP/8t8+uww=;
	h=To:Subject:From:Date:From;
	b=PGhKHKyONFlReRl0kgKpH3TYcLi0hKRxdYZHlD+xtpiZa3neoZiJzeUe4QJtWJxTS
	 u2GOetGSRbhzd+px9rHkBwTg8xEIRJ6KsdetqUgbF2caeGQsJaHkJ8yuzUVWyIpOjw
	 8bs4a6vyfkb46rK7JOrjVQe20SgdLLjRwJ68z8tPFpAVY79kc7T5Ah/gQgThKGpved
	 At6XqkFBUOp69aCg/OM+c9CfGGpbrU6/OT+3E82saf0x2EcEhqUIQzsOYZn5+TEHpC
	 XT+D/TCjJMC59o6uiDai7hkK2dFqINbBJ+InlcwjyUFa+d5Xw4f435UhgeBcwUbIys
	 9jnyLXBnXq6ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F13C2D0D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171924734279.16721.8346728039295977391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6fe465fa87a348d3a8cae51b1d1f87af3b5dfa48ea3283ab61b363110cfffc
Date: Mon, 24 Jun 2024 16:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719247342
