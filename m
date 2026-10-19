Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F05548FF74
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792401634; cv=none; b=lYuc+rmQVc4i/wfXPKAHsXedLparXhUe6cnn9//7/rk7FiYzpphHATnnVLoBS0VURbs/huG76gkSAIeIXqMLtk8wXwLo1M/WpzzcbXSMblmnuR2Nn6Z260CZqo0ONf0eNectYMFIVqwJI+23mDDPWpTvwta43UGMiKA2e8B0FQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792401634; c=relaxed/simple;
	bh=6Lul7wGd48svmAudl8JaWKQ/0FnD7Z9DrYJwcFkG8WY=;
	h=To:Subject:From:Message-Id:Date; b=jmIRg/DoOVasGq0PfEXFHIeBllAVH9am1U5Yu9tUcodoCnZg+mgN5jTUN5c66U8G18AQdU0xFlSAIBjJ4jL7hU9IOMi/XCzg1sNHFKBCB78gV1A3Nt5+Q+qbkm8BpagvwhLTrsskqVFTB9aNkkk6GyVclIuatzjgQltf3NQaiLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qv6abCHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qv6abCHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12AC2C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792401634;
	bh=6Lul7wGd48svmAudl8JaWKQ/0FnD7Z9DrYJwcFkG8WY=;
	h=To:Subject:From:Date:From;
	b=qv6abCHzGpQo7bsJVUOJT9QfO4uXGHf3W3hYmrQ918aZPWwo+KMXMMbR/nHVFteXj
	 o22T4Nd6r4LeK3lksKCmQJGOXfSnDQACObrB5UPGouAySv4/pUqi1TLdl7PVS8ejwy
	 x0JO8FK5R7Yyf/15ZqtrL5/XIQvB2xJy9ELrbh+rBbUSOirm/m6NrpzZsWeAF9VqeY
	 88ixW266wZBw5ZVuR50bhJts6YUCuieFntK9qKyKnvaQbex0NFd+frb9R1W0rnw9zY
	 agumkH82MpCzJwt5E8gr78QsUH85D/KeEI3twzy9u+QBy7auXTry3dae6rjqrZIeBO
	 Ljsp2nyTzJ1Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63DDCCF2DB
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179240163380.798.5521224570122554205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a5ebbfc1d174fc7830e96b974b5aa781cd290617f9950ed78a1365ec9af90d1
Date: Mon, 19 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792401633
