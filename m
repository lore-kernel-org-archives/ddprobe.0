Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7CF22CBF7
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741617534; cv=none; b=d7I/CuGhu8t5QADptkeNxlNLxXFZoXBs14tmyfzbgxM+RAuk/phS5QgNp8Xcp2fAqc9X9Vuy6VXnHrfkTOZZJjbm85jTY++f1AxEcDQ0e37lZ/ikNyz1a+R1VMsPt3YrZB1+fzZ906YzhcB3kQ/NU7Cy75Y06rUrf3wt122FtGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741617534; c=relaxed/simple;
	bh=Ho5Cmy9cyvcgxXZvh63k+mejIif9yrfugtKCtouD3gk=;
	h=To:Subject:From:Message-Id:Date; b=OxHojsDYpTrmBH98ZgernurBt8TTFlGauZjb+IHPicwIvQ6bK6ZhZXDexWqjeELV4LhPGVnIq2R8+RtIh5v1MrX9Agtjd4TWwZFQI8gIhu9ik0/MvE0py4rUgDsXw5xDrDMRIuZXrL5gAzRzU8675SIfd/N697WaRTCXcuju0Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUQUWoSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUQUWoSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05FAC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741617533;
	bh=Ho5Cmy9cyvcgxXZvh63k+mejIif9yrfugtKCtouD3gk=;
	h=To:Subject:From:Date:From;
	b=JUQUWoSRoYJPmti+XGvssb0cAmmqINN2tuX3QfQF+4QNU7EnjuWRHpw9kmVOO+T5H
	 S1Gb/XK3K+PM1Ak9tVETMVXZNMAs4S2W0vxpcKYI8jY0UJZOHYKc42f+8kIvhZNnPo
	 nbk3nv/a/NUthzPk/3QmMyzecQcy7dg5cnUe2o3ut2N5EV/sJu+VMNikfX+KYkbvj7
	 povIN5aypd5e18vb6jVEmJpsvxWkdxqFAKG5Z9qteNpgiBKiOBxalx9rdhMMqAT9rC
	 WYVD/t5oj22861jNMaipI4og2z6KEJiPA91BdJvZ+MpshBus+fOp3GyYaq3RZGp2R1
	 A6p2fc49rOobQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EAEC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 14:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174161753358.15325.5416738337256150860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 314f88f45abf16e63f8af9f590a3966a51cab20b2392663212d2fdfccf65f87d
Date: Mon, 10 Mar 2025 14:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741617533
