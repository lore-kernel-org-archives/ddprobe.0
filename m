Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E86718DB01
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754119194; cv=none; b=cOCCYhAo1dd1+CdoT33oltg7WWv6RxsdOp+7MLVib/hPAB+qmAulPHjDuy3xKtpISRDOCAlMJsRM4Nl3ba14PnhZgAMTXvnlHQN4FPiSsMznHhTZD446dqLqkqlR24GK7bEQFkARl1FO3d/LryDVIToTQoamQAZ9/L763PY6n+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754119194; c=relaxed/simple;
	bh=2/aUOjk9Wx2nSmAKZXVObTao7PNIsXZMCSiWiSBL82c=;
	h=To:Subject:From:Message-Id:Date; b=SEg5zehWBFSNY6UYfX+2+M5Zs/BmAl6nVVCZjC2y7/CrdWrXdJRUImCAMcBmgf8D3jeJnJsNuS/VPgiBVVCoVeXH11r2IdwfXBcoE06gq1VToZ9+VY3w3wCG2aJ0V3YnlNNuTWIVdBIupFCxheOS6dNVFQm9B2vD0D49p0Ymyd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CajxDwPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CajxDwPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AB7C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754119193;
	bh=2/aUOjk9Wx2nSmAKZXVObTao7PNIsXZMCSiWiSBL82c=;
	h=To:Subject:From:Date:From;
	b=CajxDwPlqqiOVaRZBD4T1ULyj4kaGvRXi/gCMYeSiLCyJGWoQq+qfqJHcacmgl0D3
	 1Xdmg4v0yfqM5cCJff7LhunUT8/k6D/A/r//YQoTdYF2XxgWDYsRsMxq2IfxWFansa
	 l1og1gkTJJZTy8qg3aAWjEgVbEkzSFnn0KaiTeNBXnCmm8zMTLEYFvfM2z8iHsWiPI
	 n/zsLsAYsAZSuRdIh/RHML9zBX691oJ43wT4o3NqYPwDBOBj9RrnGhjWfbOrGou5+L
	 Llf291OXob0W41AsJdY3jT4gbMMsfp4n4af6mJJ/p4NsWUMklXxr49DJ1dNbylcqry
	 eRxL75fzImh8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915A6C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411919357.4174.14142356723003967839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c16fea9e492ec59f15322caaf8e4725e2622f2b3ab1f8987f41d9fccb36c5f
Date: Sat, 02 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754119193
