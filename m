Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347C29463
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767154434; cv=none; b=cn+vFfSvqj/+R3vNmKfsfLUeb8lETogGtr8sWYoYCdYyukgZrkBRDN6gYQ1rC5+hxrEoFYxQLJfyGV8AMWZ8DpOMsNVjevjZJJMcBUqCk5r8PcHTeVo915/Jn9a/Ko4XaffOdhAeHWO2y1BZ7/6j9Q4m6vdjefPJ8iojIN++OZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767154434; c=relaxed/simple;
	bh=DxmEIuqTBc5C7pz3WfB917SotT8R5ft5vdK2idlNArI=;
	h=To:Subject:From:Message-Id:Date; b=rzmR6nHL6Jd15w9D1mv/kaZd/c4oDY+AqhMnI3roX4kehmeZFruEsmdiSfVWO60s1Lbird7ZhxyM2569GWYKIMQaYIQupjnmZcYlnzHYQfkcmK8PsWEFkEgrsMDghFu5dBFSAPIxXuuhS/K9Ikqfla8ftVfaNyY+iBamGUVZ3m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHiHTlyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHiHTlyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7DDC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767154433;
	bh=DxmEIuqTBc5C7pz3WfB917SotT8R5ft5vdK2idlNArI=;
	h=To:Subject:From:Date:From;
	b=hHiHTlylqqvCH7iqaoJWlG8IWaTZMJPP7Uo8c8XQ6nHdXpy+3cS0f6gLqe6t/UuIV
	 nRwmGO0HFPXc6qfLtyr9ymXMRbK8Psxqm/crQGS0l2BPPzbITy4wGXqJXku1c5Jfzv
	 YQAtTpjCXdzOLUOdjzvfS+Ytgfv6Efb3tMYjMpkVZ5h+ZQEpPt0cvSjHhMUd63TWtW
	 0opz11pGOXQ7P0RtnKHqiTe6N0c460zwbgRZIus2QWGyySNQ5c7N+HK8TwCcDhLZZt
	 y31iG613cHq92qxS5hjh92uBfOx7O81ML4M3/MHkV8XghXmiv/5xsOcsfm9j1NbcWe
	 mbyBo4rg+Ar+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EC9EE57D1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715443359.18989.7426342489390888636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15bca8754b1372284cdec6c7352a15acccd0345980f9a929a53e2c2d8dd1a70c
Date: Wed, 31 Dec 2025 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767154433
