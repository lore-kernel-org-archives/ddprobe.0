Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187387CF31
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707409097; cv=none; b=dNrXlMgmSHRdDjllLws/EBi+LioHErN7XWlUhrEw97sPOMBLh11F+BsXniM7CxUh3EBixsUAiKTkYt9+AMFvMk3Veyq8aPtwcPvCzl9fTmXwnef2OHuDBFOAaWbtWITOL2+KU7vdSMRDL+4kuyg35elWsD+cvUFT+8MZMUrTxTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707409097; c=relaxed/simple;
	bh=3AEUYmXTQm5EmcGITz64uaPSbcDbT4fEVax6ylHksCI=;
	h=To:Subject:From:Message-Id:Date; b=lTYydrig0Ai63Adya394GzFcF9BCoDDnHZ45K9/Kowwi5nGnMCylsKKOUkFO4sB4DQhMaXpNsg8csIjMNnjWglB3o3JXjHYmW3cFdKcmDvddEdNyrthDHKUls2IQS0Z6DO66HhTogo/PGJraArUNqt5waTQrmoh6z6rqUs4+cy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8VPdcLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8VPdcLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81778C433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707409096;
	bh=3AEUYmXTQm5EmcGITz64uaPSbcDbT4fEVax6ylHksCI=;
	h=To:Subject:From:Date:From;
	b=p8VPdcLr4KR8tqEsL0siDLuASP8Em3BzS+Rj8w7RjTATtCPN2WOMOvNQWKx8nfuvG
	 pNNSWPZsZlRaJFBcve9laFwc8p+YQRvTNMkAoYSatNPdqnA8ECNJZIvvAheYSS7iZ2
	 nCyFWSuV+cRDUzyoKUZsqkWPrmEz3hl9jM5JtKVQbAkPTdRGP0cXOJxme48LnwjyXP
	 J7Oq1G4m1r68tLyMcEL9bb5JKzUUz1F8jOlgmbwplKCFKaGLzcsc5B2hmJQMyz1l04
	 3zItg1v19t1J3src5bYgZFsZO5MfBQpYYUsi+hkx+Mn6hi7ll/Nn1L8atEaG7fsI+f
	 /qqNNCVGKun2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65059C48260
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170740909640.9101.2620715182919452078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3106f4f6c88a3ed53d87ebd408d21ce38649dbcdb956bcab85d8f8df19e583cd
Date: Thu, 08 Feb 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707409096
