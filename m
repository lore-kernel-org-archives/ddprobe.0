Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE6F377EC3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789571434; cv=none; b=QiYv6PIXce5EipBzD/85+luA5PAEx9BGx6iGaqnt3KujpLECADJXi1xrfimElI5tQac1DgYZBmSGh5FVQHkUTxnZT/MDG6kbTrMMegoTMfTdkpY4WBlhIGpu6W53Qjx5rf5IcUTzzsE9QZhu3mbMqpYRMkx2izzXmkGIMj18BfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789571434; c=relaxed/simple;
	bh=oh7w7fduslhh6JjBG4TnEtIlsW0Rm+6AQnhT9D5a9Rg=;
	h=To:Subject:From:Message-Id:Date; b=Z33YRdbR+GcXhw2CwngLL0qWCvjMwynJEEAZN5JgPzD7cuBYboFiGJlT6tQvN9WvSP1DvPC5moUShLUJY/OKHntSLIiEGGusHvGh1fbCyvDgen2pOQSchRqZqzCM+SqtQXozo+gS+MgxukOtf5wFF2uge0JGl5xGZGJ7y+eaPDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uwq/Pfz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uwq/Pfz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDC8C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789571433;
	bh=oh7w7fduslhh6JjBG4TnEtIlsW0Rm+6AQnhT9D5a9Rg=;
	h=To:Subject:From:Date:From;
	b=Uwq/Pfz4l/CJzqsY/PaEMZVuUBcdNq3EiDAUiMamp6GyOUmFIWfUiHseVmzEsoQFQ
	 6I+LpTuhXd46g3rQbadAvL3rCRv0sccGhfPLGsymV2Oyem33W4DVCq1LFt9ByoKr3z
	 WAzVmLlMGwnsN4Ra40t7QKqOHht3R5KK+u9SiFxVvPAvPW2xBReq7j/yXqjMGf0sV8
	 WMzrpaZdYbqr3RWOP4LHvPhmXn2TrSRTmjHYvGPbIT7Y4UTUCpV63KW1muIlMNcoxk
	 1rIu2YYjFuOIYMlQVlr6vF6UfdKJX/s2DwY1OmA4ZMzPy/pureejJzOpcBgj/HwuS2
	 wlkvf59ciQGFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB373C982C3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957143369.1118.8348116327718064565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f6cb0c22c44d7cbdd37db5f8d19f3f091bd5e1220029079d97e063ea221dee
Date: Wed, 16 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789571433
