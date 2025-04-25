Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4159E154425
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745552994; cv=none; b=qR7JqhT5i+VkVBimRjlYk+sImfh5zgVZu2knnoWMowGCfpxYDYeX+3XhlP0kuYEfmEVOJ6bkdl1KhX1uhuAyhEESciJ7P+UsPrc5fN3oOhgd7Nb3KexgD46LcpJCGXnjOWFH1dazCvJR5yacoLAMqwbhwrPM5R25xoqzw4vC8/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745552994; c=relaxed/simple;
	bh=ADFjTJ9ScuRS8VCPIwHMDYpId+qiQMs/aW4tyeG97Z0=;
	h=To:Subject:From:Message-Id:Date; b=KMUvtDq4Y7p3mFrElvnvzfzli4VQ9W0fmuTgVeMxSr4xmRcWaz1gISYvRpVz7nyyeEs78OMiEHFXX131/96yO36qqteuHCe2m9+opiE8EEEbj4Tks6/e6IQo7p8hPLmRVEA2GchvfXy7HMYndAgOXmEUZcdfJbN3loNRb5heQPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O70RB0Xp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O70RB0Xp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A2BC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745552993;
	bh=ADFjTJ9ScuRS8VCPIwHMDYpId+qiQMs/aW4tyeG97Z0=;
	h=To:Subject:From:Date:From;
	b=O70RB0XpjpAO5DoE8zY+DdMvkif4fWuSxORzzD7iP60o/37mGAoPgx2s9YFUlZgpn
	 MKLAYUZowgSMy9T0uhmgEsuST96HxtzLpzCvTdesYahQWmmpdhyW4brcroDFh507ZB
	 rGBfb7QlfAbt65lRErlIq5tzydxVdXgkTxKcpuGyB1oq/LRgjDbsNZO81IPW8p5XEG
	 Eiq9N7+U3AHkGR7qAjBaNmV9vRRRObV2DgybfzJIhtMtBSSvAvKIH04v0vP+hMpywF
	 uPx5qzwHZWFTTAj97nR0fnE97P/NUHcuQc/ibEwZ5/FWH18zjJRV3k+BcPHDuV4Xhx
	 TQrfYK5FalhNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DB8C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174555299357.28436.17474809987246103328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c540b6ed1bb75bbcbc295bd40e3a314c35c82f2bf0154499419558349888f3c1
Date: Fri, 25 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745552993
