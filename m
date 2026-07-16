Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B0028727D
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784171314; cv=none; b=H2RSEE4gocEqJqLXHdSM+GUqX7gC+RI207C4Vnk5vE9wT/ES6NDOsJAncJZWLfDJqWrfu/YGQ5Ba3Oi9b8iVVfd5Oe+GL69kaeJAzfkWVnQkS5shOwwUJ7UeTL8URoCQEb4NvLXk6ixnDJXCiD22fZqPE6qpbhOGRHwj0UYDlcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784171314; c=relaxed/simple;
	bh=1j5oJCz3ib1SJcLEvT/5VkO7JVmkOV1J6hp+uRLS+gc=;
	h=To:Subject:From:Message-Id:Date; b=q+F6dtFrOEDTaOAY0jPzQ2W1Uj4rB31U9vMkH0yBeN6Z73D4sQH4wOnNOVcJBQprNx14sjY1LzTLCx2u1gZILNwqJX4PM3ePdyBaUSX+0U3sxMWMPCdVsTzr+jX92/+oCMVjTa5x0NSjqwVFx1zXD4THWfb8UwjD8koJ8Z5FZEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVraFdTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVraFdTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9811C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784171313;
	bh=1j5oJCz3ib1SJcLEvT/5VkO7JVmkOV1J6hp+uRLS+gc=;
	h=To:Subject:From:Date:From;
	b=IVraFdTQkwwt6fZVXUcecv6IGvL3dbA58vH+ciuboDeJa0Y3UmUvTxsNdHkwXI+kh
	 jAsWhxWkWy23Kn3lphQypgwWiNAVX4/9AT5Sr0LG3y3zUlxn5YINAFObIEX+zBtZgq
	 mtLtGJPMLAsf1Ix6Tn2WiUq3ctcwZwn2kwfPUj3LG1+LFk8h23muZLBVJLnaBURPRB
	 Ch7zYCAB97RtCWShuP5l3V+NECQWCKcvhwQ6wbQauklC7uWwoyKWnZZmqmckJIZmXf
	 jXOGU2GvQR4j4b3Wz3kDASlTAzCcRLKbxEaXqn22biCIDiHeHXXu6nTGx3T/CFObwz
	 klmQSB/qdjUTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A842BC44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417131368.26767.1820170917210031158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38053f8c7d614305ad81ea23b05aada6c6d1a6a826f580eb2aec9220d521a4e9
Date: Thu, 16 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784171313
