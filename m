Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5CA3769E2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781073334; cv=none; b=qRn8jtDvoWT1bY17rMBG4I0PjVmrbz/yHsNNDkpMBAjzAbZbxFI3qL/yVFQyzDRwxc74zUufq9ckiMMHOY+WVJPBYOXRhFCJkQJtESFaAuVq9JOVk+WMkOZ3C7ZQSo/k1kLB/QQVWTBLtHSVKKdTSkzaD3Z/dosCvYiawN3RZnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781073334; c=relaxed/simple;
	bh=XeGG+1AEsQ46MLwLE5bGYNjLviO6Ptu4CpNW35lwoTY=;
	h=To:Subject:From:Message-Id:Date; b=ZkQkocLJSWkqDv91NqACplw05gddTMf1l+1gKc02gnIoBEaWa4A014CreapcGvzuEmeQF4cDFY2Z9qG9l6dVumDRQtZU3Sg1wrApMYVmKwKrWIuB4zygy2atWX3spkt2bq4YQimFnrfBycFxdhRKrcJzb3HAiwv1LGcYwBrKwRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQoFP2TQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQoFP2TQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34B7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781073333;
	bh=XeGG+1AEsQ46MLwLE5bGYNjLviO6Ptu4CpNW35lwoTY=;
	h=To:Subject:From:Date:From;
	b=BQoFP2TQ3uRbUdZfF1DNTwgtZm6hkqQwLKa1VvjQTVCm9EOraQ7WiENKQsio0ilFM
	 CwsdQ14c+QAKnB8f5uGJcwfwF0s1EgWdbtOVdReGjHEclBOXyO732WxocKnLcmDLjf
	 +3ItqNC0y/+QPwThOApaM81k+lWmRoXmaTU/cLjsDkDkYzjsCuah/BqMxxgQX4RHt5
	 CbxVSv9Jf0JAo271TunBy5TBJWAmzIHGWwPP20pIvrliE+0LxVKG/a5QuI7zZ9m8zb
	 pNGQsWvHWu4pi4Vj0ezo7qgSm2/XK0kEoqW85YUmt65/pBKbdu1Bb2eqPm3hQrTh/7
	 GW5iDkcISrTQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B73CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107333368.4270.17974430820904700429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12778681dfb51a27f580f591ae8be0e412d376bb2247928719576b4bdd14805e
Date: Wed, 10 Jun 2026 06:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781073333
