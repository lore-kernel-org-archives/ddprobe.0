Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124EF274FDF
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771493694; cv=none; b=M+P+RuskbfIkJ+6u7l4HarTc5mCQMKF/CCGQLIz+7Qf1ABp0EQA/GJ4xIyOZ5U47aZg5rQFQI2aHLEgQKjmJFuwlUv7bAhSxQ8omdvhQ+ZvfMR7dgtDql0iNo/U+nZu6Z/FFEIp7/dTSNLJVe4CPWYw8mISlW7LM0KRQ/ZgXJ9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771493694; c=relaxed/simple;
	bh=C4w3ZjoK8gdv+31oAztJKd51cq96It5qUbjmlk8dGc4=;
	h=To:Subject:From:Message-Id:Date; b=fULz67RNmo9tO/tr9MHSyBZufTWyJUq9sgWTrbLLVyGJTQqIoYIh2jV0pUqtN+H4WTHm9YATMuM2f7/Y3tLx+Ro6jfQ13zR+LmpdNHdH4gljb4qLF+5WT/FrtfIfCNChfsR5B7kapJqpJtOWocnDS95Ku1EgN5KMDqQMBJDT8PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6ispvd2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6ispvd2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59C3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771493693;
	bh=C4w3ZjoK8gdv+31oAztJKd51cq96It5qUbjmlk8dGc4=;
	h=To:Subject:From:Date:From;
	b=n6ispvd2WzBZOc13FJqODjqfnRsIxgyc2XvM6DLgKsCLt7ILTFd6/WPRD2xgXMmUG
	 stoVt5346IodF6LMFdpZ3Cn1T4H5r9rKXwDN3S96MRNvayt/jVBPzAInXAyrrbICgQ
	 z5LmEWH/yVxlLoubmNE51qkYBQzuBoMZDTPAnfAPUr+7pSRZUpf6P9NoNPlImeQKyA
	 cU/nZp3A+7B9gAukmpRDvP4grWBK02yO+gFPB9EA61AR8ursyGxIQ0i6cwCLilZ5t1
	 u6YTY1Qp0VnOZ76OiiYDquS5XKnZP7qa6OG1HuMErsGZanyWLByCP0JAL2SIYtPCiZ
	 vW2zbCCnwVj0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B35E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149369359.18642.4394435098121989404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ce2210ad4ed70fe619a450ddd237ff46ae1a0fe260fc165c650db75373e925
Date: Thu, 19 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771493693
