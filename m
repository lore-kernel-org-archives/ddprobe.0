Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293ED2EBB88
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760783394; cv=none; b=KXfaEHwryZmx/E/4QhPA1fgxpEmICG4T34UVedb1pUKSQFNBCkjihQkKQ7q16xSUuoIqwkjG+xw2evnwKD8LLVjGtXkTGFsymJ93f0gLLOw7d6kDuLGrQPQEEqlQKRLbNlOFJH0XM1oeDV32yCbOwSgg07GxwTYMyk63F7DgRG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760783394; c=relaxed/simple;
	bh=iJs9tFh1fnU/oC3KYKH+dTA/owXX1xTXEG46zfeV+10=;
	h=To:Subject:From:Message-Id:Date; b=FRjpHcaS0yHm9a2oC3ULfMD5nA4CoeVTSB376CNJZfrrrDzihtJ/dHUK8v2coWm6kIUnLcvX3kaLDYx7ttOVLeHfLEogaEcFdY7Migs5YgG7Qhb0v0YZnzegbNdrJBwG1YnbbFhKr07e2LVabKuABIRUkDvZhr+rr11ycVmrmj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5pyEmET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5pyEmET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9214C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760783393;
	bh=iJs9tFh1fnU/oC3KYKH+dTA/owXX1xTXEG46zfeV+10=;
	h=To:Subject:From:Date:From;
	b=Q5pyEmET6NGLgVN30+pSA5Yue40BSWaeZJLVkFVQR2HYD+x5drEpUY9cBKt5HVQvv
	 tBxNFpwt9Otvincyr3wa/t0sazvKK40uQRvEw7nET8qIVoDWGXFIytvAnc1LlCWqtz
	 0u32gdDPzya+Dqq4jR1ntzgZnEY3RYAQ8/z9tbxhhzeyElTMCU0bymSl4kaVRLSFkR
	 VOWQYRFl3uKKbuaC21Fn0cHhWOJg4wdZRe8OymFtORGOmVU7xjOgd1cXVBKVkbYo4y
	 v7kxbiPbRYxhuLJCOFYei7Um5xRi/0F0N4/P36SsjGYFu8l7LceD3Y6FYqDXb4g+FX
	 3KWBw3E+k54wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9632CCCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078339358.27789.9924933382620854908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44339eedc4ef50fd766cec6af2b1d896b35c863d6203ba714a3eced254f16374
Date: Sat, 18 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760783393
