Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C147C2C2340
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756506593; cv=none; b=iVuib6DW4+fasPQaDTKvLYqu5muIh53jdPULypaOX5vp9NbbVkI6uSB8v2rpxOVK5/3mlx1OyM2JVjgScUnbWHotrrSTAd2Bdq2RwVPlT/anhiPq4M8et3U4boMZe+5iUrEv9nHx33kvxZuyXqwu6ULXkdPFlnpI6KcMBm7Kbfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756506593; c=relaxed/simple;
	bh=wgx2ImMX6RfC9htfqkSX2GQbBaoIhpX9yGtHx1qqN+M=;
	h=To:Subject:From:Message-Id:Date; b=pxly8s/t9PZQJwgZo9CrVOs/F/O0vdUypVnyttaXWgQ2SMPKTlqyYgnRWyBnRSex7xwbGCTxhvlxA0+J/nMILeYuxbrf5plt58LNJGPIZgNKid2QU56O62tjue14oxvGtjleC5qyYNLgZkbMi2aR41Ow8vpklYzzQZCKVoQ/S+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8WhyOCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8WhyOCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1063C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756506593;
	bh=wgx2ImMX6RfC9htfqkSX2GQbBaoIhpX9yGtHx1qqN+M=;
	h=To:Subject:From:Date:From;
	b=R8WhyOCgfydnIepy3wHvZOanViZKLDa/nbPs4nzU7LuN2PbGqh4mg+fjaC3iJhSSV
	 A6cN079L357vSkffUyAhnyB6aQhS3Vpteyrj9VC0Z1jzr1xBtjbJUhX6PjHXigTuJJ
	 PHa+qKKu4RK+YABqGwLNxLGRYXvnKN8x9GAZnhqrfCFiqSMW/cfLu0DGbYpwNXbKpQ
	 sGaf9VA/fyVjxiNJjCWOFB+6bHnjyeh+W5AEO8n9fVk2mJoBow285hKll9Qmedej5b
	 HfGl2PguH99F9SZq9K9VynNy21oeDqd4GZelmcGhib1XN+9aEeGsdQHBwPnLt3glmZ
	 S8CrIfCzBhCtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9109BCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175650659358.15708.12363960201574499997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ae6dd431ce633a8dbe34a50bb07fee0e4946f190d952bdb8d0a4b9bc9afa89
Date: Fri, 29 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756506593
