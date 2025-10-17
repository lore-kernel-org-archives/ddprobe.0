Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056752BDC0E
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760691595; cv=none; b=JdCaluBrA7ju4gwJFoIRYUSs+c3zt14h1uPuicqijJEv5brnPU5TPoO5/mT9nkm8gflPXGyEeOt1Dh1jRrFUGM0aPOkyJD5XDdefaErlCfVpwi7PI07ebfTdhswk4wbUXc1UWjl7rcjpSLI6lqpoMKS3TcYJpF47DeMJS2UnAo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760691595; c=relaxed/simple;
	bh=QuA7bDq+lu/g9/cxSU3q6pVQzWhDu5uHJBf0HG6OjLI=;
	h=To:Subject:From:Message-Id:Date; b=FMNRo9nrlGiQzQeHd96MxzhYWg+6LaZzxALElWmfqVa9DaXSsGvh0hkU70D7voqrY/H5Lsv26gnn/2a5kKjfAcdfaJy8ZxuqF5YvMJkdvSqaBWLJ3J5/0ZVW8VgPaCn2i+wdIcmfgR/992pk3/cWg4rVGDXagTvjadPDZkfOxnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0kcfmVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0kcfmVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBAAC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760691593;
	bh=QuA7bDq+lu/g9/cxSU3q6pVQzWhDu5uHJBf0HG6OjLI=;
	h=To:Subject:From:Date:From;
	b=F0kcfmVDf7Xn8VLzqy7YYIy/ocQoYYNLqMMolVCzxFg7TFUqpJaaz4+nt6ga0MENs
	 mu6YEKMrSX/TgYGVN9IDvhfWVBvrGy/b0qQxHTPT6S6kHKejtyMu2U9AjYtas/Alzj
	 OTSTQj91K3xHhZLNAHQF0zYmrCM8DHyTtTjKwE9aG6JQi7kFnwooriIRyDgh26S/OK
	 JGa4pvEBVs0eull2NoB5b90G60payiyQQycvJ1a5WZkkDfqKlxsNJtcaj+WZYExxLp
	 6urJKRN4C8g/k0FNyXx3txGwCWSbT9LBAqC6xCxz0u1lYAKbadEbouJXAFtxDVBvrl
	 cCeRwwegDn/cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A4CCD19A
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069159357.30207.11820316561949489049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d55ab1903f01c8d73a57100b06c21ce9dc437608e4a5fabe623415c49da3a355
Date: Fri, 17 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760691593
