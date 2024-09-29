Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448726AA1
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727592954; cv=none; b=Bwco9ZlzLVPIlxtfIP5SWaOwi/mdKHxWxu5zodY2Aon5yVvAR2/OXYpUfL4Q0WLBSng1Y6m+qohVElM8DXfjDYfBzM+Nt9SXJdmNJOK/iwJEg9KR0YSRjPDX3Yfjf6Cex1asjuTCk+ZEDt1pi3VoywQmcZK/R1Q3s9cDXYPQA14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727592954; c=relaxed/simple;
	bh=rKV2Hkstt35go20ciZqcHXDKO0W+yhu7pOCoyAE6Dws=;
	h=To:Subject:From:Message-Id:Date; b=dayCxmbvFgzM7/zKf7SOpxzVewibNtbq9Lk/T7TmL8tEDr6QesInHYTpl6plYqjQEmAzwsPX5/D+KCi6BZO4c/nT454EMi7ZKW68dRjgG4jX5TlbgakPPlzkTjMxmfBhOjU7rvs0+z1k+J6x+2km17hCk2dyEJn7O0J4knkDhfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7v2SzFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7v2SzFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9070C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727592953;
	bh=rKV2Hkstt35go20ciZqcHXDKO0W+yhu7pOCoyAE6Dws=;
	h=To:Subject:From:Date:From;
	b=a7v2SzFbqKDJ/jUS9IE2gI49XuCDUjG1KBDHsqRaTKvvZ6AqTlAl5YSuyGFq+KQF1
	 jVBYCnIw6LH2JMkUS7u/46ewpiRZhJ7tR1LYpbHfCyE8q0xkN+FUifD/Y0neQS+5pG
	 tj+0C4cmBQUDetbyZrKQ7CytEGIXyHtDt76yHl35d2WXT07XqTjuSG8Duw2XXktWoo
	 ZcyvIfk5gryn40kqUJNCALEDnUaG8kg8FEJNxl6C2DTDzCPjDoVQuV6zTZmOOgTE61
	 x4mPyzt2IDKINIxL9oV9GAMSB697A7lGC+06Fr5dV6yz1ooEH3BfgGlllTJs2F2TYE
	 IA8C3u6HRDGow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5433CF6498
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172759295363.31291.8480384365568970586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6dd9da32d93b347b821452e851e36065a620a639901304655576338bc0a4aa8
Date: Sun, 29 Sep 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727592953
