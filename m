Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601F633FE01
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769180636; cv=none; b=jkNKwacD9m3LpE0mo7X5uE5A8ZDKQ9E1CS4ZuiAF0XH1hl+tRWooA+i+QI5/SuFoMrH5RDu4o6KyBlR3pwSIC3YTrWbvphYts913ZOcWMgwUAzSOvt2abSC7mD33zbxxoSjZE9KyQbDvD7WGCPyRxqYJReDx7EIweyZb/CsHFTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769180636; c=relaxed/simple;
	bh=SDo9mEw5cbeYAuUjJzGWcVk/bM7zogTOQlFQAZIhD5I=;
	h=To:Subject:From:Message-Id:Date; b=rHLQnHieDhtEhqB/0ehxkQ0Kz5SFPgRHjWTbi3qhjymCQBf4xNDFu9PJesXZ5LgRMpAKz3FqUhdsvBETvpwhF9PiqEwiJMQ57ZXZ1gBXK+4nCngRo3K4pHkiwc3/7+8Vr87yLT0ZB4RIKaqW8UqMfF0ODjKpk0J84FzzUiOOxO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jr+e3QW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jr+e3QW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1761C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769180633;
	bh=SDo9mEw5cbeYAuUjJzGWcVk/bM7zogTOQlFQAZIhD5I=;
	h=To:Subject:From:Date:From;
	b=jr+e3QW4hlJt6QQmT6tfl3M8JvVfBGU6fH4N/HPtQbCIPssWtMo9S9rRln1wMv2yn
	 8DWgSPHT3JoWkJ/FYMDTEHnjUegbzPp964rvEADeJZKQZfntanRR1BP6u9qSsOdBfL
	 T/L9hpNwcpgRlVj+FR+RNVVg6buPlYnFAteF1itG+NZ7453Vzsf32IsTh9p1sp8XsG
	 iK73b/Rm8MRFM3nI1eo886Ghkh0cr0DqN/bAbqs8xqfRE1rljV9GQ+ygzdJlRK+BTB
	 C6/CEfDuP3nh2av8THRAJIVaH23rG4N68v+SiegloMa2QZASF+nilhoeCa1cqS6tSH
	 NUQScA7XJmQRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907B9D74EDC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918063358.27657.12576156327356250315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f85e718b57221ceaab249a4569b3c8690532fb91c38c8ff86449d68408713db
Date: Fri, 23 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769180633
