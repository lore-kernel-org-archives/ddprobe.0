Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B9734AAEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771833894; cv=none; b=sZuRkAeq1L9wowBmtHziNvASMoAKBtEd/wJGhVWQ6shUg3Z6TdFYYh4+PjtfPZRUcnnBZ4i/ugMxyrYQ9GRPZxNCavExJYEwWbtCYZ7L2tr3zmOoy+HV4JF9g7UWuklOACTByF5jncDGti7dFxSr/uMAB7e61f4JgPK3D3oeplo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771833894; c=relaxed/simple;
	bh=E34U4+Vkh7XwLT3HDR4A5m9WxmYPL0UA4gqhAJMazlQ=;
	h=To:Subject:From:Message-Id:Date; b=dIJjvYchL4KvGerrcD3ZI6oc5cS0J4brhQwAJrVn/VY0jFGiKDR+rW3O4BjUWJDwJ/XQ8JmUwv2AFN5ReVRLfxDuQAp+HzV2VGABWRhLG7FesXntXJzTCOgPOHppLUJaT1wF+5n+YC7vdRaQjwyR0wgIWWgTImjABbWxExpe8G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxblJMc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxblJMc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46CBC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771833893;
	bh=E34U4+Vkh7XwLT3HDR4A5m9WxmYPL0UA4gqhAJMazlQ=;
	h=To:Subject:From:Date:From;
	b=UxblJMc+4sQwVsMFONjiMkXJDChA02+IU934iXS/8DFS7BVdMUurvVvfF/QrlFyW0
	 jMjGLemvq0tb3McbzkdKwsuzTKgcVnfwJalsvuKW8/yKJpamVDbMsov5iMmkWbPUr1
	 bjw7b5CCoQGFlB0tuWDz+mSIVQMxzn9/eqEBZJYaB812zcYutUTz8kyv+fQgNQGDFL
	 wNILZIGYzZJ31xaKrtfYKRV2q+rv533EtPOyD4GEv4QpPEhi+W2s7AGa8BrIHyARra
	 eayQU7/9rQpYjiV6w2tUHJnVZ6GORvk26aaHYWIcvL2rUOZMgKeSlCGJ43RkjL3jji
	 BmVMZqeHMP6MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A177AE98E01
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183389363.16012.6920779726246393790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1864d89318978b57fa8024a5f3f1e1ac3fb52a0701f2cfb8faade25ebbe959f
Date: Mon, 23 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771833893
