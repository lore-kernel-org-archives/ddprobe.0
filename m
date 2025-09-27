Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAAB1279780
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758973193; cv=none; b=W54/ggyviHRu8bvXkY96K2Hjov+yXstwyFlm7cz7CXRCqMolCZEemUBLJageUiXcBW0Rk5lTudOqNIzoQHdeNogsEA+r6SuNM58oOpSqiDYNkltHyY+lIRGCsCIRQAPjV+LIiQ1XpJnrRHvJPEDwSCCKb4UkBADevHdjjgZiUzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758973193; c=relaxed/simple;
	bh=fGB/Fh76m4+OhoSxhuJAf32cHa3sR3suIH5qdGUGUog=;
	h=To:Subject:From:Message-Id:Date; b=frhKWvfj1xe2E4WIJG37P+/WTBLnHEWQEjzHfwuKs7Z84SUe57XyC9eBE5f6HVuIJ9uNUVqNz3o2F3iMrbXKqOZFSjRDLX85jVzDO4oQAR2jiwFpPMN8ahOE/x+ibUcsGR5XLo0XlzZH84Wva/ilblVj/UlcDHERVd+GxQtfB/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mumb3hWW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mumb3hWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7201C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758973193;
	bh=fGB/Fh76m4+OhoSxhuJAf32cHa3sR3suIH5qdGUGUog=;
	h=To:Subject:From:Date:From;
	b=mumb3hWWRkK17FCJNzBhSH9EZM/9h0GIp0SCBBKvIxxzfPHs/vlvFL2ejDxM+Xms6
	 QgmavWXqmLCL4rI+F+lpXrsWh865Yq/ihhBjoN+kcElzf10YG9D9wq69xppHbNZgdt
	 oAxiPz/c9CC4o65aQjwjxmXeWvAL1Ss7P0mnZH5xAwtx0pfqryjR17aZWcfCu20kNQ
	 zM0xucdTqw04XCx+kA6F/psZoVSkegpLFV+K+G4eHAmfHFp7xdOuwouI4JX8VqTCq1
	 jFYpupjHPUmaSzCX+4bBb9BvD9MgRtOGCDkgxtQIRfGue9E5y92jskiSzDKiilMF+I
	 kFn+ukTIiKv4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96563CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897319360.3129.15282565326875464613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b2176d868cf93d53e7c384b4f27af3db2284a8133affd1027d5cc8d37f0841
Date: Sat, 27 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758973193
