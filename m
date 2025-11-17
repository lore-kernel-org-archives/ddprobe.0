Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2342084039
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763351514; cv=none; b=JgpxYb7YBlKAnzLPsGOu2b409yi1Hi3s3OMqJjDd0zy0yzGtOJHLoVBWfz7plQD5VXm3n+GqWRLdCmyRiUeTbaqKl1g4w2f/QZrYD/t4X36HfBGBzzWT2dngsPUvR8JpUO3QAXlYuIjdaXIBkzN56ZFyNmzjKJY1BVbA3Fwrkz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763351514; c=relaxed/simple;
	bh=R9EB4SVCIdSY8w1uu3TQZZkxpf+uh97Q9jmtx/X+mJQ=;
	h=To:Subject:From:Message-Id:Date; b=aW+u7kxevwpRl7pUYrCPgcqmMrlCId+B+t1SfJviLNVsWyYun16V1orQi82shQQx4kInb/Xd6vGxNvxav95CXqFKjDljAAsmje+oV+YoIAwIVPElZuEa0M+1USC2igBomXiRImUvnSY3GZQUyxfOoI1J1x1s13xKZIfCIO1hNNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DyXbAoQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyXbAoQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DC7C19422
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763351513;
	bh=R9EB4SVCIdSY8w1uu3TQZZkxpf+uh97Q9jmtx/X+mJQ=;
	h=To:Subject:From:Date:From;
	b=DyXbAoQ+6XU2yrTjoVZNhPpzY9Skoc9WXwH87ixc1bdsBinJWIvhV28D8C4FYhAdN
	 K3YPPOKooRyCg1bzM8YWW9y4olAVUnuSSCzRF/Hrqs/maWU4BRap3gXN0yFVzZ0onH
	 wEgU0aIHosn4FR5s8HR7OomVkaZoFxkyJC6YSVSscsy9E0nOQHRjTB7on4JC7FDS2e
	 UcdpcfAX44ZsKKiTr9nVaqX+BnKgkvKWIVEdqMsp4YMucYiYS8ZDJ19xZpAkxY7Rap
	 beAZgd+7LbpjFT4K5ZPJFamk1qYkqGj0AFA6r1p2k6fCxd6xHvgypNujZjEG/bYaWN
	 27CULDUWWA17Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9521FCE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335151358.24271.13980626455901784444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc93f88fc07fce6cea1b09b73cd2c67cdd5e1a163636af24d04512c75e3d748e
Date: Mon, 17 Nov 2025 03:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763351513
