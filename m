Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A83D1DE2AD
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775989054; cv=none; b=b0n/mF9MBnZnVZHoK+6aors9fzlVmK/JVo7W1Sx464rM4n/v+XP78AjPYeBX4g7YD+VKoeulQq93DYGghiO6G1kbxEmrlk+gpbECz0SnVnpXrOqQxKFC5nBbjPocXbniC+7NyC2yGmuIXiLFLBt641WzVB66XKyM+8cmLT/a1FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775989054; c=relaxed/simple;
	bh=CmUxogSWYa94ybjF4ibgGW5W3gM2hRUOBlQFxiO+A8E=;
	h=To:Subject:From:Message-Id:Date; b=m4mAdjJ6bC3zqlEXzuN6PaPqoGwZFyUWy6g5qLjfVLK74bq9EIqGLxbyEPqNBzAgcuODKQF8Wi6FuoXwp3pcPN0gfNgK0ZXG8t3DuIeJJw1JAWNfYTl1TjcPEEZVmXn0jrBfpwyMSgCn3+ntDS9xzGa8Qtn0oHFWqGeAEy9wFf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNbo9dg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNbo9dg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D0DC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775989053;
	bh=CmUxogSWYa94ybjF4ibgGW5W3gM2hRUOBlQFxiO+A8E=;
	h=To:Subject:From:Date:From;
	b=HNbo9dg5Bvpp+EQ/n9vmF9tfIJ9eeBuOk9bvvKU6qgWsX6B5R2hwoEwsG/l9R7vaj
	 wwYRwv4thV4P75FrDEF3en/PZXrdhuDqSMxfDAhMM8EI4+KVWGsuKURCwEeio7BD7E
	 3zxO4xU+k76xkrRaH6U7lueDF1Wq5m4B6LzCsAVLDPd/JUtwbgelO8AhhDOWoYGhTp
	 hbY8GN64N1/ltasgu9wWBO0WAPnUONMEIRNglch10LAFdd/lI9TrP3Q3/r33wJzooT
	 3pjzoIUtfCmMmywKTHPzlURioTxAUI4bA8y7Arat/vxGxGQL+zxAWZVIe5YqNNp83u
	 /6zpD/i7uxwMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0900F4487A
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598905368.9737.938122045592108432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 492a00c132140fbee1c805c83492c874a0d27d9024630bcb61a1d09f9428cbe9
Date: Sun, 12 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775989053
