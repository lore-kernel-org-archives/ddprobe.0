Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D67C47884A
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782905314; cv=none; b=ekF95bt6eUmM/tA+NjZEsrRVLvyZjnGhR6EjTAkYk03zBJkghZ4g5rC2BezTgApC+7Wj+KpcjDSyijLQ6RwzkzaU+6lLih00bal84zhytbL4dIa8w/zyNaYn2oBoMjsHNCNvi1e0ImWtBNsM+WOU/7lu2dtrek5ZmCu6VtzllcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782905314; c=relaxed/simple;
	bh=ytV5hwUPO3LHYDzKcWma/kz+i5r36OtUt8Vz6lwaG/0=;
	h=To:Subject:From:Message-Id:Date; b=R2Fwb9o5zEoG7pt8oEXpbkppW37A8hG1X6HmdLJDoIRER8gB8F3X5OuWrlYvhfpc6C8HOgkOWIV9LAtjcQiJYKS1uUG4WVkwv48XUswRsOLOMKgyzbuuBtsqBlGp+3QS9rXR3GjFdUZOTzTJokH8lWNqvCyesgwQKY645wK2n+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhQJ12FT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhQJ12FT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B803FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782905313;
	bh=ytV5hwUPO3LHYDzKcWma/kz+i5r36OtUt8Vz6lwaG/0=;
	h=To:Subject:From:Date:From;
	b=AhQJ12FTSYeA5xnf5zX0e1UfGKKQLnj6XDp22NWAnpPHyn53l/hMUwpMWNDcGMo/7
	 ykDrEXWX5RJR8z//XLRCdesgYNptzyBGWURZTRObktYrRdsMafV3EV620flWh0VbqM
	 88+vBUdtKAKk+KRAX5Xyb73XyXmqyZh504/F0tfriXIsYRrLMK47lR56VYpmTgSwep
	 kbfflfiKnNTDPgIGbquPaTEiq/fQwGytIzYAJYTFDG0/2xZSXFg4Zf1/+k2eFsLQ+8
	 h8+OCAULkbHiYTQYyVsBVrmcb20abC/icL3DPvOMgBXj/sXnDLhYoeTvv/kHSGDTD1
	 atS9BWb3IcytQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9DBC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178290531368.4063.7285282333194677054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be2d0f3a07f9a9419afe5146a7b89d26febfc59b04fb07215d18427d968383cc
Date: Wed, 01 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782905313
