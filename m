Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CA441AAC
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707662897; cv=none; b=mMQlTVHp0s7k5BaWENH+++bWhuVHoweCezrBiXw4W/wOl7v9LRCjQp0YzuYwucnNuw3U5pgTGOj6XqWlLhho/pzBQWqka3PX367YhxZRRFQR90EuzYugUL2WBnuRvwOqtnXEYtmRPPw1F0QXPHhf3cQKtJ0IhFjcz6N2ZH8hdYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707662897; c=relaxed/simple;
	bh=2Gk/vmtD2aLFTPMXLtFGTkVO+1SvGJVcWf0UICDYVrA=;
	h=To:Subject:From:Message-Id:Date; b=ECfkJ0YX8C82Jn6RzSjM0b2XHDC2tOicXqP0L0pRZ16jPpiQP9zFX8Cq2VWPUTcG03ihgSCMDFXK0swFc3XqS9iua1mqVGdwSKytAwDNggxdveyGaTJaJrm2WKmTQAEEgwKKWRoaGhlk4pTbYfmupdCLjjrMxcYumperrkyoX4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtDvWAnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtDvWAnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A974C433C7
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707662896;
	bh=2Gk/vmtD2aLFTPMXLtFGTkVO+1SvGJVcWf0UICDYVrA=;
	h=To:Subject:From:Date:From;
	b=NtDvWAnO9fF/fTNaaCaP3C7hnOHNQxVuTm3LOIUWEVXjj9PjnEyWEUjU8DvawKY/N
	 0H6gERWjehqX6wJUnyPdrFv6n5pLvokl1+dz6Qzo4rey56p03G6/Q4dgqNdRPvK+Tx
	 zrm1XmhjrUNovqI6i96TzQEbnOIwLEt+wNbWK0BKVe3qg74wJ+gLGNvD+mFX6JccRs
	 wX1B3Wr7Smw8+zrUQ6xk4PNXGHaaZV9mWiyWPSjEFtHZDI45pSA7e02eZNirOmY+lE
	 Eu4dgS01lORnlVdcsMI3XnIj6+Zr+zeyiIf2h+B0KePiGNGjY+k48Im1W4VgCoY5kn
	 CZol1d48Bn6ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E431C4829A
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170766289636.26432.1890270642963206556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7675228ae063dc0ba34d523877a6966bfb9633459f6f95d89be2e6f5c89bc15
Date: Sun, 11 Feb 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707662896
