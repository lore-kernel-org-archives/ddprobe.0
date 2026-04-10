Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0AA29BDB4
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775857054; cv=none; b=CL6gkNfe7lqt42q6UToNmDR2DTjinq/QLx0TnKIkUvSqcUdgI1ZQB8yuvcgXTxu07Hhk+vhnBhFR5jwOelR4yBQOMa5qh6IDZp4x7Y0oO420QsspmdT829TnVBa6JBPdQ6xoDlmvB+NfTbCA3FczgUtgAwyFWI7AFZvPsASbWYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775857054; c=relaxed/simple;
	bh=gPepn4MbZs1QSD5z0ZGEFKnlLjGqHnxkno9N7aywyNs=;
	h=To:Subject:From:Message-Id:Date; b=sr+19zym11xZLhFkY+7DIep2XbJ37qtqrhjXR/OHMnANuX+XPTPcOh9rAVGp1knNS0HM04IfYnsGYCKsxdABLb60kDOL3Tj230xVqNYnPg+7jWvsLc63JosE4/wEL/VVN+zkt2FX3GtGxh7cU4UsCljB1XmxIj20Q4K2Lkgxg5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baUcLbdO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baUcLbdO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC43C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775857053;
	bh=gPepn4MbZs1QSD5z0ZGEFKnlLjGqHnxkno9N7aywyNs=;
	h=To:Subject:From:Date:From;
	b=baUcLbdOKUHCShKosmtqmUVLFCs8tyKs+CFbERclCN/lQREXSNqW4aDL/CD8tbpCx
	 bAITKct0Anea2xEEKyR3RB2aOI5Gbclluv5MUgig71tmBEkipHTleOr335kkQXi7eo
	 utnCjeZvAO3TsgDkyoRrJpy5WDZhZXCBzGt/o1HtPdCpWkkc5GRQzqaqQdFhphEXNh
	 PRbb/Umur870eD0PCO/mEj9ZKd+oD4Rs5rYpz+BBpxW8QYLUYwVd7E6j5XOzR8TCaz
	 OU9rClk1Q28NTG9RyVrbmfqen7FMJ1UsN3G2JzJakaSQAK0E+3X7OlDzOYWCN3MTB+
	 SNec0t2JMtSxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD04F45A0F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177585705369.21678.6189895129143897709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a641337293298725d440c697201a53f074320817744c48d1504df8b268b9400
Date: Fri, 10 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775857053
