Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4121E1E04
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779160834; cv=none; b=jFBY2LT/jaVLO4qgdERD87s3E4xCPgkP/wWj5a4mQd4bhuJltf3Gnh48mRMM8fNd3+rXdUpoTpHijxHhpiHLQGrYuBklnYjZ/H0DxN8BkSWfM05meJqtr+k8+GvJ0GpGe2mN4QbDx/FdBz2Zh3rrojLOXhZfgAxnhW2yNnQ17AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779160834; c=relaxed/simple;
	bh=GLlJjv0TpY2wuMTb6DEfLX7hyo+9WpXLYTDdaDD1x/s=;
	h=To:Subject:From:Message-Id:Date; b=cy8k/36Vs7/J6YGw5dWnh9ZvllcRCzbyC2Z1NHhE6cPXqwKN8dd4xsV54yvQVTGiGhXJo+uNOUVBo84SBe9QE1NtBeo6BNNdINZs1PayspZ9jhyUFHX2vh8xp4Vwwp25XLGdXRrysLWQEc9lXz6nYh/B7+7J0pjqzGQ+SRebKWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoHCt1Z/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoHCt1Z/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F86C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779160833;
	bh=GLlJjv0TpY2wuMTb6DEfLX7hyo+9WpXLYTDdaDD1x/s=;
	h=To:Subject:From:Date:From;
	b=YoHCt1Z/QPYO2RyrI6MJ3UHlNsxVU92Jrri8GiyPt9QOiBUsuDFIa8ryEpCd7a9Pb
	 0QfplMRdhAJMn+aLQzS5z4Ln6v0mvvvDmo1x84h4ZCqQKmaB95RodN0Cs2UpjBzEYS
	 oxiUgFWsB3k8eiR5M2uyxHgKXY5dZ6uVzoZLlz6Bpwn2rP/jP5eGFCptlemta+D49z
	 fzSVA8j+MjTzb1eMtc6XUCGG9yEA8V3kT7GnDfhwl6MA8ItV7JsgWKM4SnMkj38lqL
	 9zZvJVsVdKbs4eYE0EcbGY+U/ZHLCm164xoXDiA0JR9tW34QW9KN52/kVH5oqQfMqo
	 z8L471X3FS+qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF522CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916083370.31539.17653113878044005713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d346bd866cc697bede90749df7de8ad101a6f586b20207b364ab3a81c81bfb06
Date: Tue, 19 May 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779160833
