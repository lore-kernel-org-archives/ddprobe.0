Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CC833E4
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748530194; cv=none; b=srNBUzgtwnlrBJ2UOS6i0E72ZjbzJbFWg5aSxZlZlToQQ+PIrdU+jhRwFA8HBEB5F8Ogo4QdOGMUGCVgA75VJc+5YZTwtHRHphdQnVSnz7iOftHjKPSHq8+VR+ARzjKVlC9OrtGN6xDjuGl4aRh0AnmfObFsU3LjtAj0xGRg7aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748530194; c=relaxed/simple;
	bh=336gCTzELuERcJj0VbKYHcuiJp9zRcTL+ncfFf/JT6o=;
	h=To:Subject:From:Message-Id:Date; b=Svd0rouCqNEku8Rb4bhjO6FIMV1aGdrwH8XiXeD/iTAq5Plqf4Sqzx6/c/R6lLobcSOsBfe+fwp95g4kePZB+pJTHfxiP//dNGjgmhpXGVkNT8LQoAu/1JqM7H3TwFW+QdMEQ54q+bMncF5xWsWik14vbRIUShqc+bv+rAGgKP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNPuFdT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNPuFdT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A154DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748530193;
	bh=336gCTzELuERcJj0VbKYHcuiJp9zRcTL+ncfFf/JT6o=;
	h=To:Subject:From:Date:From;
	b=PNPuFdT7ynN2hqocsMfpq7aJAYz6Dk6vY25IF+bz20TN3OrjpJd4g+54WvLrLzLXi
	 zYhCvQYYu3PzNEETsSYgJ+VD0XDmn89rr3oHfZ+9vX5L2ga5MGW4oHy/MMWBCF+XiK
	 haX9oz+ZlgszsMcowSxjKItmCNsNCLqG8TRVnLuEJHGtmC0BTXjxKyCuA3pmcqU4Xj
	 ViMo+lDjoZGmE7t0ugjouGcCSC0zxfcGdVqCboIRFTQ8HgpIMXAHrfNnEkGIT9aODf
	 XXQ9wkSGUXQgvVrn49xI48v72YB12MI0qoR4qkNCZKk8vrtLLnX+hI8PlUBXtWzHl3
	 WP21ttfdpoBYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7D3C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174853019357.12052.1390264321961009312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3871c915ddc4ee5566a66e4fbafdc8639f5fb5ab9a64302792662692b2f52d2a
Date: Thu, 29 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748530193
