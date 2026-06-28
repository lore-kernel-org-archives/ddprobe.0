Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F0F1A6803
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782667114; cv=none; b=mTMuaLMu3ChtxeHvdzPRc1958CPjotdY8+uXE0s4+svP3WQ7bfJPtR/cXb1eW6c1xi8dYa9SbkOvWn2InQSuCuUgTzY++h+tnOhkZ8SvhbASl+QCcEfnDhU4DXeXLmaU/nMkmwM2v19Ch1dLAlXfdIJwuJK+f8THNpEmMHBEkHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782667114; c=relaxed/simple;
	bh=RX6XRdNZcOzFQ67ZX6FNdjN2QHCFbgq8Bnc91PS5Wis=;
	h=To:Subject:From:Message-Id:Date; b=C5z95qBfgVxAPho5HI0CAgo5ajpGn/FmE+WUP9eGmh43JNYdAaQjM8kRCsqhpzE+B2XSKvpIJc9jyDJth7OSXNUD+OwC28f5Y1Q8aYfqfJydMSDoMzhBzXCowoZ4QBKEp0C0nxFYTrlK5OS3ikSmuOB+IfcLgIg5NOMC5ml3ZuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmQW7aoO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmQW7aoO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD654C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782667113;
	bh=RX6XRdNZcOzFQ67ZX6FNdjN2QHCFbgq8Bnc91PS5Wis=;
	h=To:Subject:From:Date:From;
	b=nmQW7aoOoBCNFEslkEQx0TbzncAKol/eygmgIiGDN8X4KJTpMti+9BMZgCkMfmp/n
	 6UvMeh4awyeC3FG9x5Ab+LQcFcvg/lIpz7T8xSNEahIqU2pRVLZe8vxRChwOkvtvTk
	 +WK21iE5zGqUPOFHUekEQ01suXVMHG2Kx4OX8FxDcRrAF9wFJ7rc369zxlOT/E++Qe
	 IoWCKUBZZWLVOx5catv/LQ92UtR8e/NB3Hc8enBJJJv3qeUhtqL/OU9BciYqxx3nb8
	 LRryvCQnlDgwLNwjnJbagBQjvL2U+b7rlS8cIAjkF1vMyTPhl/KgQ3tGpeiu5bEDT0
	 m8aReQKon0c/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F25C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178266711369.20825.2686024118730417118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e20db832be07a8c9d548e9a8549ebb4db86060163c1265e2d7c0be100f35f5
Date: Sun, 28 Jun 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782667113
