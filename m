Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4605722B5A5
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743564594; cv=none; b=oOjo6tWzTA8aJAbgERCXTuloTw+93pxj1MoSWwWStnH//6/HMXT1JYVYIpdAHMgCeRDtxzZuVs32lriZn7GExHEDdpTti9hl8gERTAr2AoetAgVgDimKilmZv/zhAI/SgQdiT/f2DuWZxB6kW2/juCRvzYm4BnL7nTVVGmE1z+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743564594; c=relaxed/simple;
	bh=4AeSujTY25YNg+8rQBCPtkMctmFS7/VwY4ji383H0tY=;
	h=To:Subject:From:Message-Id:Date; b=jitt/9JazuvTHQFYZKYTZ5A1py56VSn5oeiz66Phmbxgf547e3EKwBO6C6QcpcFW3pZZozkf6jrMcDsLPsF6lvTExvKtMp4ivjBr6CTpfMwso2kcWEqJnQbSXNE3SthMjzdc3nYvElWpDmjrPkEK+B4tAKGv9/brumZ31PHUuBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEPeYy5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEPeYy5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1077C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743564593;
	bh=4AeSujTY25YNg+8rQBCPtkMctmFS7/VwY4ji383H0tY=;
	h=To:Subject:From:Date:From;
	b=NEPeYy5SXV+ObZcyaRq5oXI0hvfAx1Om5dzBCtFVyUDGYvUn9wMVBKvWQly2NuJRG
	 89Oe9W9XxEXUQ9X0sPyhKeBZOiZdDkDDqe1M+af3C/MkFFHoIsFtC/HnFSLbHJ3dbr
	 7EYI4FkdICY2mB6K4Kd0Tc7813e8ej2vpqej3MsxrQ4iBKNrvXgGv3jXiVAA3g/PAP
	 gqHZ/4mvxvPUKuOZWgp2JWUGcwjAVNxsMmzq5bDltnO78/OE3Hl2BSnf/xR2ogjKsD
	 qjf3ma+VE07JXvSA4YRUM7i36ln2cGqNiHfX4wJ8MvrYJiZI9bis2nvguOlC0tuYKN
	 t8NdbP7jVijdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF7DC36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174356459363.14316.7873674910079231235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22ac1ba6af9aca0f918f4654c143fca468f7c8e047d04deca60c37117795033f
Date: Wed, 02 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743564593
