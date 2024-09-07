Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA55647
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725669354; cv=none; b=hCCFENnN4tp4MXViPgoOkRy4Hv3yMvdahR2FGsbxs/FnW47RUXx6qrYTXQO3n9jgF5716jGVUrqGj2dZEc9fsEpCbOGAJ36Ctz5cUuA8TDGoJUMMe7cMXxWFFsrWbJC2Qg3aH2fq4HqkB52HLv9VkGBbMg9ytnidNdvQe34sYzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725669354; c=relaxed/simple;
	bh=2kUdL6M6pBZYPnVBzOshb7zF1+vOcbC83sJ4hpIpPJM=;
	h=To:Subject:From:Message-Id:Date; b=vBRZliZO2XW7CcEqmCtNUDK2bXkqndDKANPSeselJE6jssNnxamMOw7gSt1Fc286yNHgsxYkUfmcrfB71+9lDGEYCvAhmE8pUp6rTDHE71ucQqDinKlpp1ojf+yuJmUA1ENo+VN1M03R/sIT5EOrTWXKsnc6nBkp61dIEPzMQlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXNc7LNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXNc7LNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F61C4CEC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725669353;
	bh=2kUdL6M6pBZYPnVBzOshb7zF1+vOcbC83sJ4hpIpPJM=;
	h=To:Subject:From:Date:From;
	b=VXNc7LNVZwtJY+xrpUGoHd1M+SiZ8ADl88bI+PM/SGbdQevoDqCLBzMGmAa7ZE3kx
	 foARm/NkbhECN8XtrfnpoJ3YyF0DA+WD6f4amm0+cEJyH8XxRMUA6W4bL/mx0i1Nmj
	 H9tOl1RfYf7RRPz+NuzCBYssKSHWcYxFuJqDsnQJwOGhzF1vSe9VxJF+ZYVeOBWiRk
	 0Betzjn6sdq+ZMbCE8nAc7YZcd7+vvjD0SSp+TcixtF+QC/nbX9BanA2ZkJjF3JgmY
	 VHcHEqN2ome4c5NAe3Fg8zu/qTCApqGDRZcuwPHmgZWDTUS59x0llQhHYcv+7LQDsK
	 2C0nmBtv7ipcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9200FE6FE49
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172566935358.16071.208944530739228354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8d0570eee913d5e4109710ddd27ced80f8cc5a492e937e18352369e6f1b703
Date: Sat, 07 Sep 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725669353
