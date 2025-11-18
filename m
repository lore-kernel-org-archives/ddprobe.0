Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2B52690D1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763456515; cv=none; b=mGwSOn+TQobwwW9gtHSWqf0U62dKBR/AarZ3pAx7wVJ3Dpf1NUoO65PZEPuOp1kkFgers4kqUPkOlXVRqqj1zEdCBxpwm+yOW9vJalEeyucMQrQ6zB9TtCn3BGw9Y7nxFmDuFywRwQQ1LKPNxSgT3EZH7eEUrvURbpqPhtjX6Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763456515; c=relaxed/simple;
	bh=b4ZgIDhFiPBkaOHIX/b0TPLmzMCjZrJNzFbwXJjhtdQ=;
	h=To:Subject:From:Message-Id:Date; b=hxnKbtTkuwdE5xZzJvnV5is8JHlomrh/imhcnLSoerIFLExzJisF9sODF5Ze+OojbG9ruh+F9Hu57D8BOKCZvDpiq5WhUbZjmVtgyqZj6rSnk7Pq26zqupf0E4uRSzIiYZVAitzW7N8p3nYuaOcgDw8ANL6dWEdr6JyEKhdX9pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5xGnin2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5xGnin2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC38EC4AF13
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763456513;
	bh=b4ZgIDhFiPBkaOHIX/b0TPLmzMCjZrJNzFbwXJjhtdQ=;
	h=To:Subject:From:Date:From;
	b=R5xGnin2SCqf07xMNjhx6O294rkOGz2Ge37dhb8nlyV66PTp+DsCnhLkKgiSFMsNd
	 9Ubmsv16wJ0zylLrqj6/WRzIkVQzQszxuCfLqAOwMGXfsODtZp9jvSE3vx01ACp+0K
	 8Lsgz0xH0lABPUoRvCB4cSxU+GTakg9p4SNu4aS93tqmH6YTM4oHk4c1kSJyx2UXWc
	 WJBwyFptA4xwhf5pXf5OX5ovMwoTRlo6NbGdzqUtq6rT28U2P7iP/7AGw8oNBvPalC
	 ylpufcBl9DM07wRL6Uve+HGb/1/oIM/vFx0tyT/26Wk7Lh85XDrPkgRMF2kAfW8ieP
	 0FPY0Lr8FCdqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923A8CCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176345651358.25790.387954877327813990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ca2bacad3267f4c10abd936dda88f7bcee2b387e221393121ce2950a8c87bf
Date: Tue, 18 Nov 2025 09:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763456513
