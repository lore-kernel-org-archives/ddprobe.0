Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F8A41F5CA
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790236234; cv=none; b=g9TKqzd/W6TTSWuL3ckvnvlTLXQGfMIQg1pfJwk5kfcxJPUFqElb7o1n0nTZm9FOmtwmGbibUk2kSaJJIOg8BU9ycfASIfBVmWS7MedWEcTKsdFCJbKKnOsBZAj8zrbGqZMCPDE/hmzLm1i5e9Fh9K99MyNiUaBDp0bqCDzDsBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790236234; c=relaxed/simple;
	bh=WGX9FO0sCyGyREyLwyogVo8dNyDRLc5ib8cxDPGXUk8=;
	h=To:Subject:From:Message-Id:Date; b=Qb5ndcYqExBasN225/tMyJ+aS1COzCq3/Wszh/mM8Bi1GhWe+fBJhsO0pi1Z1h7HBBof/EvsdI0YPYgxUqJKYwNTNm8L2jLIaJ/DejlOa+tsf83+WV+e8jG7tiR+OXD7pi3XmChdlH87WR9OJC4vENbwuQPoIvHTbhN3dfcsKeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyFD+3xP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyFD+3xP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0732C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790236233;
	bh=WGX9FO0sCyGyREyLwyogVo8dNyDRLc5ib8cxDPGXUk8=;
	h=To:Subject:From:Date:From;
	b=UyFD+3xPxknkleQDm3+fYcCVhZL8XeYUfwCNrz1N1htJQlXNlWJxBLrC6SWgRRw3R
	 Yl1KFs5UhczF4YtG873grp9IUWzws5SMPHMcoxyu3tFSjB2GFdK7RdFPxpW76qMwOF
	 AMS2JJFn2GBtRDPGl+IsRQ3eic1o4RmHV3t8wO/9ePyn6OSewTuYLc2QmgTYSy6FTT
	 0hDHlJVRpLpNZIqtpBnan9og9kviWUdHNWNifgjDB7wdMJN9zgaGLIV2c+g9Pk68hw
	 0pAlWkjQRUgVS9IwQrCuk3lPMX/EXwLD+Tq0jqXN8++Ixnqf1sQxhZ2YcCEEiIO2dx
	 1BMVy/vBeuc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD16AC98314
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023623370.29025.7457269950214395585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377ff6f879a5054db7ab7d9d5bf6b7f61c105462165422b4522ea497dd73d990
Date: Thu, 24 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790236233
