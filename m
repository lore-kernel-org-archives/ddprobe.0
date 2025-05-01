Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA22256C6F
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746133193; cv=none; b=iDUNM7b7Ti5XCekaq1W5+d/Ygtf5Tnlryqgh3ZHrgptszKl/U6UCa11efL3BEpgx18O8durUnEZDaiJqeb7Ppz/8Jg0gxiIUWwK9IJGOEN0QM9jOCC7F4CsYWb/NJyMw/3x5fMRjfBk/N+loLlYNbV7bDkzj4r6Nw/PuUIiFe08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746133193; c=relaxed/simple;
	bh=C3mPyFCBZ0IjgaiVstoZzy4waJjEUFkS7sBmf7BnrfM=;
	h=To:Subject:From:Message-Id:Date; b=TVLCmRFrV+tkhpZW5oRPhnrBtpUarnFG7zkJDmy1DloFeuI1VDI07Qkg+KGRLk8AFqOcVDfZuE8rjguEub4K2Ij2yr6tjOdp1NZdqg05mpbqS2GBqsHaqdTtzyjPEMLxy5QIXfdWA3/H7x3foVHVJZTI1sYjPfac0PAsRK5qMII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbsbweIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbsbweIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE43C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746133193;
	bh=C3mPyFCBZ0IjgaiVstoZzy4waJjEUFkS7sBmf7BnrfM=;
	h=To:Subject:From:Date:From;
	b=VbsbweIAk1vzgQZCsrqYPzicNm5d/xGRTxq4HO5tU6CggH2NVO/eyj5WXQnCFWD3H
	 6jh+y2cvWj8v1WDNHGemaQXKO29LQJnRRcktdvDn0s8koeJQYCRnIehJcA0mZM8JBU
	 sKt9j/T37UUfyFurY24J4OMS8WLSBBVK5hLGnOP499duOcggpDAbobIp3Ag6w7CruZ
	 4lj8zxarj8INndtWuXf/ubMH9mnFb19wDWATtaxWrIfNyVEZj3GwuLivTPzUe4lHRi
	 Kh7/ee8dvxpS2uUwnmk3a/hZ9r0mr5BLOjDkyHCN3cZi1lPdUQ1VLFgAgYk1j1+Re7
	 gHoMKF9QVrHXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF0C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174613319357.29012.3788151948416536230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd5f287d35d19a1e96c8047fc2fa6ad3543867825759d61626cc5a107b7a678
Date: Thu, 01 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746133193
