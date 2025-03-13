Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4252905
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 02:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741834734; cv=none; b=HFKmfXro5YTyTl272n/tsEpt2jXN5ENPIFq8xCQLPqWtkR5OkLGw8F5unTEfu2VMlXPvF1qgzZiggoJEogr86g23ZEsRGrc/1q2pDvtLtcs3eT5cyhtmOkqatza1rTprDAaQ31/r/qHAn1zIZOJnzUVZ2QPjq+ieHTo0lBw1Yxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741834734; c=relaxed/simple;
	bh=u5sQm/cQY/8IUlahEZORlDvUzDGRaCtdGAXn8Ns43pc=;
	h=To:Subject:From:Message-Id:Date; b=LsnqgipaMAM5S93c+tqKqLalLRZ0duo2dx6ya9EwponnxCFnQRrF5zXGp20ekxtl7r64c2rKJWtC8Y6aa7M7z2LQcwhi5Bs8oCKLmRvAodTIWJ5BSlcZ9NhT5BGhXAn3WluaBAMUm2OrDYErLyEXfXggKF1tawa8um9gBmjauwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=th+melZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="th+melZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43BAC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 02:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741834733;
	bh=u5sQm/cQY/8IUlahEZORlDvUzDGRaCtdGAXn8Ns43pc=;
	h=To:Subject:From:Date:From;
	b=th+melZRKZ3nssAJiuVsh5haDT9R7exd+k5iKFSSHrWysiiBMBCyebxPhS6azvhdf
	 dCqsDiV3X16Nahd/x7F1cBVBVOgPqCZSdPAhyfQssKV09ALPaCSV2kHdUFoFxMF/ss
	 Ykgw8ZbmDzw11lmRFpvu7Q3tpobVsuoR5ywBMNPnq8tXkv4ny30L1fHNjr0Zq2SJSu
	 0rm9WcBuc9qKdFDtbi5QV/VvSEqMs6irBZA3/5HuICqhfoMljWdtZr/wJczJDQRzKh
	 71wFQw8XtA2a0zZWs83NxOqqlYChGEdo8byo5ENou2dISSL8/Sb/B4S6Ko2gx0jp83
	 kq3TiAo5ApxtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD1C28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 02:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174183473358.8184.4848512473262895621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df532b5b8047d379ed1b19efb4c39019656e4a10811856617114469b2ddc5d3d
Date: Thu, 13 Mar 2025 02:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741834733
