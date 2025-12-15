Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE192874FB
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765791773; cv=none; b=X9K9d8jk5OPjY0/MlAbNw5OYFMQJyHY3kkvzlSMFBkl/mcMID8Xn91O8sJ1dheIsa7CkGKEBy7fXQ+QdQ18mICriCgynxL5I3hUYAavhQR8C0UNerjE/W8VKEL3+j4IEOws8Gbz7FuQaRhW+2FwHyppFNuAFwChlmv7B8mwZZ0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765791773; c=relaxed/simple;
	bh=ldZg99DDg8XU2OlNnS0/DpTdz6+Gvu7OPTyx0hVY+ks=;
	h=To:Subject:From:Message-Id:Date; b=kKEDr5jZOth+oO/69dlWLzMbka3jATvT5dMg1V4zSacbFZlv+3ZVDdhm5ZbHCRroGA5PnAe2dVqL4ymnt8jzV/1ZBoCVIJ6G9K6PC2JvMKjG4LI2V0v+RcII2E1FF5M9ssB1dlKLRLXS1CQ/d/bNB2X34IGwmhio8e7OK55vvMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8iEVYlC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8iEVYlC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDF7C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765791773;
	bh=ldZg99DDg8XU2OlNnS0/DpTdz6+Gvu7OPTyx0hVY+ks=;
	h=To:Subject:From:Date:From;
	b=D8iEVYlChPz/Em9U8iRphMeBc+hxXSg4B/gk1pMINPS0oIKK6WsVXXNxbbX+HBxw5
	 OE/Xw9OYnA07hM2I4UJ3QG/QjcyQzvsiOtdOURyQzG4Fc4bP0u0kcpLL8eHNBlRDlp
	 zJejeQJ1XWf5XZi3+T8GpcYHN/fbfCratee10tsCKZ/LqqOIVfXqnqIw2cnE4FEK+L
	 zDiXuUscV0xNRogXbL5OJC80BWRM9aHfwymHa50OAAHeakh/T0Vjld61SpWYmgInGy
	 u7WbIMovn73FnABuqRso+k4XoM/TRGYbn6P3yVT7CGAZl3eiHIswgE4FLZhVHj9bvm
	 IXjReL2rvXtbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A93D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176579177358.19462.9993529099048233300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68911dba9d96205c51f6645d9056e6ac21ada4ec49ddbf5f00aa2b9abb74ae6b
Date: Mon, 15 Dec 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765791773
