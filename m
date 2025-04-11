Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B244B652
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744330194; cv=none; b=qnbg9Km3kqYq8tzCfIt7UYXDtGMq+1WAcRdR+QdxSf7t6IvcEjCR3fNqCVgmEtDY/glxq68KYnjraptX+fgI6++CgnDVCYUQh8dLo5zSCF3cRYBme3bVeCNvKJdedUbJE6FrDRFuuaTUr+Rh9x8vLnx5iJ4u52b9q/0u+820z60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744330194; c=relaxed/simple;
	bh=LDPu/cZ7rmhV5fa0a6dCmSjg552EXEEu3SRwJ/oPCjM=;
	h=To:Subject:From:Message-Id:Date; b=fFfuoP1jlepdnZpADy/lsVEGuAQX6tcdH8+jsKa46NF103D8D7JuL1ZCGCIt848oAxV6nMSyBUUQs7IbyRJL83j+ip//InhDFh/mFpDTNsUM1SQLNwH5/lCJhPZuJYRzMEHhCECstxsZrsAifR4+eFTWEigkEz6jn905ySnV0bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSMYpLk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSMYpLk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C915DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744330193;
	bh=LDPu/cZ7rmhV5fa0a6dCmSjg552EXEEu3SRwJ/oPCjM=;
	h=To:Subject:From:Date:From;
	b=DSMYpLk+RQXd10mfkswzOnpJ6L/CWN1aBm4SV+VBDmK1mcxD8iWjT9/XhkU9QRHbI
	 s8YhZP+fOsfcB3tdCIxXFBW1cGuCFqYnFwp5XDQu44W4l5hQFgxJipX1JOPEOltawy
	 V4IUcDCdhzruIuSvGedsBxHItPge6fKiizBWWjYQs1gpgKxn4Zq8MM7TDLlQ7RUB+c
	 3VH7iFWeOVJBm8aOjVlDXiCu5xZon49icrrD4FkBe6FW25XCRxX1IFCUELwVIAxI6B
	 wxOogyXyjfro1QDTtKd729KPWFU0AjSFjxYxd+rKm85ryAx8XVG2rvlehmoxjyxUyk
	 83W2z2AiLjW3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCFDC3601E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174433019369.3178.12271250247185427476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1bdbf3cbefc7f92830fa41150e9ad337779f7321f5d729c1190ee994272882c
Date: Fri, 11 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744330193
