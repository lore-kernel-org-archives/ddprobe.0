Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E645321CA00
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742470194; cv=none; b=hfDmEfoNo7KPM5oUrKIGrRdtII2j7wbfCmgnLgGcUS7Ukdwe3FsjaqQ9VaFADdLfd6oc+vR3is5cqB1w8/Xws5pjIX8QUo7DplEmT5mxX/MYFmocwYhhi4vZicc5blCpcRaO7ltP95UQR3EtcDYX/9SKLbqDr3PNUrKuILkyiMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742470194; c=relaxed/simple;
	bh=oP59HNDOpg/IS80KBT4H04WkchSDei7roI7l1upaK7U=;
	h=To:Subject:From:Message-Id:Date; b=pLdVHJv0BYkyJZY/FUxppi3Q++tUJk5dSrio6PPGclldnOE7ss43veXkwJHhuCxUc9jFNIOeOPMy3a4oaUxBtz86rExPXflWcJtNzci/SlU7GoGvHjXjuL52P87z2rpL7JlMF+WPYlhRTHimvS5JumHdGdRuP/M+3NwXByS6o10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYNMMFSB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYNMMFSB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0AEC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742470193;
	bh=oP59HNDOpg/IS80KBT4H04WkchSDei7roI7l1upaK7U=;
	h=To:Subject:From:Date:From;
	b=pYNMMFSBgFcieQxb0w1MyDiAgovf0JMnlraUnBwEOK8ak2+07YJtCmunJH3FD81rX
	 jSzGT6YFhY9tDOTa9q6aQARTdYDKRrQt7qiKRxPHrwVp+Ph2hV1hkd5DzlkD9J6xF4
	 aXucf/9wx5vE0YeVUBh2s68sQHpmcoZGrtCPjTSs8qEgm9u7hzV9JRCG7A9Tn+BuuG
	 D7Cv/1S7K+klS0VJ65DTg6VKQ2fF8fKLw5f4v0w0/6ex8joW3KeYhx+vUPQ8kvB7q+
	 2Ezxi6+4Vf8vDaX7+85eUbulnsqh3ZaxdPfXlekP6MR53DLw9qkWM7mDwGIWul9m+9
	 14gs43NWTy/xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAFDC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174247019362.21547.3968094490032511213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b83d4237c2723f625659288a68cdcb6b69432f512ca2f6097e98912a08ecb4
Date: Thu, 20 Mar 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742470193
