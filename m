Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDF3149C74
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722979554; cv=none; b=QS6JSjtstj9mum58S9nw52vMVUcZsM3BtmGiBljs4CxToz50reDOgSLNn8aDkAQtTok8SPwP63UIvLWWi5bLmS9i8NeDyB6QBpptRb9tK4/H1bTj/IK6S9/uwB7Mx871MT7sJgIfLRDgeuj8nAS/A+VTRb8jrXq9t0eBUUITy9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722979554; c=relaxed/simple;
	bh=6ZWp0S0Lj0cvHdKfJUXXwVd60e6zr6DkAK5CuYf5svM=;
	h=To:Subject:From:Message-Id:Date; b=jUdbZYva2aRzaPqT90zQjJkdSAf4uAvmdEc5/Zj0Y97jjEUK/Ku6M/9fW8wVfmbp+MTXC3z0G+cQTrBQWKhKqvmApt4AtCi3GQwXqR45uu8pTCO4vDKwyZylrhDQsm7njz1n8/gv32svHJwNgHnVq/AYfGDN/+A+wYmmHGSkAwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjsDmCsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjsDmCsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1A3C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722979553;
	bh=6ZWp0S0Lj0cvHdKfJUXXwVd60e6zr6DkAK5CuYf5svM=;
	h=To:Subject:From:Date:From;
	b=JjsDmCsx0f+sNqoqOWMqDM606fI8mTer60OqldbPVh5U6bxUH9XlmWfVHDvgb97id
	 ZdcseE5uieudcaZwCc9pY7/h/ZfKWsbHdF8OhBer21aFmBGmZDhbN4s+GjgR4ofZAR
	 oqJlh0gT7e16VbirFOY8V6bXu6SNZFB4or0FmamxOFOOfYg0s/0UhVrvV6dobPdaYR
	 tVj8+O3r93jC1y5LGHx/KNF5XlHgHtYQfnjxJXUNlgEYi/9xErH5bt1EgkVVsD5CPf
	 j3gN7ixYupTEA6WGn1iIKbF+nEwukxJYk0nzDqyZSbsCy/iTT4OOCUe5+5Se8mpg6j
	 yLryN5aLjcqDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E84C52D6F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172297955360.24827.7023574379803428565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a10b031bc286e9fe03d6c08ce5c1a5dfb5b3167ebd370e4a0852722c82ac39e3
Date: Tue, 06 Aug 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722979553
