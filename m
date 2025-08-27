Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D831350D71
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756299594; cv=none; b=L7ENekUtBn2GnL/eR+GIO8dZtpYezpSrpgPJTYAwdpJm47JojcaXG3rctTUrsmBbChOLSI0A7YI9usPMtKXqdM5IA+UtRX3IPRSy2NSTjbBrnrJnwfm3FPuo6D1QBeSUernv+zHZ1m5Ts9PGDHrWo7EspEm8Eo6tkUtneLHojvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756299594; c=relaxed/simple;
	bh=d7Do3RYVheQpc7VUpDL5LsE17WVv51p1PC+cs75MGLY=;
	h=To:Subject:From:Message-Id:Date; b=Uj2XGThSSj9hnpKyyTiuLu5wbUoJIauO2FFEb0iB+I212dYT0axq2QRLkDSm1MtvP3xtKvkirzQioCOSUSSNfpSyYahTJ/VMDk1BtmrSUM7Tf3gCrwcUYK71dKHTxxoeNNFuG8wilreN2EICKZCfSan3R+vkE7/dosTpuDvWZmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWJur4b6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWJur4b6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6948C116C6
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756299593;
	bh=d7Do3RYVheQpc7VUpDL5LsE17WVv51p1PC+cs75MGLY=;
	h=To:Subject:From:Date:From;
	b=lWJur4b606gjk4SD7h8LR/fSDYIlJLgt+aWfcRHBBRZ9mKHfCMsRnfQu8O/BDXXyo
	 IwtB+odRxcg2qYG7QMylfhNLOlbA5JqaJxFjMaMoUqZLAdyCjdfDGqFH7rcQb0G6EK
	 2ck9hsKddM84MMAfy8JgvyiWHmBUh1+Gv3IKtMVWSQSkTpEgsSaGyT3c/YKz6dheah
	 Oo3e0bl4UjGzX9j1yH0nrHjO6oVDmDw9Bv/MQR+O2LAfV705S7NaBsbm+aESQaYl5B
	 OQRWBEdFcIn5ARSiyhHLi9HVuqW4SzM5gVGPdFgXpDqI9ShAmWCoA3ZlJex4gBfmk1
	 VRvv3ZY3Y3yIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9363DCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175629959357.4568.1756663168045816032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b7c5222778717fbf3ae7a920d104e3bcf962267d3f8076b8477f70985ab9a4
Date: Wed, 27 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756299593
