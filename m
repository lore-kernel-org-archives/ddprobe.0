Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5877035F19D
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788021634; cv=none; b=Uvf4+7dkesFT1oWGY8PNVGLQrtAOkMe0O2qWARxcNQGTxDBR76MT1nOi1JAT8TJwudcy1PD9aI+AAzWptr6ZPGL/2/YpkzByS+McEbLinh/5xRBCtIRJ7JHvWHOYMAuzkkwAaGIORbXcwPRTPMkMZiZezLdsPt3K+EgkD/aaZfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788021634; c=relaxed/simple;
	bh=ooT3wVmtMldiUOg1cUk2UUsHMEW7E9FYwC7dsBnDFls=;
	h=To:Subject:From:Message-Id:Date; b=M39G64G/XeVAvO1/cKCVhU+0waz52HxodLgPMStWgvCP6HYt0K0jsV0PhSA6Qlb3Co2SR8qKqlpivrL/MYyQFPKTy4dXIoC7mVwAAOUcVwxbif70llbTGURcpwLLfD0hGLsfPPQ5JO9zpe1O9eBaBBXEqjQiMQeczLp5erSJhhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fw+xrBoP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fw+xrBoP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CB1C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788021633;
	bh=ooT3wVmtMldiUOg1cUk2UUsHMEW7E9FYwC7dsBnDFls=;
	h=To:Subject:From:Date:From;
	b=fw+xrBoPTrYXUw42Zk9fWislHvKl6VpsGEeJs6EzMdgc+7dBjjy5pORnGkzSAPylj
	 6HxeO48MNJRcYSQ2uCRceSqxdMbOWRnzns8FRBSs0wDEBtXl6oCGr18FAYmFpLTx0+
	 Ts5lk5QlwVRSZsyp7gMfJibaqWj9wKiewP1QY0ADfK155PR4b9l9aXG8X9/t4lyWey
	 E+rcDn8Ca3s//mIpehFCe4Jz7JCht211sWfN8CO+U166yjc2SGMkxjwXwOs7FUm2mu
	 nldifZ67jJfHNONfibGAfKgPWW23MBtDTM9uGmiy0pHEidNtT7KyoO0VOPkzaeebJX
	 JmlvQ5W4K5l5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1C6C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178802163368.3885.14449286604556292409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a74b4ff2895621902e9c4b5917da3f67a1d553783428aed19382ff926fe397
Date: Sat, 29 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788021633
