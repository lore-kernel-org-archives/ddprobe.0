Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4992F153810
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719579863; cv=none; b=X5AyOkANS6KQ1F3CVbDl9/PLp6M+rq6hBU2L32hdGp4F2HBWwVuSdkGKgUAAkIaBE0GmIxFl5AUMgZPrISiJ4IHwzo9pa5LxQj1k+H6ikfXqDfki9ihezgYWFodxI+WO7bgctr39eyEar0PG3G/LMESGm1b5ZCI2pozBYKLxgPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719579863; c=relaxed/simple;
	bh=9j7Aig+ctDZzUm6U3yIj874Y5VgFg6/kIMLNA498mKA=;
	h=To:Subject:From:Message-Id:Date; b=JuSh6HhqUbv6YBHr0RePa/TCFEvuNM6lANZQgOSqWixBg2gOR6e7+SEIradfXZTYibWhqd+AaW9FqMGNpXhF9TM0pTAu/j9dIe10sNfhrhBV7jSnZj1V9LDMfm1ZukVimBpvFo0ClcbLQlck0lIo6Rd3XPspWeY+G2gMzNQ2syE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuMjRnFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuMjRnFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E4CC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719579862;
	bh=9j7Aig+ctDZzUm6U3yIj874Y5VgFg6/kIMLNA498mKA=;
	h=To:Subject:From:Date:From;
	b=fuMjRnFSSnOUwgbgqtb4jGWtyqGA3JzziCHXoCrRL6RIedOnVy3QpaD9Mm3JUBOup
	 QC1z0ex1C0tEyps0ksE7RLqRhpHIcnUEPB3adFrvQzFygawr3/XL9CvxejggJ10377
	 kKqNPuz4WmrQ43ORteJC0LAxNh/wLiyj6VFktti/b0e+OedY4IBa2rSZBkCmK8MFib
	 5mCwzQVlxDpwVDNs+JEP/EMaMrGvZAw6sayuAYvtgBbc8mq/4vlpRi5391V/AeA2JS
	 YiOZ5c2/M7O2JO22wcvyZI/h05zse3jQMIaSRfEbZr9mWYCNHiZu4rAsCYwbbdN+7X
	 qcmqbF+nqrTpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7BEC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957986277.28060.16009797703725931776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96d188d2e0f4492c375595271e1835c58e946bd2ae5fa451eccfa552113bb94
Date: Fri, 28 Jun 2024 13:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719579862
