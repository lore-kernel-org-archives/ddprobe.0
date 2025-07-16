Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2202521D5B8
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752691795; cv=none; b=ba0m+fQbKBDLfFvuXXSv0i4rHU1ndgXVBIgEIHbVciDjYnrrzpUhd8Dcsyf2d2vtrogbkk9TvKT6ddxRcLkwvY/e98i1vgV15dDKIH7PUzmpYDipUqRZymr5jDhuy0kJ7CCUQ9UK0x+MCubMwGn3Vz9pbuYv/08G0oHiBRWmpWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752691795; c=relaxed/simple;
	bh=lDF5CbATAcX0DS/tskCcE6sVT9DL0FqwzjTnJI7Kb+M=;
	h=To:Subject:From:Message-Id:Date; b=ekryZlZKs/Yw4nnoed7OuKb9EePog08Zw6T6mBFN98T+gg9w8YgX+mHv3cPMwlWCkeUzZ1+TIsz+8vVuro61+goW2kUYSnUnxHefddvVguRwmQ8NycqKnUPpptZuVet+tCgcU7hlSTTYei/mLSQuOfn3RXdiXCXldbsrSWY6z2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAsAs/jm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAsAs/jm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED21C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752691793;
	bh=lDF5CbATAcX0DS/tskCcE6sVT9DL0FqwzjTnJI7Kb+M=;
	h=To:Subject:From:Date:From;
	b=jAsAs/jmHPbbwEyT8pjvOpsKLePDC1i1yRGpnGTss/kSzKBt9H3bUT+npTY/w/FnB
	 unL+KUw6EzkoXDWTKOVK8oui4U5XyIjOfVbV7H8BcEzYsa9B4n2+mkdWx8/ZNAk63n
	 Jhgufo2UHABpEw/j4f/DyYz4dPU284cJLnGhv02dzxMo2ibhL/pf1pbqWojH9L4JwG
	 wcaLbMwhpPTKeJf/8hy0SbvEhKYgxav5V39aY1nX8DyvBunAjK3eCl1BUeXQ4uzrxZ
	 6O+6IKmta2Z676JKeJX695ZRXrjhyMQKx+fZCjML3XZ0cbGkxFFCRYy/znRJboGA4n
	 cUZ5A893mFcEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE39C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175269179357.19976.4271653320136960200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910092fda94856ee983154d8d5944e5360bfb45e842f1f23b4c8530cfdbbf678
Date: Wed, 16 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752691793
