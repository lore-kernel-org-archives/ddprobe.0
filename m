Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C96E286A4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776743254; cv=none; b=Hvdyg7QtEVrfb90kIyGY0/wMTd5soc8Mpn1lOS+HML4l7G7zthGW4iuZH+eR9gG9DkO+NR06yAbkcdx5HY3ewNpr8XIzkKlqDcO3ben/9WlKMiBHHotCwq44H5b8qWCT2iX9RJLv4TrZ2IUDVtDpMcxfl1DYKdFcXWjXR64iOIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776743254; c=relaxed/simple;
	bh=bEDWzpYMsAlTHDHBGowBitZHnAFYgiaHFxA3doaA9iI=;
	h=To:Subject:From:Message-Id:Date; b=ICBexG9qNx9vvvbhDkGmsd3wUeKRz3yohLpRBK0S59JFDdBVUQ7yym0IVY2ON6jjOb0ZsDOURsakle8pePjJpHtwP1oacb2SK9r5io0L472pp4UFleF4FoamurfhcPbBWBMAZgOxX/fPYDAUzKMC6K6l+ECsD6pwPHx/4gWX7Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drZUMk2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drZUMk2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC7EC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776743253;
	bh=bEDWzpYMsAlTHDHBGowBitZHnAFYgiaHFxA3doaA9iI=;
	h=To:Subject:From:Date:From;
	b=drZUMk2A6yRvMhTIqB89IpXSCRd0qA9c/BfcAqYs3q6LVjp1kRy6XtH76gIpU06aL
	 ZDTU3g1olSJd5VFOqaEqlXywrWvM58nsnhQhakNmwqwYM387yU513IsWu+qLKzE3H/
	 XYp52Vk1SigAy8Z1nsXPGSdB8SC5Zl/GaUAPoSPEBGTTsgmzG81hp1EaL4hUb4uLRF
	 w5DvJ1vHEuhBxzyZnmBx/47CV9hQg21PhutFBSkcIn+8H5Muj70wQhrrESzN40pdaI
	 bSewittMo9nh5bTnTo2CimWXIOs7pScsUjH3PTQAiuUJOXqdBTm4vjD3lpdxiHCmQE
	 HxrOSOiLYCG7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F7FF5A8DF
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674325368.4690.15006046184635956012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: becc5a660b487af33f25de971933e2a03d2e87fa31d2c5fcc563aa7eff3bb221
Date: Tue, 21 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776743253
