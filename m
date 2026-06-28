Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464E4405F7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782610714; cv=none; b=mCzLcSPHmXUV/h7dWvXb4xKfc3tMGJBXQqXWTmfvrVvDVgHz7yuyu2fgHhz3oXlrD/MhVHmNl/AbbnaIXL273eh7pqsxdgqgguCjDHDRpvFWxHqIAjlB/iOthEZf8hYMTBPxo8DG3bBsmU5gucEZoU3ojpaX5GiC4jWMr5Ip3+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782610714; c=relaxed/simple;
	bh=fHY8TTRI5+KvCTnJpJh/SZonV1YTBaXsh08KhcxFYw0=;
	h=To:Subject:From:Message-Id:Date; b=K3rtIkR8hcWjDJUMaXK7KFm02pEhzsOsxkiXZtbmP0yDG4ggugshmufITlOSJBPpkzqGxJgPhI6QZl0QRmOMfNONqhrysCu6mUY3LMJS8T4SKU9PznS6UprrItI0wdcwYUSVURVFx6F7SwpaCI7pBA1umFo37mqHGHAGEx+XYXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOKHoOKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOKHoOKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1799C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782610713;
	bh=fHY8TTRI5+KvCTnJpJh/SZonV1YTBaXsh08KhcxFYw0=;
	h=To:Subject:From:Date:From;
	b=UOKHoOKliqCSJhP0cCntlzfAeAbdHNhWsWreAgdDVPQl69mpc6DmV2pUjdkhMoDBi
	 z1kR0hnMRkiv6Cf8hayd5ynmnMcXndavSxiFkN3CxeA051/tiIEePelu1Jc1ryRXb5
	 nLQqaJeZ409JA1ysiDahwG6YFNiPNTai4BFeFZi1sxoKvF4roQ8jsSlREuaUl+XEqM
	 FvTm8Giu2tK+xCeARaS7MJFjJKVOBhrJ8DwnF19J52nsH7JDWTdPs8uqp8Y7vHGtv9
	 prXUGJPx8CZnsth09esEg2kUJlTO8GPMzeYG8g6ndm9CQM3RNbJv2+ThUJs5ZzjPvo
	 TMFPH9OJVLHLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A38C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261071370.20203.2489106836684810267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d09483dec1608d8cbfe853f01b7dbf90f55aac6e6d25abac2adcc225c727e3
Date: Sun, 28 Jun 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782610713
