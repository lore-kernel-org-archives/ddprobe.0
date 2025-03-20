Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBFF1E98FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742489394; cv=none; b=sxDgIcdqgRSY0o0OFyfwjrGrgUXznt3X6QKgSHhC1GJQwOtsfRBDaW0LHpXzqjckuthIQ/0+tq60mFnorPyEDp9rnYqDePNNQwP1LFtdE/PedlPMGSE6mHMqAEjOa3D4Hq3pVlc1ooXOOrJepYrChq3131y5mTEmgRcOXidB3eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742489394; c=relaxed/simple;
	bh=B9Jz6XNVzyjBrPRyVTOq0GztgZ20xqKgBpMi92+6Mgs=;
	h=To:Subject:From:Message-Id:Date; b=Vti+/6x4PhFc83Pz5JLqEgjzDgyZkCsThTNSVfskTz0kuVJk+oatsQ84y2VmlOC049ttUR0/sq/dieK0V4XtdUMcVN0ybMEenHFMG1cfKZ2gPvZ5tIYNqGKfdCALFN2ttmrnf6UIR6Re5wdVBV+Tl4m/vPhDdzvU5TAVxxCyxLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwB0vzXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwB0vzXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6520C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742489393;
	bh=B9Jz6XNVzyjBrPRyVTOq0GztgZ20xqKgBpMi92+6Mgs=;
	h=To:Subject:From:Date:From;
	b=YwB0vzXJSXZR04DxVLuL9KdDpcWtnfzbOH86iQ+O1glGtuSHUAi7l7xPbjHzuDTq4
	 k6AWJlUVoS9sFCWUV8cIcZ7xaYaEzDfu0TcheIO+qB4eVwGBauGFlnhrMA1+j4Z73b
	 mTW0g3qbo5Qx24hddpZofJhbLgW/+4Ztjeh0f6qXxUw8dpywSu22IIsAGxRFPsn3fH
	 47RG2ZxJkRQ33gbm1Qp9WeMOHH996xV1kdNTptcxms+y5XwH3jONOUC3pK5U925Ewt
	 JUuVLUn8J6emHcdpTtwuId/7gziDIy9vwyZ/s1o+zcU37xDHUO3i8Fn7NbUEnbDVVO
	 D5P+CNAeouuQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9776EC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174248939361.13551.3941852706258535311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b41ce8569bb7ed2f13822193680d7e07bae315887eeb06f038391898aef8f1
Date: Thu, 20 Mar 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742489393
