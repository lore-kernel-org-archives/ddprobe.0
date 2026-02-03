Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C46A53D3D02
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770138234; cv=none; b=O7yxT/ADKSQQLiYEUq4hvKOzp+bHFGIstE0WHI8IsBf6EBTimmHsqvrvE+AUsqENg/aSREo+UUY3972DwPSjMMiSkyTuOKpL9Nfdk207ff08u/+2UfoDYZI333INTedle/ic1vy2oxLMwluUE0D8RYG9l9GY/A+nMGTJOYk0E0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770138234; c=relaxed/simple;
	bh=1JwWyga6WzrvqNYykzOhrIsgg7zVQayeEjGC9tTs1LY=;
	h=To:Subject:From:Message-Id:Date; b=fauTKrLzC6tGZWN2HGpbNetJqB207axEpIjtCB5NtzXLXw2uBqlMZc758FR+CNcVjP5cJ11Hc22UcPJ6nXCS8/dWLG3cexVgeBQme17YFRzJpHa3eBA+Ty9yMO9tV44CbmpLpew6tLR24HGTAMBCvX+qYMKShv3AnxrQ/RNljT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNJlGG9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNJlGG9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B837DC19425
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770138233;
	bh=1JwWyga6WzrvqNYykzOhrIsgg7zVQayeEjGC9tTs1LY=;
	h=To:Subject:From:Date:From;
	b=gNJlGG9rzTBpjt2ys9RvhsjP0DZLUuAskXnplAaktg+TZcEXgXe4NOitJ8LSqwdHu
	 WlgnIrX7IbEoVHWUAZ5SBg1mtLx5Eblr4+ihcKFTvFDPMmP7A7xrNxDEehxMlXpWCY
	 2NiF2BrHDLOl0wenSMbYvbLpZ/1ybXaHyla8PTi/imoRxdlkJ/4o/Uc0KYXYcJtCsa
	 +hDoGzqYez1lmyqtuS0QSrnMjW7VqMNWl+LAEfxRAO8LispAu2pQXK3K2mirB0uGfs
	 V2UQ868EWTVG1j0gUby1C/FiBSJKex0PSTFJ6IqXGva4EX8e59ezBZR7s3N3yzVJRf
	 EjmrpiYv5isgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F42E8784E
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177013823364.14142.2998439993248752598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbba0dc1e55520b02e0c9963aaa1996ca598e4bf3cf131f3f78eee28692961e3
Date: Tue, 03 Feb 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770138233
