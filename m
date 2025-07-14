Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357CC2E36F0
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752520794; cv=none; b=Mbrdh38aMzI/NmPMrzornO1OJdGNpNJY49cqJ2IuKFabg4vatWOkhhFTKDfIZtJjuWZN1TRP/+A2uDoU3tFC+xRBK+HLxZP04urngjX1qIxjqGZ8X1MWAIV7O85mSu+EFrqrfko9JwcQiV4LJM9RFDwrZTewfq+Q8cUw0E84nWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752520794; c=relaxed/simple;
	bh=4BALBwipDJsfU3CLENEZGxy8pOfbT+X0F042VKkhlSQ=;
	h=To:Subject:From:Message-Id:Date; b=FB/MQo5/oWbSRZbsX3n3Jm1h4mmovomrHA+ObcdeXOIbDjCtKOX5ZmNJgwci9zZB2444ijmyxPZjcYLsP07XBx/K8DMuSBdnmuMLp6+KWwWyMESwQfPVYC2MGM41YehGY/vmlGPy9gN1GOucUp8Pl39QudncUt0lXj7ndAP+E4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u94f1oho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u94f1oho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DE9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752520793;
	bh=4BALBwipDJsfU3CLENEZGxy8pOfbT+X0F042VKkhlSQ=;
	h=To:Subject:From:Date:From;
	b=u94f1ohotJbuRNLRSgi10REX+k2HDVOrrGDRS2FW/loIRyaxi5jsCe//sjx5i1MhQ
	 lnRw83D39VbIBhwaoh/rPJ+3qbtOYGAGA8kUPFMwaVbpWgNMEg3DtjKsbRK5mTWNNG
	 nnGMG17dv6JrJ1DnGBIa4FZVnyZHDHa/K1D0sdp5hM6+orMbG1npABADdHpfGpdDnk
	 pdPihC597FCQudTsSIl4Zm2lq+AHDR3ud79R9QTxTPCOA3o321Ktz7RZlCIqlDcbSV
	 CN/SPtYfE5E6Dt/tOGp9srBjL/UHjHgR7h4xgzDz6VeFrTIpjLF+XFzd7pdjiiyOyF
	 /BE2kld+TJNng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3563C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252079363.31539.15318242454582497972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eafb66bbbf3b6e2b88e2cd98bf11769bc03bab900502a1e095a91f7fae91d023
Date: Mon, 14 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752520793
