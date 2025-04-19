Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462B51C5D62
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745098794; cv=none; b=qbDb2eeAErnbiP9pFQEaSxn5HyOko/u1NVW8pNjVqeeSUCXzlHIXytKafT0aaaRsh3mGIZsHhPNaO3WQKuXmnBHcCg9kc38rD45LeYui1wmReXzTsbboWlC+kKCieZd9cyXt2HIvzm9zbAIzq5VpRVwof4HCQaeJMw7Uydd/fK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745098794; c=relaxed/simple;
	bh=1Z+oY8GyRShgImS8JBELk0kL5UZxqQqDwWxpeLDiNJs=;
	h=To:Subject:From:Message-Id:Date; b=fTXj/+K3uv4CI+u29jr4nY3B9jay9gGMyyYbMloW1fCPH3HdATdgED5SMqZY3Ij65pLf/hIzZ6tS8WuAC7fRjn6ESED9At4BHCpUfyyH8580WGlRHOQx/568lqmvEidsZmcHo1stGvZBoaKMz0EqD8dRgQOfHQxCcqTv1wAppKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fl4w+HaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fl4w+HaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C61C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745098793;
	bh=1Z+oY8GyRShgImS8JBELk0kL5UZxqQqDwWxpeLDiNJs=;
	h=To:Subject:From:Date:From;
	b=Fl4w+HaWEYIw9LoOsloRPe5UoahMcSdkBKecYryUqHrh+PzS8S+snS7hE0SLkNaIM
	 l0KdALaxAyAqMmqWU8qwzyc3H93PgLcM/++PNFgJnDIk1iVjJOpIUzIxzY8T9qWfJw
	 uwovVpf4lCYPt1cOuyJzoeO5Az2hb9tJ6mXdRBirnNV8xdHu/XEpwj61W/YX3UdSqI
	 yHQeb1+gIZmEJpDgkzsvyjp63lJSZ0b1awSeJrfgrAu0d326CFNYdCW98t+GB/u8ws
	 YPgvl9dOOgfmqNXbTSf8n6HbGeaUnJjPRwzRrgX/MzqVw1vkiPKmTi0gT61r4gl/ky
	 bF+21HdXCPkKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E60C369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174509879358.2241.268325513516185395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ac700c272a7df3790cfd5e3658553dd60cc4acce8f4ae843e4d1dc801471ef
Date: Sat, 19 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745098793
