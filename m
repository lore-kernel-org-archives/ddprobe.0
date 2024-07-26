Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24584FC1F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722005754; cv=none; b=WQsiQIG+CTcYL2yWBvCBcrdiFSrCo0ryZ130ETi0tX2fssR2TElPMLrW8eLDk7X2HetiHaogdYzOFLN7CahNcrC+MBSmhdF1uosxrlVUH3bNIbk80up1uoUiqhOs6XC4mLLaUypsQLf2TeVeGyNQQL100e2c+dBIPGUh0Jgql2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722005754; c=relaxed/simple;
	bh=h/NavioEn8ayEw8wiSUeAL/UXtaZa/Xwr73i6aeuLEY=;
	h=To:Subject:From:Message-Id:Date; b=aGdyNeGKdcc1q7e34ZeSwf+dEbB7qRD4jYt7UTh87hpwUC/cBNsRbRu8Ran26odRUZ/bQn/xJfsuilTN2gcErd9eDVlj5uTylsfnsVHSWyywk9ihZlZvHaLZqyo3dhAfy8lmqORQpsvyGLqgq5KaU+JA0CAZp8S6rjED8rTTxLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYdH9mih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYdH9mih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1858C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722005753;
	bh=h/NavioEn8ayEw8wiSUeAL/UXtaZa/Xwr73i6aeuLEY=;
	h=To:Subject:From:Date:From;
	b=dYdH9mihvaeTRC7IAK7r4tlS9yZYp/deo6LDgfG/do+ywkKDcMjdcsrLGaEfLiqzQ
	 T1fLH0VKZcaC0bJVWT530eUYntBHH+tiHYkaLwTJYnkYL3XJp5JLPbL6/REVgbEIjE
	 aw5V7lIVNWalSQrToBRi27BODxv1h6fTj8usbYrXXUDIL4fJI9yNSb88YPdlkA42ID
	 Ti8hVbTL8SzAmrO894c+WyKpXip6AxtXZPXU6PeQ4U/iHVCat+nWObg4OTVEAUNv55
	 1bf7CHHTV2nEaf8yWuByfVkp89A/8YZ2XvU26m0v/0WnxhD+USeDp67xRegI9sWS6/
	 TKAbn4sJVzRYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D049C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172200575363.1925.2659749166242585284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3f84a0486b0ed5d2fb12ae6756dbf0af1f7e68cb431f1305abd950ac53e7d9
Date: Fri, 26 Jul 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722005753
