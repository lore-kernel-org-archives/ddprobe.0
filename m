Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFA712D762
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 13:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717419923; cv=none; b=Hg18d7uyxkPWoeL6D84FJcZRL34UGSibEf1h+QdcAjiQCSNsnVYUfe8fWATaxc4f4uBDT0WrxNbSAY5QmTD5oNXeeyQ1/QJs4TwX5MXW8dY0gVrrNLVhQiS0MREXMQmZM9FK6+smNSPHFkj8nlEXdKyMxR0JlTC0BGPUvaD55kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717419923; c=relaxed/simple;
	bh=PWZ6U3ujxjd25UPSOxOu9oKSZ3XrC1lQni+NQTm3g20=;
	h=To:Subject:From:Message-Id:Date; b=HyzFqmebvsWMYKshCs630GHj2jOvKR8QSdj2U/f3Jv7EIlp6DQpVdPYwiQaG+oyn0FhPsSpGw5131DDD6hckk9TPX6TfNnivYRp18Js+i9FeyD/qZX2T0B/QicGNI545e6Qc6TjmjCygkk0eE2nNBJNx9GEraaJszf+uH1D3+sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ta0ytrMo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ta0ytrMo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEC9C32789
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 13:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717419922;
	bh=PWZ6U3ujxjd25UPSOxOu9oKSZ3XrC1lQni+NQTm3g20=;
	h=To:Subject:From:Date:From;
	b=ta0ytrMolZ37TuVecgAgx8J0hrH0AE+juaDv6hyrcL88CQqxrK+Z4GcBDV2Ifc6rq
	 bqCihszVPkySBvhm0xNnPoStDll8YsI99JkPGrAb6av/0y2advAQfC50uE2e/fYVW+
	 Ccc4cY9KHjiMT/xkF/7kW3r3ptpuYhoUqfD8x7Vqj4GuDMlthQFlNH8h9lLS5QXDVI
	 ZBUz6G139pVAHyf3/GZi31XM4F0hfYvJVDf8DW1w7h+hoynjxeZubN0BoELocJ8fW5
	 u505EcmG5m4vULKSwctPNFQRkvIa6QLLHquikc9kM8P4w9dPe6AAPbdVAPRoLcH2Kx
	 b5kh15MfDo9GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6EB0C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 13:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171741992280.2612.6974513162974015111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82db0f14ade6c612125089206092450315a7359592f1f454d707536811822e22
Date: Mon, 03 Jun 2024 13:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717419922
