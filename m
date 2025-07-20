Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B6C1B0414
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753052994; cv=none; b=TRMn5DOEIaRRsfNi8Lm4yrdtHAZSGxTQb2Wze3dDfoPs/huC+zRw5A15QnzXcdwW805kroQS+R7ajuKio50/0OF05hjZ9HLT8zhq9WA3CZvf7R8Wk7LNS5B2x0NrOrccyARnk/afluCfFtXpudZwxAfc6fz0HPc0EVAvhj3roF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753052994; c=relaxed/simple;
	bh=pMgQXygabzZixhzvHpvvpl5jiRwHxTi/cIEPkx3/9K0=;
	h=To:Subject:From:Message-Id:Date; b=hePguxR146hF1QBVjQcxQjFJsP/QwXyzWm/6t5ZnEa+WQO7XSbJRioi0ThoA0PFIeOPHF9+8PVO03qRglgfypMzV9YQUz65J5q/YwiH6PcTGs7WFPkRKO7/eWSKh9ZTxgmwLL50B1Bu5AqRmDv4vm2SzaKDiNmGQblFzoF2K1UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVAY1Oj9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVAY1Oj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1024C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753052993;
	bh=pMgQXygabzZixhzvHpvvpl5jiRwHxTi/cIEPkx3/9K0=;
	h=To:Subject:From:Date:From;
	b=DVAY1Oj9kM0j0IwzU3lCPshicsqF7GoZGbvYDErJB/A6I63ZDEDTcspz4ogz8KwQ5
	 KtfnujU4DGlFFyUbFyFECMNYNPdpHel1KW7296eIf6ukGXMM0fukchmfLbXnqgjkn4
	 Xl0kP9htpseoA0OrZ1YoKE7+NLTDBAn7fSOeFCuxJtdaXD+dYwFFVzfgQxqOvRo8+N
	 ADlLRSGgNYPyDvCSy+TIBg5XrlY2fPvG+OneXxxhdsJi32YdqfTFFnjZe41o1MFkcJ
	 nF+6C5uh846+e3tfb8UQkHLe6/z8bEULNDpbpe7IRmNCIpLH7z4H12snVhbXQYLZ7+
	 CbEj1w2iiI3qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F40BC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175305299357.2387.13467365846316224969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4d7f1caa60748f153c3b796494ddca471b49fc5b11a45baf3df41e5d5ed3f7
Date: Sun, 20 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753052993
