Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB01248176
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766588034; cv=none; b=oV7crfSa0Vk9nBm1s5YNVMtiWsnJiN49qeIclZgiw/TaowKQiLpNLzYrDynUbBdawPyFwwgK7+G5LWBX95cZtlGUDduvvOczwZFA0FjCyv2Sr4V960iA/tuj9fzXd8pWNHCbKtDSYN0UeXSygmxInPmyjkf0TmO5VjaN5VEnzJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766588034; c=relaxed/simple;
	bh=8pJxpG5Rh3WuJBeCWEPMtJZQpyuttlmOg98Er/ihwzg=;
	h=To:Subject:From:Message-Id:Date; b=Ne097cLY8Jcj05jL1XZNlgQnooRi918pag5e3rMJgLiwmcpPCrlfs+6zdzsAEG6NLv3pdUdG9VDxyvnRVL/vH1TyPI3dM/ngsULfHStHWFiyNufiiRVX7xoyJcIehLnfwYMG/j3QVR8XeVk+hevpRNhm4fb3PPfO1Dqm9ylAekY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIoyDyWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIoyDyWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E52C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766588033;
	bh=8pJxpG5Rh3WuJBeCWEPMtJZQpyuttlmOg98Er/ihwzg=;
	h=To:Subject:From:Date:From;
	b=rIoyDyWzeUTLCIYvsw/QD/xHTIqhfEbP+qt8q7BFp40AsahElFZnD/AdZwt4WNu0V
	 ZKiA+9fvzgoqwUcUZAbjhwpA/vBbHKhe4jGrJz7xeB9+6S2GMZh4G119ATVsMgU06Q
	 68bkr3MgYK7r/eu2Vh0HAluR4Vur/SCB1+BcWqyypRk4odP2ddA2amKrWc+aETiYoU
	 EkVQnRCZDPilw2zpevOqKJqCMgr0Nak7GxS7ttFhCaKQOQNQQa/pUwVKQhusdIP34V
	 petegsWfrpb6LN9+wH0iVNvocEkj+sXXwTblLkDoRe8xetKjdK4pfhzds9xj3uhg91
	 ypmKDXzg53BRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BDEE77361
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658803358.30164.4369567239947257177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86fba9ef672fd2537491187845da6f50c1a9a631411f3db42ab0265a7830b2c7
Date: Wed, 24 Dec 2025 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766588033
