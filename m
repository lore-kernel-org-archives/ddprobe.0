Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1301B7910
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783310914; cv=none; b=XeH550C8s/ti1ZLF7/WdLrd/0Rt+7yWJPlrZPQXb3wjzBA3FQuk3XahP9TkPPsYnl+0f7QItxqE8bnvWEIOoe3IaYah0sT2H6kAsXQPT2w3lnII53rqHXzcZD0PSW8X48bboP7eZcGZ6TteoW4A7l7pHCghH8bC4R7LttkyeuSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783310914; c=relaxed/simple;
	bh=THURN0Y+h6Ec8CfAT0BnzCl8dU7QO1HobuXsnNpy5FI=;
	h=To:Subject:From:Message-Id:Date; b=pE/ndXUzFHhxw0jGBqziMq2MtEfTnxSC7mTKE0puMau3230K1tcSGFqqBt44rLO8Ug5/2CiuZEmNkFR7mPqSxlMTPkzg6JjI+PSmBDW5iL+9M6tX+k1P/64Rkp0Fq5FZrIEofMdC5Z5ldJDtJ8OWdAGSLPLN1aqEjyNw0m8dws8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYO3AUlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYO3AUlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C07C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783310913;
	bh=THURN0Y+h6Ec8CfAT0BnzCl8dU7QO1HobuXsnNpy5FI=;
	h=To:Subject:From:Date:From;
	b=JYO3AUlDZezGwaqssA8ume4gWvau4aBtO9qDF2R9Ynwh8rXmHQeDWAO+yPX3GbREE
	 sQDX9WRi3ioLQNhbTZ+PJd7JHFSU3OH2sRp6XvPndPDiIspvpHyamrFiLRrELdiB2e
	 1rnvnYYJ7zwwkApxoNNHwxKHuZpf+F3U26IR7HI6CRl7XfeXMKxdjeCCwDOkw80PCa
	 6Cj3Y515BIVuklhDf/Vuvf4MBx7IzL53awQYf1IDwL9I2NfSftTJaHJMy6d9fw9Pz0
	 YBHCeHwpeyD81p2gKQCd6l/tLI5SqOyRHn1yv0efiqCGlu8fzC/0PZQL58/ywAoKYT
	 r0kwQdexnrSFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD935C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331091368.26710.5292896116737173693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61c7d697271d6c950fb49d8930fd1ae026f0e6a157184ba17fb3a86af4b01566
Date: Mon, 06 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783310913
