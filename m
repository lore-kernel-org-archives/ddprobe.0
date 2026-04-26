Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2492223E320
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777186054; cv=none; b=BWqKq4T11T3gnl1V3rjf69JoYUnrZ+nPbo3AwCIyWVJS5GYGasGGJ0wzfSrvZVERz7A5JRj/sgBrnWj43VN15G6OrnGvl+wKoHWT3lIKUoEkbZYoPFIqHYPI+3pvsAp/9beiT8CUMTILKnzU35IR/dJWcKdBjr0SdQ8u2LPoxgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777186054; c=relaxed/simple;
	bh=dxVd3FYD74eqCcvLoEPYh8kpZtbw/9ssevQ7WxcjDdU=;
	h=To:Subject:From:Message-Id:Date; b=rNTB+vVNHNrdcyixkkMyTSaghbno2CCVjCLnWWDdyTo15pZG8uH/86X1GfOP3w5m0N15wKCrmE40piL3W+5G8T5XHYkJ3aCG5xR1AvyD4lhJ+j2Yk9ozK9XmTCLvwdr0nDCSQosrfn4hgXAtGeyIfZPU1YbLanNifggdtSLl2Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STDwVVmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STDwVVmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2229C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777186053;
	bh=dxVd3FYD74eqCcvLoEPYh8kpZtbw/9ssevQ7WxcjDdU=;
	h=To:Subject:From:Date:From;
	b=STDwVVmHLFjk5i8hb4OfvFuN0YqVBhk0KeZhH1OwY5B2ymX/MhlfEDQqf5tngz5+u
	 S5TJtUGauz7rIcqwxQluCUFiYR3ZhgCpWnwK9H1UIEBukOGDQJDQiMGtWcd6GOYUpL
	 fLhGOxNteUWH5L1z+MDAyI+68MsA+/3juCXe7C3hrtyCNpKHA3Dl8/Y3fxbYOgd0/n
	 exl17XR/thv2xjkaQgAOK8Qm2MqpdTERgnceYb7irRYxLMcvHhUEMyDemvDQjEImp3
	 3YcBy4h3hNucPC2QpRnodx0i66vWd2hy+OqrC2ceLs5HJu+vumIwqIOEzIoZ5GfWD0
	 ajQtPs84PiH4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF692FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718605369.13710.1296383690227091342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4ee967cc808a888e8a57235b9dd01b9874ee30b1787915c59797be3fe8569b
Date: Sun, 26 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777186053
