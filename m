Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F75286AC2
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 13:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713877223; cv=none; b=thnae6ry15Lqjoec4ADkY+yEXh9EElM+cFMmENint7zp1K285ckHhaIvTYFrThdZXkphg9c6TXcCwzTfj5EY4/EhSR9vS2du9kM8FdpqC4gWyfBXNSZN+f3zxinnN1H2RResfuzz2p/1U3a+1m9WCv7vUUXKJznb2OiQqBJW1D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713877223; c=relaxed/simple;
	bh=rXF4Yc0oh4mFKSRKRXt9iFHMjUQhNk6s6/zMkws1A80=;
	h=To:Subject:From:Message-Id:Date; b=pZ+MqPvCv9hg+pdTEZetBT2tFSipLhneNhK3CZyPQiXIYiiIRpm4uFH1xWf+v1OnIIrChTaQw9E2+H3pmcSKewRP0DnLwQQgZF/+1xALXd5Qi8bKxOUtLootvuUW04/acALidOI+9Te5kYda2yabClpX2RTfYwmEAhUU6aLy/iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G926N85T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G926N85T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC59DC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 13:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713877222;
	bh=rXF4Yc0oh4mFKSRKRXt9iFHMjUQhNk6s6/zMkws1A80=;
	h=To:Subject:From:Date:From;
	b=G926N85T/UavE3oIEJLExkpalhDLubpHX16g3MA3FU33/mj9cCoPv65hAXTG1qlax
	 jqWoqcbstZSUSI5tLuNJoCh2MseBrymAe7daAuz89z0VzKKzWA3bRxX/otVLyk5ddy
	 JXodrf+2yiRR/mYy+qzZXNhyTjCQActMEDZkTSsVGMn0QudFi5Bydo+CU+9xZcVwC6
	 +1o9mjjNO/Yhc0Tvb07F8w7nK8zWA1mGCFxpmNGM4Nsg3/O1Bh3cmbFvcaRXOI2deY
	 zkqDDySft97CtGDSFElJaBrMlEV9v84CDfCcC3ioa711Ty0jIVoB+L8SXSm0d7ij99
	 7ZZyp+IP3u1EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3ADC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 13:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171387722275.15183.3539466208046334282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab41f0abce13bee014d3d3749195da605f5c660d3b25ad1ac4debc05ac4180f
Date: Tue, 23 Apr 2024 13:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713877222
