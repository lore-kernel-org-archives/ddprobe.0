Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66545134BC
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717198463; cv=none; b=ugIwX896NxmUTEwusdQPUfXvdyTXlOakwVDPkdl66oWlcdZBxofBtfR286Mbmh7rgdtPkc6muV4tPKZZGPsTKIBU3QperB3l5bAw5u5ykxDf3dQmJPsRtQp4ZgiMBsqfBpOZeF/wLhW/ifLdqbWHKilj0vmQWN4Y7rLp+9Z0gV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717198463; c=relaxed/simple;
	bh=eMeBfc4+hL7ZR5fPDoijaronige7tTBiZT0U40BsX1A=;
	h=To:Subject:From:Message-Id:Date; b=kXewfcAdWMDiaErdYZy4vd8awlHR4SOw35KHcUa5MqRaeRvaxv1Od1CIVo1ejgccGfBy9bwOhEBBT5EtFYNGT1A1/KpcTIYTFU7naYBfidaPjS+WhnL455Pqkdz8tFmc504SLut2oz0SbDg3sEzyS6KyaLWEo+BGFWN2NDUvycg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+adHipf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+adHipf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E572EC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717198462;
	bh=eMeBfc4+hL7ZR5fPDoijaronige7tTBiZT0U40BsX1A=;
	h=To:Subject:From:Date:From;
	b=M+adHipfomV6m7koezEOf9pV3NTz5PQqplmGRS7uf/8zwiMHV3F+23T/XxsQKiq1X
	 bxOv4w07alhZipT+MWKna7kd/v6byIUw2kHqcSz8Ef3Kj9uQlw1vjvkv5mkARMpEl1
	 cbfnE0kzhz43jaG7RbdzjBqbqCf6EGNJNdtICfSng0wVbsDC0s3iCCzHZZQbrv7Tuq
	 0/56oQvqUX74OOI8ImBX8gSBLny48+9GnfImgw8znxzTsJruS0uHzEg6ZvW27VNeI1
	 um/xnxib/9XfOc2BaaxNj8o/uSWnn3n+n2pBWsj4Sk5bEPED51RpObmaUfYE0m4yL7
	 tAuFHlcg/D1OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA191C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719846281.8214.913477868395432757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b3f511d524f275260b79321286baf33f1c043876f345726b3aecf62d903adf
Date: Fri, 31 May 2024 23:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717198462
