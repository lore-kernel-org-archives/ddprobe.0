Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2777A358367
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780508674; cv=none; b=cbnPz8K13tUXf08TZtv2OthiJJYP9N67ZUR/uKykUsLjX3BZmgI4xUVcDCw+p1aOymd8Q+Kwj9SQx2P4VUWI6zg2w/TBMgdBUmpWRh30Dtbd3mnTYHJCS+qagvmiFJ4yknO2M0tMGd+dBrL7qua5QZQP9wklkwYzQnp/HWFo8xU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780508674; c=relaxed/simple;
	bh=ovk0lE0qpGd8S+PRDNN18fgUF0oNeOspSjs02US1hVk=;
	h=To:Subject:From:Message-Id:Date; b=bDfDqR15/CSZb6BLexzCRBbSBxmQ0tOmTPcFKZtDsMEnKOksO9jc0U57GAdh5SqUW+X/JOJ35qJ2H8o4+k1Q9T+Ylwfizh1u3C4y59repStBwH9oTWV5J9retI71ORorFrPns2byzva7rGCWIA8hHqitIKoIB70rZEtfzBlSRpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdq5cA5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdq5cA5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EE9C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780508673;
	bh=ovk0lE0qpGd8S+PRDNN18fgUF0oNeOspSjs02US1hVk=;
	h=To:Subject:From:Date:From;
	b=tdq5cA5V75tup/p9OlbePiRxwo0VkfY4aZKVmuuOAd7fTIN+s3hr4o0n9RsJvhwbp
	 FN/56HBvzbAbja6G2yJza86BjYcOT84pLHDo1UANJCl4Oq4TjgDUEUPrIF2KIUqCEf
	 RFHuBQrtbe/gDBt4Zh2/EpcCj6DlgTmzP7DbXMBRowPJazdxBHLfJo4wF5izQDZKsU
	 xiRazYcDrUbqdQG7hvMKOCFR6O+DdRdbdbFsyLUFtCnclc8X2F6IpxdtBv76fJzBAV
	 mtyItXIMfEGme577L3m5DeBJad8YV+l2hmP17TZnMipMvyux2OpMt1jLl0t14T+9LR
	 RpBu6fXZAMEwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2D9CD6E69
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050867368.22341.6625220503156418357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a730e77b74684684d3c876fe0d389b7d99bba7ffbc2a9225ab2cff54096b91
Date: Wed, 03 Jun 2026 17:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780508673
