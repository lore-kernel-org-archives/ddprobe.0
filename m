Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8B61854
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720752443; cv=none; b=u73sewEi3MBsZsb565L0BX05P6YRnHajWfJn6bTzVax4HmE/JBakWmcHLauRwTEZW8vEl/BZMyU++2xwYXHemyRYuEjGHFYLgguR4p9vPXsDgLGEF7wqWGdodTVCU5T7i/x6OEOcdcDw0UZbMHOz7bucrbFBqoV7qzAf9jPYVo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720752443; c=relaxed/simple;
	bh=gqB9K+mit66lXsOHVeKKGVIfuz4TA3r44DLNURMil94=;
	h=To:Subject:From:Message-Id:Date; b=LOwOxXWUy1E6i5vhbPWWHejBjtmXgf1v9byCEion9K+gvB0mN0f2f5EWDb5+r9NYx0LxDYzEWd0IdVtROBdvMzvIfZB6/pnNn+xaVVuOd6dS1hGzUN8m8wzAgCMXjU69FkpegPrBzbFy7NNYMIk1fL0KvAKTTMDDLIfFDuGiPGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSQNteWi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSQNteWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA0F2C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720752442;
	bh=gqB9K+mit66lXsOHVeKKGVIfuz4TA3r44DLNURMil94=;
	h=To:Subject:From:Date:From;
	b=sSQNteWi8utXYMxEzTwpeaYLjBfG7nY8ThG2I6+X6z5Pp0LhpDoANy3SH2AWE4EbO
	 XwIy6JiGfCVLgw5Ve7BwnVCPzEUPV3VSB/57En2bJwOM5OBXsn6k7bFpP2wcioDjl4
	 yw37pSZ/RS9UHjVz8vYvvAIwu0hGxyGT6NeuQuAtoGZ9qs5a/JqFsJ5CdIOsaJbHOd
	 Os8gu52/a4PImD3D1OelTNH9pe5ZmqaqgfkOd4qdbzBBiDf3saWa0tHZGtbDTXpuSX
	 bR2qQQqGnyNTGeoe9JThQtYgOBxItGdp93wakwrzXOHS4O1JrlEQk1bgdmwi2e+z5m
	 RHMomEF84VqkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE72C3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172075244280.13925.17020153981224323603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2d0e1bb8400d0079dd4f190bcc6df216d03796ec70240308b5e38e71a82cf0
Date: Fri, 12 Jul 2024 02:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720752442
