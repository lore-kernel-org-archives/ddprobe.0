Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C4E46AF06
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778845834; cv=none; b=deAahAawqR6yXe/nAOaX8tB7AQxIAE5pUlVBpqnjKJE+2E3s1bIzKVfqVx4QD8aoEV4wTdsKLCj8DJBqRen5zHHGfEZ7ZJB/Aw+iBMVH2b7qP91WhWvYAdO/zHZHzE8mO5VCrw9phYvCJilPUwWBtwXq4bhLx1qkGGHLtI7vPhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778845834; c=relaxed/simple;
	bh=QcvCQDPhq4xBB9YKkh3yrLlgLVvClqswmZa0kAJ1fg0=;
	h=To:Subject:From:Message-Id:Date; b=hYqg+OGNIf3ROxMb8swv6zbbinSThjWW+lXSNRu6OTq79+vg6ZlsPN7S1gJyzbldRjMyOmvyAOldSbY5j0TMgNTw83kufup8BCzVqAehJi5KhPKKQrPOaBhEOof5q22eJxxDfG8xRKA4yV0cWUVzWdxo2q2bFOUn9gytsaLPECE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGr8OF1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGr8OF1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DA5C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778845833;
	bh=QcvCQDPhq4xBB9YKkh3yrLlgLVvClqswmZa0kAJ1fg0=;
	h=To:Subject:From:Date:From;
	b=rGr8OF1wFV+/uu/8+ur5aDgK5nOfUk9hSDd7BBCOC+VxXWFSluylS6o180DE3YsTK
	 6+N++Y7evAIRBKnMD+tA08swkIcph5iZ9wecwr619qMyzlUHKVgJ6i4fmf7tTEWWmK
	 V7V9IJOjmg+yy+aBmYMJWYKxozFSiUCHfKKdkyEfk+e9nYDRgTLdPEapzRZMogfzqK
	 PZQYlaFI0SGLQN/XrOmLdt5Grm3QJZxPbed6U2m4+qcBd7rO9+SMYD8BAZmyk9r6Bk
	 GOVQ8tuoCN/Utbiur5u2F7mtOJPiic4yadAn5ElwcPLBWxqYxMwu6QpbPe+0S+7q07
	 d0f1rxSBlasPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB670CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177884583369.11083.11046332488051378866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7aefb4383d60c3b8e37cc13ff92d6817c5d777db40822b58594505d24d8424d
Date: Fri, 15 May 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778845833
