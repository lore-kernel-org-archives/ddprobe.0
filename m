Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C66284B4F
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772028894; cv=none; b=Mvo9Heoc8fbivVQmy4W7l8qR2Dd/7IRiDqPoCYHIAmi3W4VHYcK7YoTP20dE66fp85uV9aeBuR9snYBqwSw/HZWHSupGf2bptdvklgMxIJ4rsaD+EbXUxG0m35Y0UccvvU8sVDsJ/jf+F7OEk0BMZHpemGjIqbAsr6Ztcx+4Nx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772028894; c=relaxed/simple;
	bh=VfIu389R6mhjFsCoO6ymNu/Zduini2LLFYVS75MfpnM=;
	h=To:Subject:From:Message-Id:Date; b=pcAbVBmXz9/RUVj78uDfoyK/E3rayVDMB12+doFp3b7nyw58uHLlnhu+NroN4ys6oY47TdLhzs5BgVI/f3J+2pmUCAdF3LFzFcQe2Mq2WcjJQiSmuYEWX4tfcFeKV8WomRGZ9BrHm1tEW1a2W8atIpgEYS+fCUlkKuIYfytwi8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQdeb9In; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQdeb9In"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B66C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772028893;
	bh=VfIu389R6mhjFsCoO6ymNu/Zduini2LLFYVS75MfpnM=;
	h=To:Subject:From:Date:From;
	b=OQdeb9IniQxgsL90ja+f1Hg5YLqkymZVY9k+ABqN3BkkLQNtHbVgd2yC5K09fnZ3K
	 nrpQvNM3ZD3JqFDSg3ca6BvMXaTDfgNklIVkkDeRLBeRvaDCmQIy9T43/225h1Elq2
	 hOH5DZlzxMgbWVI7yOQbmoQ85Bw45uKldSCslkajW9hjnCvKs+aoe+ACKCpBkO9/li
	 BJdb6DfqdyKHb4wAGGJmKztRB9XJsDYnDP28NGcvHxp6JTDLLnw9jYdbrZMq+I9VHA
	 9TUWEOYJCfPtAQxQSDCze1HhWM7QEjjDnzUuSP9Dsz+sHhjBspciagzusWQE0/wO/A
	 hkGiqcmpFGeSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E65FD3762
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177202889358.2332.11293445013302412279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f81677392feebd0918f77dad812c89fd99b0c5c921aff0b00d0d663e4a852f
Date: Wed, 25 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772028893
