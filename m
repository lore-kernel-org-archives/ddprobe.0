Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318D112DD88
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723928754; cv=none; b=AZE/23MFshnW95YyE+buzQGKfYHEgNypCGtkkLE3fUHGcNfkleAjvx/Q0OVgMQFNDJkzCQX/TRq0oPRdqswBhIRmUTub4nBvzaFEbGAFn/GPfex6TrT0yZwqnZq4ve+eWflxoe4/yS2yWsko3kEGZYsZyeA9hx++KgFjWXo7+0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723928754; c=relaxed/simple;
	bh=F6RPOP11MgNB9KSSMcVgENTwlIBtEQgyOvMi1wzQtpc=;
	h=To:Subject:From:Message-Id:Date; b=tfPdGUx7WJfCR9yXTfi5W/4xlABLMsErrNcjYUFLvR4nllSf35TKT0cMubbScyOLEtT1j79yvZ1jyMYUuvk1v5MNr0xBAfo0Nd+iOeMVxSr+s+njMmgCjKNOQ397y/UwRpf9p4skGOqaDvj8Re62c/xrWTcnyG/1S3UvzCA3RFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tO26unfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tO26unfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7422C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723928753;
	bh=F6RPOP11MgNB9KSSMcVgENTwlIBtEQgyOvMi1wzQtpc=;
	h=To:Subject:From:Date:From;
	b=tO26unfSbGonib0BnIezyOBkiQG+78d1+g+djbpfSoFQ25F+Vikayygj+n8Mk6KZc
	 mN2A993z3PnZgK3N1QOtkFgf6bEBJVbjo+YrC1F86Y23Ziwy7kmy4XAHxEVbfC6I2K
	 U16vNta7fWqQjiKjUFImwvyJveUfvj2o/Q4AQOb5oxF5JCB9hK3vlnAV4LGb+rN//L
	 f2G4QHIquRW0RB4xOm2NiclIojlMvMEELUibhRFsOweuyORQldYdjZpfaBjN5GEln4
	 sZRYS4E4jppCbGMclyBQ7AYvsKRJMgg6O5ZtBYmrUNO/Yw0fZ+doMhKIEarCDMUrGS
	 1MGS5x5EuoN8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98000C531DF
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172392875359.8656.8240927795369181886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c068d24c3448679071e4abecf7ea07d84690d9c8bf584a463b79d889347fc390
Date: Sat, 17 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723928753
