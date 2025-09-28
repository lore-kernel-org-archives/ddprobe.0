Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC9F14A4F0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759076394; cv=none; b=lXI8EwYTdP2Jaj5pXjRPStPKo6JH+Eoj88jHNoKUnsAXPqss+72XYyXsxvwpQAl+//y0X0ZT4BGiR7bGIVlXjXiEq54T+nMEYjPzBTZMzH3RsfG5mLHk+CzfvIBxeef2KeoPKixENZzSHEcI2ldfjOGn+Twu6/qUgyekZQQwyvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759076394; c=relaxed/simple;
	bh=T22ofc+ALV0FlbsrJbE2SAyfOpBLySOZIX6GlCNP8eo=;
	h=To:Subject:From:Message-Id:Date; b=cCxzcxOb9Xmaczc94MUAokfhWNHgJY5FrwoCHyWJsaBTlXlt1uJMP+87nD2EUF8zNZx/Tvv6pL+de4rsNbgYXHJKOyGq9SP6AoM0qY1XTcSBI4qWd1GGtkyUbHXGOSI6xwRPKiaKgUJRUywuo9jquao+kjXAVqsek7UHysGrE4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPbVYxPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPbVYxPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAC3C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759076393;
	bh=T22ofc+ALV0FlbsrJbE2SAyfOpBLySOZIX6GlCNP8eo=;
	h=To:Subject:From:Date:From;
	b=SPbVYxPFbYsLsQaP/w4Z26zBhNtps+LOyrw6FNSj7NNcpVqR4d0KfLSIm3PiX/RWv
	 Ig379q+m3hKD1EH3+GiuO3dPOlEfcdklPvXny7DLNhQi1Bn5YFiIDkukPlxwU0SMyI
	 tH6+OXffJvM7SbXZGKML8uAWE25hpyrE7wsVrb7WRQH7Ta1gEafcvLfYfkOsGUpWlZ
	 zfj3f3up+GgeevckOs30vgplwgwQSPh3+CgzkVLPajIOtJe7RYqEH8/RI2jsM1ys/a
	 kcoNPAaVCD6FJprokabST+d1uekE4Xf5xhoWC2xr4F7oM4K0d+mDdk7E07I86p0whg
	 KLMRUoHq5vi0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D54CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907639358.12309.7880670402336723792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc0dfc353a769c270554079f797ddc409072e32ca57f082266e0289d8b2c759
Date: Sun, 28 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759076393
