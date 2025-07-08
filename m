Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237391DB54C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751937594; cv=none; b=rK9hMv0SZL3CDzKsqM6WA6xe1ii7KcYMSWXbTx4nxUEld47JE49NAJwIkt/NPbN53VvOT640dIsNovlOIOfbfQDwI/+jjsQMq5dfKVGOh623GKPzortx9xZmhZhO56/W3JAK0pHXM42+Z1qfcU7+dVunV1SFCO6fxo1Js9Zxt4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751937594; c=relaxed/simple;
	bh=kwh17rlh5NcdWmVs40StaCToVulEsf7803d+5cm+U6A=;
	h=To:Subject:From:Message-Id:Date; b=FXo00Z3YDBdn/AXgYj/fkqxIMc6C4ciAVzW7e48g2r+OyM0n+Qm2pCZbV5dGYffCldaTddQBGXVba5NBxH/sTxHrwYJMPZVzr9B4H+75VIAckbE9m2c7g8GtLrbJ0yArx10BqEspbccbFEpInY84KnIvQv7rT/2QMnC3jdRSelE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaTXd/vd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaTXd/vd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EA7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751937593;
	bh=kwh17rlh5NcdWmVs40StaCToVulEsf7803d+5cm+U6A=;
	h=To:Subject:From:Date:From;
	b=ZaTXd/vdnwGnR8ggLm2EWlMPnOp8Yz3aG4DGAABKFOUK63OvPnlERariykyAtVVfN
	 +hrcl1FecoCijdobuCc02qNHCTM3B32vzn8iXWydQrF0bjLBTeeddtK59xAGw5fLiF
	 5CnbfLEQwWHDcfzZWHJTmQwAAKSu6uvae3KgF32S4DrIw+EC/vb6rtd0v4NHdOe/3m
	 6KdvwubWCX1IJqYYY8gf7RaSL3kUMpFTF6ZhELL+fiATIJON72TZd9giEA2ggn1K7z
	 X/pPU3mAIQk/0423WfWxOVJJGsQk8iWpUZbP60HneySDedOdBf1tyEqQJaGaOn2uir
	 iDOlRUEVwK/Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92633C71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193759357.24049.7464110307159338638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ed13c48c2d08e5a04bb5f721965bec9ca8fb96ca434f3dec2a8ad915178388
Date: Tue, 08 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751937593
