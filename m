Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E463F8ED3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787291434; cv=none; b=k6wMsDQxaDvJxXq/wRlgM3DTFc7ovO7tA8t4apo6bmRV1Jp2UDvdze+HgZAKFVe8iYHIOMovQr9jvp1JVSsWtymrH3pdjtKYvy/2Ircrj8F1S2KF5LUAla+4rZt8CH6PgOeek/V7RLWFtOK328Th/mVxaGtbwYViirmCZQhofeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787291434; c=relaxed/simple;
	bh=vW0glOP1laBZsbf02LkxbfBle3n5u6D/kwNFAKyaROQ=;
	h=To:Subject:From:Message-Id:Date; b=Q5J1a7xA9ePEvi828VLbazF/8syoAjtrxI1Am3R4Q16+BtNJ+tHz9JJeHfpGgMY+vK2ACH73qLMLE17T+5Sn8QUlwJyQhlFCDXnS1h+CoZpL2D4XrFerqLKrppXDMe3Ooz3wKo126CjyS25jg8G5SafJkTAGng9b3WxGJqAk9uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQddhKzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQddhKzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D593EC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787291433;
	bh=vW0glOP1laBZsbf02LkxbfBle3n5u6D/kwNFAKyaROQ=;
	h=To:Subject:From:Date:From;
	b=dQddhKzkpMyR5MVwX5DPejV7vsfkqRi8/ZMniX5GPDoDUQNnYTFj+Jw7ZGOoqrru+
	 y17SENWEBRAATrLDTUmZItwS4vWIV8Pn6G8YPprLXg84AuOg7ucsCZVhXT1k80Av9Q
	 hjHLyHEaa9ccKW/3fQtaFCFIIhib9cuSow0iZ4o3UDk2ELxXDxoVf8+72WtJbSGXKX
	 NxzdOJqzrLu24Q2lG3UUhu72LKiCAIDEJ2SNtt0aR4njrV+f1yCW8ZOF0gSO9uqNfh
	 2k78SUUlap3d231S/RYpEFZ+jpckSLQTEBWvehN1r5NOU0MwqNeWeR9g5qlLPh8eLs
	 rheu1Adlz428w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B167EC5DF88
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729143371.14987.9111985120632959176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f61e74563a97f57a936cea2095ffa8129bf498379a792f8e33d128a9edc0ee3
Date: Fri, 21 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787291433
