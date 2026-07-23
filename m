Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A09330647
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784844634; cv=none; b=gyNlXqgHHakQKQNA91PQW1R66Tbl+XsvNXBbmgCT50Tic7XjpMuvDfJX7SvENY0eIvXkoZJoY4XIi7svMJbqWsTCM51V0arlNaiYMg2hYnCLw5jij1yz3GVB9B6Ok3pZOgEw3P/DJnoco7zbz3TQ/FqNS0fKn7eh/P33f+JLBwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784844634; c=relaxed/simple;
	bh=VRoUJNBvBu+fjxOXSj6ZqvlOQInixMFsWHRS9pMRZ5I=;
	h=To:Subject:From:Message-Id:Date; b=deU0nyNoElqmJGpPlAL5hCHkFPrrUl1+ISkq3eY/74SDpBdIFJs5cb4yrASF2jZ/vUwErQ0KVs/5Lbjb59gps+MkBgK4nkQJVX+JwPYOGLldk/SlsDfKCy+sqtlbLy7qWfWU7vzbdJ2ehe1cSI6ApyYS1s+SJ7VHhP8pjMz96ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBbjLuTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBbjLuTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEE6C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784844633;
	bh=VRoUJNBvBu+fjxOXSj6ZqvlOQInixMFsWHRS9pMRZ5I=;
	h=To:Subject:From:Date:From;
	b=aBbjLuTq/Zil74sobRsKeEzbEi922wS5T0gVodbg5xIpj7oeu91lPog4zWsrZjqBw
	 /gfjBqj6WzLTKJzHarr41bfOul7jIMeuBrw5STXSmDq0lXGeZRIhUaLzRKoLlMFfOO
	 M9ZSlAtEiXtVTdxzYKEVWhBji0NbsEWGQNwjozkzUotFJv75ZjZUXUUKQ9MT4QP52g
	 2M1z+QxFliHXK8gmRP6cerNoxSUTKl/wC3E9i4FtMpl7/92qmqzfxudljL+J4scTM4
	 LQv8P/oNWPGwkM/q9ovWDazBOyNQKV6boMKYtcyqTyNTYoeI6rjE9k4tJfjXW2xq75
	 VvUvMgZ5WDdJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB209C531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178484463369.27758.17379795327659179477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e7ca86d0b5d1a320eb1805c306a8a32712d255369ff3899c86a4f13fc10ab27
Date: Thu, 23 Jul 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784844633
