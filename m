Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463103939D7
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786345234; cv=none; b=LwLDBEKwUNJJDJeJ2lQnJ86W8ySj/p+g7THV3HuOkXXgYKHNEfxwobfwhN1h4hfpBael/RjQragZmZtogG43X5hdzPYyjdJ9bPgLxDne1GO8z9Qda2YvjnbYZZzjJXK02X2ZXDd7Tdudo29WuLXSkhISPxm0ntDU3ljx31B2dYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786345234; c=relaxed/simple;
	bh=jJD0zmKuFCLtb6cjxuLOOU/6V00BJvQ4vdljGY5NWjY=;
	h=To:Subject:From:Message-Id:Date; b=mbNBh07bkLCVBRsAbIeaxbjBTYQt3AAC7UxRn/BP9ZG5mWtglObYVJi+53P/gm8cARVBIQFGx2QfE7lJFCgzq1zESp8ov7vdOCh8ZjnLpP1odHX3PEKIXeWCr+TR+I1v/R+8F32LzROLg/C59ORaM/Nu6Fr4YoKBqEf9IFg4GLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=um/ZIfSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="um/ZIfSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA12C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786345233;
	bh=jJD0zmKuFCLtb6cjxuLOOU/6V00BJvQ4vdljGY5NWjY=;
	h=To:Subject:From:Date:From;
	b=um/ZIfSPzX8Chh96u1bJfPuTKPpc6paFMlvR2XI4xZBVO9ja5ejBplMyBnYTLhzWP
	 RUC3IbCv7vyD99OL3C95vpsTjJDUXOwkPgEKkmjW4wBBSWHvudZaVAvvEkUKW9MhxB
	 Ntoa4VlAuz5D6Ogq99ws2rZcf4L6DWnJ0dZ0vgmzn4G1oSsRMRSOkXw5b7ZnFyFyK9
	 1L35nadUjSICwg0h2q/q2xQf+MxTLIbLJSl611Xbu1euZb5QgiuZF3YyTUyFwPDMhH
	 P/arMhoWRHTC9rMChCqkKry/7LXj7tauLmkJvmJ3yGtn3zqfico2YaF9tLjQI/H6Fo
	 ZnAYElVZrLOwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA999C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178634523368.17535.3525936847812526401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de08bbe6884d0eb62c28af7d3e96c1d15aa18b798abc05f33f1bd2fa5fb3decc
Date: Mon, 10 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786345233
