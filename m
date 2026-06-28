Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48769221FCD
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782638914; cv=none; b=h+IXd5KmrH48kpzhaMEr4n+777yn0hfrVwOUlc1khtOEOJsh/smjPeIf6TrHk7zJebrTzzpG0eC6Y6nEqA0/lYylkftUuPVwYyzWjIq/I1hnQDv9EZbHsUmX09aIEPmAGjN4Mnp0YFLKajPtHupj0nujRU1BZSMdxCVG4dtg2JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782638914; c=relaxed/simple;
	bh=SJN+BdVA5KluyBPkI/iHNqc+PmFypo46pSRF1aOAaco=;
	h=To:Subject:From:Message-Id:Date; b=GRRuyi3IM2QRkA9zPexKYLNuo8lOONHNGwrNJDr7PsWXPFFSAM6RihblooJOwAt2A+RXsujunR5FygfxqIvLRlJNsK4vJKstlA8IocpA5MRGGs8klwEbyL0xXTj7UNHGg0xB2SAYdjssj3Oq3oREveqJ7g6TEAl8AhVV/gvKm9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnbENP4/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnbENP4/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4B3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782638913;
	bh=SJN+BdVA5KluyBPkI/iHNqc+PmFypo46pSRF1aOAaco=;
	h=To:Subject:From:Date:From;
	b=PnbENP4/EXeKJKpl/SmzJCi/+b5On1FXgea2ri+wNvF14lc+vzOChvyBkiQq6afHU
	 ph85IFOFmhguyhSNuyi9FGYoHsDqhnkmWqMZaC9MmhVvTATRgTgZp16UMBjVTq9ovq
	 4yN23QkTE8loS7uByg9O/ApRnNZV6ThJxFwETkmaHnjpZaBwH3iPLB38tEEBnOB1P/
	 k4jTUwiXN0JTRBXMTy/y0QEOA2U3rXTsYYN/Of13ZhU6ZxQ9jiABgMeeYMGKTu9EiL
	 Ch9xx1kWBDiqSczjqmXWjHbToE3TN6FKPiLO0l6WoF2NyVxUJn50Vh4KrXxnaLoE+A
	 XzeWB7CTi47vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F94C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178263891369.28646.11325668691386236024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a7bbde6876e4acad4f9aa0fda03868ea867c41c1982a12ebe8f5ad6c89f3b0a
Date: Sun, 28 Jun 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782638913
