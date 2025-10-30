Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187822C235E
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761838194; cv=none; b=Q9A7wnIV5rUd8VfWowms81yB4hutu6e8M6Vsh9O2CBwKxCp3ZfxGiaEfgklj/26zEw9D8pZsQasjbEzUsrjgeKLir9u1EaN0xrSjF9a+llk0CITxOMNvHh49qmIjrDCXK2/KkoakBWqITLfp3+er+1gGydHX9tauSj5HReTX8WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761838194; c=relaxed/simple;
	bh=4WHKvc7ssx+1tzhiuDyz/SDZbw6QTh/STB6iwBqQ+EE=;
	h=To:Subject:From:Message-Id:Date; b=TMNp0FMcpJ9RvSFyI/xFq7C7l28Th8LHfMKkpa5O9qLlKi2p9Fx5y5lSWknpdQBkanpvFnrwRomYKExXrVb/qiSONb/c4Z1bciF2/HAmFo0KHCHwxLSZyoz0slg5pC1umaIAKNuX+SyGugA+LlIB3/me8DtMiBOd2QestomIiZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZdGrSnA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZdGrSnA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF2CC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761838193;
	bh=4WHKvc7ssx+1tzhiuDyz/SDZbw6QTh/STB6iwBqQ+EE=;
	h=To:Subject:From:Date:From;
	b=KZdGrSnAZx4oYr4SUijOP4FtVrFcmZJ7AJFHns5NyfsSs9gnhwWnZH7mginLckVES
	 54AYD95K1+j2xTC7nhwNz2K381bYUlZunfh5X6I1KHxXGovsCZZu1rzdCBy8rMNBqo
	 4pMiToXUV5WEkNYtTHQLq/ceCepKU7mkCOKYADFpON5+4bXLFHus9SGRcx0KpUL57R
	 f+Okwvzk1/7tiTgNp8A6/+RVWYBIUEHAfx0mgXtAs/UCc0LHuMEHFSq9veyGi/onTc
	 oejDx+Xg7YVRXS3HmnjDx5ar0J0O5SadgcHBmT6zh1Y+y3xFhIk51pkCB0ZdYSoR16
	 K/EqSYYSMQv6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91795CCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183819358.32388.6106225881942041328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e42e366b24243a1dbc22344d2082741ea3daca4e85e206fb6a02b569762ef9
Date: Thu, 30 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761838193
