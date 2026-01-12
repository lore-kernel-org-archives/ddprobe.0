Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188419476
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768257234; cv=none; b=FOURulWG1WJdMNYW6HMghWZ363TDwtLKSgqpBKs4IfmeBvMgFBYkUXKYYulYTdPks41gfxsmdMmWZBvzBS7qqKouHRmyKUbC9MycRT4mxCBTpxzyB+yKmom/k93qnVsFeNqKRCBLLlv0o1XZ/gvYMZ/UsrAdzw6vnmoFTKoczcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768257234; c=relaxed/simple;
	bh=5XaYzpCxSJ4KBD2T60xqck+Cx0zARiIaVeQk2TBezps=;
	h=To:Subject:From:Message-Id:Date; b=qHuU1CsrI3K8ppSavDJ5ykMb/7IO86oqFdesuLsvgpUBp+fq8TTyHmqCMl810xn+RN9AekzeANsd+SkbAM2FdwV5zUplET3R6uNJce3+fQIu3xPhMoKiShPVmU+TFqnPE2t+OfIiR6PTcUvR8fagoacIpDYyBkOa4hWIyGQc0pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9hx9LDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9hx9LDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F41C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768257233;
	bh=5XaYzpCxSJ4KBD2T60xqck+Cx0zARiIaVeQk2TBezps=;
	h=To:Subject:From:Date:From;
	b=T9hx9LDxD6Sh1J+7KtO3vxFjEyegCBHfMmel9URctjznKcBaxvY+98DiLBFIUp7rq
	 jGOfyOkykBver5ZKDjMVdHyuQH45nmYZB7HbnmpGIDqSUKY/hn8xZn4Q9ZH1jdljN4
	 XqZE8keHHsUYpmJzwsB/J9NWUte2mHR/ageMpBG6uzVwd0tK7h9Xq97G++EyP2b+mL
	 ELObrLkK5iZ6k6FcMSqRylMiBSplzSPIAPikaQkt07Fwy0uzyBpJPuBpuyzJ4twfFA
	 0hwDt+oJqn7ZuuTPK8tFzXTS2aFJhKkdy7xml3faIq7qtRrs7wh/hgj7MkPmR1WfxZ
	 Ql2AVh/l0ZmZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932B3CF45D4
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825723358.24225.2674543962438115092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa35b660ec091ce88808d1924e3a67375102b98179a89f35a3e377cf024d7dd
Date: Mon, 12 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768257233
