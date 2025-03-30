Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C7E35973
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743354594; cv=none; b=OVmME+7XEpEyr0+vQXKHr15Wpfv8sy31gvZlYiPGInhFahf5TdmIXRDl1Z/lz6niwV8xmyVmQIsF1Ix1fl3GYV3qYvr3WDPPxPyDJpEuJ+BljId+daVXJkUOpAyu6sUvXUiGwM4BtHG1w/yAKS9jTBHkZRAt8mTmYzgkyl7/hJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743354594; c=relaxed/simple;
	bh=nYb7Eyug6Z1Jn83cgCB20/kHaNXo/a9PifXePnoyRJA=;
	h=To:Subject:From:Message-Id:Date; b=nrXMYNcqvn5ivbMHV1b+MD1Kaz80jcI+r+JKVUm8DQBq4cNuVX3UNE8eEJsmFAAB2WRMjr+Q3oib+8VI3+CmYGPlQ2nhtdXmNQUDxz4OtTh+D0+f738z/kYoMLqBhUqNLfjKy6tJn82jjPvFSELz0e+YTxBm86VulEE7anqMgrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdI/xJcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdI/xJcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACABCC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743354593;
	bh=nYb7Eyug6Z1Jn83cgCB20/kHaNXo/a9PifXePnoyRJA=;
	h=To:Subject:From:Date:From;
	b=RdI/xJcgzVvtLTArc5teCo5t6jZLmJOMjTA2DBR/PCd02byMRDWgrs/kjronFc2Kb
	 dXqRSUTyHogukicdWOZQN+7g5QBpmIIz/U3rnECgqYN9RQBgaEzLbQM0qTon4CmfHQ
	 ZNuVrs/lS3nzkXUOfASgrjzYTokqlkrmNvHNq+qwuzFr6Qgj/sQFxCgRFr8TekqW46
	 CPL1/QD7Ypp7quXlEYakRAnwVTfYXRa+CrnRBwfEQ7iVUYo8HGKERiTAUDgnYbxYZv
	 4tGEwtS9x+Bqy0+7XTZIbrz1ifcKDE8blPi19QnNNMv9qLuWtDgyC3gIj6CB5RWtyf
	 JcA9C6oUegvyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADBEC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174335459360.20811.4921561208024087608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1ef635bfede0c4fbbf3765b6fc51be13e909554fcf73aa537aa35bb7d9c50c
Date: Sun, 30 Mar 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743354593
