Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C342450FE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746709194; cv=none; b=i62UW0PMaYMztV2Lr/fKYW918tsCuEBgwfbqn7970S4P+VvYfiO/9xJ7njoFMgfQUk8yBkuwZZ16AOuS08O9D/zD4vCnghMtfjq124AUZSNZg+VkgBlwju1V3kLRATBQiAan/0E/UiiZyLkKmWjGsUo7N/Y2Tgofc9cxCxTRs9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746709194; c=relaxed/simple;
	bh=sjYbS3jHvz/f2EZmTeuAzWCzDg6epPQCzF6UcnGcq3E=;
	h=To:Subject:From:Message-Id:Date; b=uEC4V4YXDBrHovj9VkI9RrA5j7d3hJCajCkCpaIb2JlVMDmRBmr2gJoG+RW1jUJ0U+UOg43FBJ0I9U+ZLiV8bUr+Og2uowNO2KjW51a6DXzQYnIVLOXIUBo7OAtSudXU/dSeeqCOtM3Dcg5A9pKr7lx1ouC/1N+HBTCopt50fq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZ1cTh/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZ1cTh/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FACCC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746709193;
	bh=sjYbS3jHvz/f2EZmTeuAzWCzDg6epPQCzF6UcnGcq3E=;
	h=To:Subject:From:Date:From;
	b=tZ1cTh/EL6r+boCOdzKYUbQL4tGihBilz5L5issawtY4ycyjKIMshwDk9QWzSfYHK
	 tBzWsavwnwg4wOOhzOh62hlCfbcGsmuJD6Bk5mHl1eB/W78UTinTrAGfwzpsXGVbZ6
	 lx/iKakgzCJlebgy091mkTuYvq5Zhxgdj4XJEHg3mIAET0sYwqPrmRHr3moP9pitTn
	 z6FJ8d43l3s17GXKIkatuJcr07zbnW1/x6fhKBbEFy7sjxOwP2y59vSnkdr3s0QnwJ
	 kpkKSjLcjULaASzoCPbEfgkH8gy0+OndtZEQtwFeOlxBGuUybrGWAP1pKIZNz7Mo1+
	 r+e/zfEUnVX2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDBC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174670919357.25958.6651060684241264447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71a8cf6cec7bc64d49dfa015dc8dcf51580903d1b6a8a02a921168ce6baf86e8
Date: Thu, 08 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746709193
