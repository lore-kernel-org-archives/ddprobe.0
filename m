Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E3F12CDA5
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765648374; cv=none; b=RJsLxH58gJ/66HRpgZbmKBN0uok/G0jT8vQjOnGqCfvkqL5WHQgtlXr1I9wPrIU9UPlZdxhADOvKOZbVm+GWUmqcH9PN6oY8+O3rxiAjN5hJr7lGStMbGjfiGAOQTwp+6vrbr63Th3ATByccXV0Kk06VA//vMnhZuxitCehC5G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765648374; c=relaxed/simple;
	bh=K3iXYbn+hXTVhIqYD5pU2LkFHyY5l+eyz2MxnBsUWBo=;
	h=To:Subject:From:Message-Id:Date; b=B+LXWpx6PLyP3MWYmcshIoaRaQjooobCvdp1W8GlwrmujybiNYS2AIQ/mkJMErVFCUyQLSU3ZOq2lw55VWEXc55nb8ZqaUt2VTvwm/NPSmCT1rO8DN1uKF7/zSrROH0mvuAd9AqVCU3ZVRkAwhHt7YOFlhoPu66wF4x1J5NiGQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNRv0O4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNRv0O4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D92C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765648373;
	bh=K3iXYbn+hXTVhIqYD5pU2LkFHyY5l+eyz2MxnBsUWBo=;
	h=To:Subject:From:Date:From;
	b=QNRv0O4qn1dlzsT/OxbsetPMc5JQfwNBqt9Ow34WOB3jUx69AGYQoDqU7mebQPxGr
	 BTl0ZYD3aAF13e0TJq2sk18lvQo9md5+20j+1ZaaS+FXshsz2Y/XufMPiOwqMs69H2
	 myyGMIEKa8gV6PTE7QfJTl/PnWoiJzkYdgF2wvdf1MGnsR7PzqgeokPKruhmwu4vQM
	 IHMDCuWt7Q5m21RGd6lg3LpIxn9RFLmytscaJaVQsl6UxfkQzg7rHVcpX9lNk56SSL
	 2sduUK+FYVm2OXYrQmXei+HbAJKSKH9QNkh1fWOlIWIUT+nWe7O09LVCA0JjPfG7/M
	 1sRZ8i1Xa6e1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BF4D5B15C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176564837358.27040.2620611842213347756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1278c7104c7df102e047b1d8fa0c40fd5e7841d74d0f5f4b5c483f614949e7
Date: Sat, 13 Dec 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765648373
