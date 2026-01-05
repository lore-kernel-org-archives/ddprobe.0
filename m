Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD9C3195EC
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767610434; cv=none; b=jySQzTcjDFpvzFJ13DDg21zW2NMqcDyJVPT1EPqJMo2ZLnbrtfv8mSb5pEwuOo6fYqgmr+bDfbAlYVhAEPsTDKVtrmtowTCWbWqbopamdbAgn9Bx0ENdXjB1tDVlrmfot9Nb7ZlEEILcglPL8Pu32GBE9pRHtkvnVsyy7ZoRA/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767610434; c=relaxed/simple;
	bh=FfvHyMIARMFscojlP/tBIx2vgzp2bsbLvfQ+GseYJWs=;
	h=To:Subject:From:Message-Id:Date; b=MHDWBurAgWmXknPcBUefWMAoVwt53kBKFJO+oe8j05OVslHSX9s6/Mau7UyZCwf0yG/YJG0oYDWier0lbxJc1Z3//QWRV45cpu0bqEDjD7f0TDfqU+mz/yOKZe3/ledcQksmfKJ8XQUer/aY6ltNmc2XflZ2D0UOLl6bc/uDe6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2e7zese; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2e7zese"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF33C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767610433;
	bh=FfvHyMIARMFscojlP/tBIx2vgzp2bsbLvfQ+GseYJWs=;
	h=To:Subject:From:Date:From;
	b=W2e7zese58PArkXgh2Btzg6VfevDic4TW6QUoacjp1ICqlMcSB3WPuWOmcixCDjor
	 3adj/yrEmd7gEB2QvhxqiGmtvM1yiBpbF7bkjGo51IIZhfxWIpZUCROjZ/YRzKsMcR
	 DsVuSyUjEmuuKdsFAldqVLimZkoOFW8xXXjgD8R6AapoHQSM7HiDSyvZ3bFEscxAql
	 Wt3vP5aVmuCuIk/c1czCxhcvklPo+iaWY728s+jgVR3RqzF9cHKb+w+0ajTUjR33Bd
	 +lX7dY2ft/97nkxgiOFnTrMuS6DzwSTYpLvp3D9vry4tu4nHwdTNfyX6sbksHTg5WS
	 p35mGxjnN89nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF5BC2A099
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176761043357.31604.2108100822285909788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a88bb5a8d2eafc4893a83e371cdb27bfc96d78745008e897ceb6bb6eb41e42e
Date: Mon, 05 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767610433
