Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDBE442C
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757462995; cv=none; b=YSghrVLAKlcXJAp+rju+rog666qsMnbId+QyIC28L7yLy5MadznmnSyQQB3FNEu3nIZ5qnO2PiZvzEmfatoFKdufT/eFMgoIp3Mex9lMwrwzH50zLkBpLF6URyDxW40JXCKF2PP9V8bgNOgIVAhIvOQmPeVuH24JWryo0nOdfkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757462995; c=relaxed/simple;
	bh=aOWGWvIiShaZFYm38ss/V/csK8RJyGnAK863HpOsZBM=;
	h=To:Subject:From:Message-Id:Date; b=TMA9zpHDrxW1WOyujZ12To0JLSJfkL1LAykos6qterA1UehcqVz8e4XNBlY+FUcv7w2XT/EWEfoIq5odasqXzWCjViqiTEzyMfmsrQC5mQY5AYcC1p5XiQAqWxludFhoyopozoPT8mEsYhmkH9r5PbXveFMnqJhh+8j5Krx+yww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZ7fPyCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZ7fPyCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E34AC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757462993;
	bh=aOWGWvIiShaZFYm38ss/V/csK8RJyGnAK863HpOsZBM=;
	h=To:Subject:From:Date:From;
	b=XZ7fPyCzQku+nMDirHwvhpEmh8Fiq0qRx3Z6fYYwSZbC/4gFsbDSoqsAiQJyhk/2e
	 hZi6REQtMbCcvN8mq/k+NurF5IQgJVa4sMtsgQ8Er0a0B+AVH6kF6C1UTNv66fdmIL
	 NkDwdbORvxcnzB0+kyCOnbetB2dBnNrGR1FvNLrhpGV8lPXxR6wHhtV7ZMPB4N3VwI
	 oyhN0f8v/1uWOFSpJO5hIqUN4s/Wob3oxucgZ3eTQHCRQvj7ADgSy4I9doem47COrk
	 ih95ki2Uov186my/7gH9EHzT4dG7u7jTVIMSe+ASXJgnhxET3+ZnwUaAl6uS3rAwKv
	 jl7r35o4g/OiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F092CAC582
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175746299357.11956.10376206893107425009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1039c1ed788202feb65e3ef9508628f4228175d3236730ab2ed8eb0c6b552888
Date: Wed, 10 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757462993
