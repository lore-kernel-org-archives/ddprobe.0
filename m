Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516902F60B2
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791052234; cv=none; b=NNA0lzSv+BOmqkCpn0y7MY2qp2d/bUB6NCVmqYuaEiq76wkbiGInffw8sHZTngquRC4lFr4Z2rerFLXrbYwL8tPwSW+lEhxmxVn8oDTLx9f3XaFsm0rPgLKpKJhAPsIk3kRBjS4F5jkIzOtb7PyjdzIbTaWKDmJY9tWCQgHTkUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791052234; c=relaxed/simple;
	bh=ZR0li5nNkZApvpe/6n1YNEZYPwZbs4JsrRkN+M8MoLg=;
	h=To:Subject:From:Message-Id:Date; b=NDBhe8OwZ2/6feoXXfI0UXT0zmkxPeAoz/xS0LcuyMNhF9OkyoMSXP1J/NZrAgCx/KzY9nEUsC8CVdK67XTDhG9IZ7dzS06cultRM/PcMffv9/d1dVLdHxvQf0Vx6fceinltTwZH6G9/WxXBmrU/cJIfipjFLiBKfPZlomRakWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpH5TH10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpH5TH10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27E8C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791052233;
	bh=ZR0li5nNkZApvpe/6n1YNEZYPwZbs4JsrRkN+M8MoLg=;
	h=To:Subject:From:Date:From;
	b=DpH5TH10ep1q2iy2WBw1IVGmDCjNMkH8ZpmiPTCnR0VlFLMlJ73+GVFeWTBPcEh9R
	 TX0Gqdmzy3FaboJ9w3209FK8erNVra5AR/u5vSwh1H+RZnJV3wVB9CAeDnNaJehZo7
	 9xNyDWfn8OoH5m8a4GXasFN7B081VC//RYSmFAFp5GDmS/yKKnmGDPEVPGFiI4jZkN
	 a/zF9IeD1Ll8AX423vXK2y7Iv2VIsOathuyDfgCcyFqwkC7NC+fLEsEyOidGEcV0e6
	 JDyGlWipgVaAoUo9rgjPNpVz495atzFGg5sSSE2jUhJoILeeYktUgEehFezoVp/ONF
	 CQKPcQk56mP2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1069CA5FED
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179105223371.27204.1807318498207914548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6189ef78421b9b59804d48d278b997212a18ca6b700c5918a1e5e9b508ef5980
Date: Sat, 03 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791052233
