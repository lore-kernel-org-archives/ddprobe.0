Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FE62F56
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749050395; cv=none; b=DzE67fl8X6Ic1RPw3IwW0te/OY/BUqwq2F+rfQi7KHTJBtCj8WIGrXVcMSYbDUxlruXItSdqVqn/BiyPepdQKnrCsWkh5BtSM8ZL+1pZJC8XuQBNjtmE/1cKGQCg1b1bw3XWR82xM82U7LbzuYUePAYbLFP0wgGuzgqBseoYxAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749050395; c=relaxed/simple;
	bh=xNphhC07yjjfscS68l5bsUYc2cA0eMilgy//cfBcstw=;
	h=To:Subject:From:Message-Id:Date; b=hGukTtZlFyxwdlnq0KeOVjSLOH2V79gglQ2GyubaRA8JqRZtzFHNJ2mhlo404VyDjoZ+HZ/RfESrI263VJxvJnf7VzeKJxkGRzkgWpvVfpV+e7Q9AylRAYQghnpSti7UhqoKWrph5kjjWvGhdScAvXOBX4K2+jZrqvw5FsUxLnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrgQKxrN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrgQKxrN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F48C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749050394;
	bh=xNphhC07yjjfscS68l5bsUYc2cA0eMilgy//cfBcstw=;
	h=To:Subject:From:Date:From;
	b=mrgQKxrNZ+oZDvNN4g0Uv07o9+xqchYHj62sQBLWZjglX5CWaOfX5onERIy8c9KhY
	 JhvVuzeMu2lzgT20GtGyIv8RzhibsdFiuFLY29f5JEXqfN7V3bx2EGsWvEcJS6i1ck
	 w37mse6ApO9/bKOvjX6muCQ5oUmQ8KPndgHHOJDue5e/YXB6Gnlj0E9rR2Aqv4nSQh
	 Mi1vV/pCOyuKllcmWu0l6GUTW8Cou8ExcdR9Z2A7Bz9+HH4M0U3rxpy+Ysii4azbOA
	 rYqo9FvTfohE4Dpea30/ez2u82New9SfScIIwtSjHWLLlGXzX29wF6dumOGr8sWSY8
	 UWeM0bwBwK3uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BE2C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905039359.7391.2609181359997511513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09827b665db712cbe37b02be9ab40c33268b9085a2562f7e14b0a113ec6b37f9
Date: Wed, 04 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749050393
