Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB28111BF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749071994; cv=none; b=Pq1IlrgSuFA76K8jGEr0cOw0Tp+8w59z2COC7eM3ykXr8Yh5Au++zM41ttfnAH6sA41QHWmCkj0mw+zV2y3zniE0Qnk5idzg8bbLtkkLXGMfc9Vb8NQHjliNx7ZCoUfllC8SElMR2ouF0VvcKjVjL9ACwmm4O3LAUOesHEtxwgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749071994; c=relaxed/simple;
	bh=SYO65/gbaEy2BdGiE95wYsL0JDeA5TszwYKquXSNJ+k=;
	h=To:Subject:From:Message-Id:Date; b=nMcS4pjiUP7GEZCgF8CksxHHcqmL4xgigv/ZrHSkLwewfeZqDu9u2nm2rY9U/0JO0p7PIMLqyzT9zoVkL+6mnHFvonWzywTp+yQcudCSRPoftb8esgcdwQXFrIfCBysPOjssXyq0yX59foE6+fNRKkV4k48FRYNXRVxVy+L7Hh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkUsP59G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkUsP59G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00DFC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749071993;
	bh=SYO65/gbaEy2BdGiE95wYsL0JDeA5TszwYKquXSNJ+k=;
	h=To:Subject:From:Date:From;
	b=JkUsP59Gl7yNmFqlId5/9sRsjiQKtonwXAL2CFMd8iO6ZDaueYSmwQooNZlEaW6k6
	 85Kf+Zrm93MCJTngJntdTfjRTSNpSC3I9iLZVDkWPoTJkrjyp+DV9YZ5sAXxMf8sJu
	 Bqc4oA2YcjdQ2QI3FpszYhitcTdwACDfC+P/UUMxfJ71VLwKsxY2BHwlagqFIjAXqe
	 Ay75xVElBkczi2tLZyhAwzI+MEi1by7cmZ12AYRzRExh6VCUmjJpyqo8PgYSo+Rd6/
	 bR9gkSISHuqqiBFUNhncak5IhYxeYozwtA4tqe4UZ/yT/jkfW/gujV+cyUDJmrKrRI
	 1GaXQg6mg86vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F7C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907199358.10217.10626562125406198215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd1bb1e684a586a1d3e0cee79e66596de8ff511a2fac59b020a3e2ddc2e568f
Date: Wed, 04 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749071993
