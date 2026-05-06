Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F90E1391
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778050054; cv=none; b=cq80EKCH/Mp/pZAnGpJF3dJ21iAenUtKtJccbBoT9rEKw3OsybEpE3lszwgs+tfsBPdMVZvoEm27IAOag7vA57tcQAqDEiH4hsHXnJXRt2MNsgBL36G9xaV4h/3PPQueV5nRvWPho+m40VwP3mZEnTJNxSMrp5tXLiG1cEisyd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778050054; c=relaxed/simple;
	bh=O963rMH4BZd3J7OXtRzF0U6lG6iEucGZihiHuDZTzLQ=;
	h=To:Subject:From:Message-Id:Date; b=uZXER3oI3ExnoEnT8nYSLvRzXCaqOkts/StBjZabWMJROdGRxW5+a1hM7fQ7H5PqAqg+BqAkgpGGr0OlEf5HnkcppDT7ofWiPJR8tP2JqvaejjUj1+pvLHR2jYcpg7FxX8pRRsOans52/1xysYHw+Wk+MS2iRnYE20eG0au1dQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpnYGc5b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpnYGc5b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58F2C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778050053;
	bh=O963rMH4BZd3J7OXtRzF0U6lG6iEucGZihiHuDZTzLQ=;
	h=To:Subject:From:Date:From;
	b=WpnYGc5bc0ddYUXpwRyoZu8E4sibHYxdSgub6dt2NAa3w9Nd+Ab2FWObM6FyRIPln
	 /twGoqL85WB7l+mlYdWrz6idudrr/HSwvjlPo29SofIrXC8OGVX9NwuOPchNeig7hd
	 YLPnHXfy/93PaF3DcVsnPrEu4QVFz9J56OrMqtTZQXqNL/kPOb9D1LB72kDnvismW2
	 DUXrK1qM1BGFl0wQS90uhK/ANeVJ1wAERteZDK5cu16glGNzerjEs4HaOjY5klb77F
	 guMkFIMETz4eQVtcL+ftLqsd8GVDrjHiESPuNvQccoLTBywDfsmcrMiCJdXRGVRPzC
	 LLdH/vmDgBHig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B176FCD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805005371.25270.13013036077460530798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df49a39fc47658a8aa0363479026bf8a12bb64d4d4c52d40a80807ef47d2699e
Date: Wed, 06 May 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778050053
