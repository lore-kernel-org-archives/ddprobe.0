Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391A82D6E5E
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758967195; cv=none; b=VJHGkywDG3JRcDgoGj/VHIJbRZ0iL11/fOrzWVJ0zm7MWZFg1Z4Q95BO5EMXy2I3OyjwT+atBRlu5zm4t5zepbqWWDTDJ+Z8A3I2xjxZt9DAMm/o8bzQeHQivAmGp4COKftjuRpUDIJqGcPqVsK63S9htiysoSYXfNGq1LEMMmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758967195; c=relaxed/simple;
	bh=fttddQa4ESBF321pdmatF1f8xyNnA03qMkIIEhFQjtU=;
	h=To:Subject:From:Message-Id:Date; b=kyNWRFt0b6/JXr61LjSXruSBC373/1FKWGMf7Cq2p7C3M+nO6mvYJiU5B/mTUsGu+JqjGGywBmckgoFJ0u5hbUxsQ7kUSbB8Y7X9m5lzv0asWiUKC64h4qklqeOZKheeOb0wnAJPO5Ar9QbC+87qZ7WyVOTLQRNlPKgEYPALTjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMPiN6/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMPiN6/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF195C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758967193;
	bh=fttddQa4ESBF321pdmatF1f8xyNnA03qMkIIEhFQjtU=;
	h=To:Subject:From:Date:From;
	b=PMPiN6/0gxn7ueMZarmGpUGnwLNHOaNqmecmo8e4qyJMrowaD/TwEwTu8jjdM79NG
	 9UHqgBQRvHAwj+MQ04CREMQ6EPb+e2OgPlJK9wIfmaikD3mZRxQBXHU0aoNhnPD8RG
	 0ruHtwMQunO4hMqvb3gtzumtgRraBE2N1XwUmh6L5O44a7mIfpp/KufCPRVMTCmDto
	 e96dXBTZryk7BsOp966DSP180fMU1VBu3aUKBf27zihTPngFl3pLYPTGvDh05Lr5OP
	 tS9pDCLn+LwjAZ7znSbeA76w4UiIVlFIZALNXEnjtBot6hjPu/taqesJD7BlqA4slU
	 2LHW9KpXQxboQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9919ACAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175896719359.12599.3592977679028816971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30b2e255266b24e38afb50b83ba9c1f060b3fb15c39c57a23f60f191bfca3a0
Date: Sat, 27 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758967193
