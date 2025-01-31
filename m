Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4299017C225
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738317354; cv=none; b=EVKSQcDMgnwhxnInHNYTqLpdAd70UnmqNhKY9vPxr8hiQQBwFhvvasqgEMcY9KwC5L9nTBhwIq06JhMoEU/h9CYjvlDfRk5ViWOnuSJYNlvM13ubEm6+Qr9qZmmd7OR/DYP3XbjCvZ6IgFnBupemFu8QfOUeG65Z/d4b6vgZGLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738317354; c=relaxed/simple;
	bh=dSz2ViTYYiw19z7lkditqAMyzQ5Qjhmwhef3lEaE8Qw=;
	h=To:Subject:From:Message-Id:Date; b=SbIuGfXJ09/qpDa7c041IVT1FE7ailNFMHmMb50VqTQAZ8yWjjEqlCX+vhtNba40Y1i40wDU4QB/jz0Ad7LkOdfXNZ5WNGOiYfHOzIgo37mhdLkcUXsbQndh24UPv25gJffJ9crGkgR72NW6ds/6X4YuVM7zke0BUlR7zx9KZoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qoNA3umv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoNA3umv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24A4C4CEE1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738317353;
	bh=dSz2ViTYYiw19z7lkditqAMyzQ5Qjhmwhef3lEaE8Qw=;
	h=To:Subject:From:Date:From;
	b=qoNA3umvlCNIrHo3ocHEYIPGA1YGgqIXcezVaWisZLuQeqTsfMdbC9awWSKj8Z6Cc
	 aV9EfNGz1F+oWd415dURxcWY4bP/Q7e+WmdKRUwIGf9SxLYBRLZB6/LhQHI9rBRfIu
	 AMT/RqubGpQ/T5iVvc/g/1iiaBigrePfKQAUnrJfH+/wCFYsHyUVx2FV6jx0PFsFZj
	 5R9cUqagm6PvIlF/a53YVbAfKMG0cMsySAqjruFwDfLiHZvFYfM8s1KnsppunpLaig
	 rR+0mRZj0uNdhhLsfL6IDfq6nf5mYT5zOzg+078cYYGRz7Bm1K9qLr4d9cLfiaYVFt
	 BFRo2zYRzoyWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1B8C0218D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173831735363.27484.9162950849556243217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57c1d6a3fcf7d47befef53f287d38d452ea1a67d852292b913d7f8820be1dac
Date: Fri, 31 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738317353
