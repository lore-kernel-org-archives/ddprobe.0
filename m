Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF8B3195EA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773683694; cv=none; b=aIV/t/qKx4zon38vaUEaznffFNxPNgCMSzL6twG5tRyIByVgfo6jYIyKCePJ+bR0GPbKG/qa9oHCbPmfueKe6I+DJd0BcFUMXaQTd2QqbwyawYeq0Ozj+FZTDc/tEyEdtexj/fwYtuKetiEJUDMnRNvCQXxl6E4B8Qxww3epqa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773683694; c=relaxed/simple;
	bh=24quSASa+kVWbYn4LKfbHBXt7n1Sj+itJHy5a1GUfCE=;
	h=To:Subject:From:Message-Id:Date; b=Ph+DRDRL5jD7GULPF7UiqEg85/yiss0aeY6GhFVGodK5AbxA+mCAvFGCE040ht+yim4IN6C++n+6AE2Nvi7aJ2lA40a+UNve3W6dKxAHY4i5L6AeAQrgquUPQ0YuLC5tRKJGlYuWWdjrV/JnP6ZsIhJ8lILTC2NvKi1HOCi8syA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Prsh/2kA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Prsh/2kA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DB3C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773683693;
	bh=24quSASa+kVWbYn4LKfbHBXt7n1Sj+itJHy5a1GUfCE=;
	h=To:Subject:From:Date:From;
	b=Prsh/2kAVOBKHxm0ZsDPnd98wQoaFVcMs1yAf/LXJHrSofe1LniAtDWspKP8ZJNdE
	 e5rjIA5UxAm2VVYYJyzQ5AFrh5sd1h30isZLuwHpedwktCRfrT+g66CcyODI+yJEKY
	 Mr7QwNw/uWe51ek6YvnaN3FKCI+p+KdTBxIDYpZRwvGscbVPKaOxkJW0XK7M5mPjtr
	 IS+ekVhoH9QPFM3X5BVTjtL39+iekK8DNlXEFGQtwE9tqZdtgkkpIRAuGcTGOckXEq
	 MzcbDcqd1woM/UfUUaQPgVUJNZzR4AQk1o1n1wUK0KFpCGJLQi7T11XuVlf1moQ1+l
	 ovmnjQaZOmT5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F4CF53D82
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368369357.13398.7215599071865985269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7dfb036e9fa251a57f41e92e0794ecf05b7259f25e17f9432bc9e4727628b00
Date: Mon, 16 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773683693
