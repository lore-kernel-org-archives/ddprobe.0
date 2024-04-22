Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2EA33D556
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 23:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713828023; cv=none; b=kSikKKi8jftRE6g3KvPZz0o0WOjtI+m/kriwKlesDzjzYUkMl3eCSsKX4qVyEnQSNBHAtYJGQXnZxSFsB3uyOvUq7t4h6D7uNDGCU0hkTsMh8mTaqPp+Gd6IXF++8d0KbW55nMViqx5WU5CcK6T1m4xx/BN1N/aapTfyM4RgVMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713828023; c=relaxed/simple;
	bh=iMVwUYdE/iL0fHojFA1B6li6DJbk+vFldGvNqQ1NTnE=;
	h=To:Subject:From:Message-Id:Date; b=tzspZORIyri+zFu4SA2BqBQIGsSHuyfAx8JWHC1xWDUcxuj3Zg6iphe0hxDx1PiyrtFtbTI5de6STp2I7KzPIdKqpF5PSmSkxamN5WB81lNOvJbEojNw4NhmmiLyxnXNTEazUpsHd8o3OPTP/U38SqhzFtSNtXSXOzM3uutpZoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gD59Rmib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gD59Rmib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D6FC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 23:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713828022;
	bh=iMVwUYdE/iL0fHojFA1B6li6DJbk+vFldGvNqQ1NTnE=;
	h=To:Subject:From:Date:From;
	b=gD59RmibQ66MIzF9hzwTY6pNewi3Gs6xCdcYbHxD2UKio7ds5Ob2AxPZE39C6tr3g
	 p/lCGzTDyv86NCOPnI2uIS5VEL7Z5uBQHuKTzz4bzAG9s2t6RmttDstP+BMW/fcyCP
	 9qxNb8rya7InPmR0vpZgmQA+cTAgasIh3IFLUlkVJRZ0DJpNMPUCxAIRFwiNiIKWw5
	 0kkSy5BNrOpOXQE3d6WlWISsI5C7QE8WfQv+vBFUGT6j9N/xVfVv3xk8W2rmkYpRcc
	 wYj1NwpJqMvUEfllblK/6tMF5o2hlDZU8Crdoyx74EC9msLg7Bgil3njka7xocGODM
	 iAgL1yOSQmEng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BADC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 23:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171382802276.24363.10321634120696243818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a115c8b8aba9440868f610a572371ebd101770ec0ff691ecee6da0f81fec35e4
Date: Mon, 22 Apr 2024 23:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713828022
