Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CFA32ED3C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770324834; cv=none; b=ZGJxvVkVkFjtR4a4jCtM612zitSl3FYfbYxqKh3m9W8PJutzrRL7BcHq1c1/t+B3CR6T3pUyJEexvKZZr5mjgBvY2kTcrMhkVx/jrAY59cPe9qLFh3IGPVyMIe5fkv3RNSVyzYZc73cEh+DyiM7cUBDpjPMJjnltIbDQZWYt8KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770324834; c=relaxed/simple;
	bh=o+ylkabPvS67x8YNnL2BdQX40nDPR67lWeFfz40s3NU=;
	h=To:Subject:From:Message-Id:Date; b=OWjncgURi1g2u6U04wQdyrZIllkFHF7sY2r3vn3ADAf39sq1xJr2cAg6afNeZL4La9WulozauuX0+YziUzYfhS+5vXqcngSq7Le/2TKgZt9FNk9GhQbvuTNMpIqexStcfyAISSGNZ8zMHPB933AaQInrDL2NX0GmMkmNFZxWoyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gcyoofwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gcyoofwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9904C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770324833;
	bh=o+ylkabPvS67x8YNnL2BdQX40nDPR67lWeFfz40s3NU=;
	h=To:Subject:From:Date:From;
	b=GcyoofwyZFFeYN8SSwSeD5uQfkLd38LokT2jKRVt9aCw5JgIG61oZqv2tKlfJqisX
	 /n51Oc09oAT7AnOXOhhaCyeZi5TwoHxIqSE+Yyd+8k66Vrq4u1n44aldXn2M1YLS7g
	 NIHCa7bjqJJQsK5q2QTDPfBoq6Vu75D//1fvD2yE9fs0+zx9hPK2A31XoP57uivDcs
	 EBVWw3tZAX8otMIS39g+qo7zUvDomjT8kPxlBKf4G09PT0zbqDJwb8afh+jwjj0qIO
	 7SyZIcWsMXpdrV7kIbShKVD9clOs0GcSovgYH5U+bqFcTwVWVDqCehGdbQR5tVC48D
	 mLZUgoWU88xTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99160ECD997
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032483358.6305.1798016996415445569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf76843190dc859ee6daf5450ffa7976ebc2d0d0126fd8511284fca26b888df1
Date: Thu, 05 Feb 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770324833
