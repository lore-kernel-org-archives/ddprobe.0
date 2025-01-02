Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2285C192B89
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735809954; cv=none; b=mUQI8sm6v/lLEDSKwpZVm/dwd02VkwqJIV7js6BeyN2JBzZhreUqxzrnOs/qPYDaNdzdoV2JrDc/AJ18xQrWiAf7oqSBDV3a7gayCRLxzOR4ILhkN3+x39VYZTzMj5ksSvLif4WdpxDtNehUJGaFlLwu0e3RH1Q6++xwtKbmh5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735809954; c=relaxed/simple;
	bh=xKZ4lax0HKIcXS8fKk3IeD51pTQOhk5o5Iy03DoWh7M=;
	h=To:Subject:From:Message-Id:Date; b=eg/MPfkWHW8p0pyle9Vo+0hxO8dKkRChvhL+RgnfzgY1pGxRir9tKgqd0O+KSjjb1sAHBzerFmQ51wtw9fj4PQBTEys2pKtxD4T9Kmdmoh3OpBo67qdLUks11XH0oSuKozktRU+48lG2HLqTsop+VE3U1eDSoph86ABcRjanm4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+xMPnda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+xMPnda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBACC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735809953;
	bh=xKZ4lax0HKIcXS8fKk3IeD51pTQOhk5o5Iy03DoWh7M=;
	h=To:Subject:From:Date:From;
	b=M+xMPndaW7Zk1XNamURq2nzNsWfVFlkWs3mHnXzSn1Ev2gIGFCuKd8poxAQvKUOTB
	 6etJivZTrwbJt4nwBWvucuXbGj0igqBwr3VL9xoA2gG3Snaj9AgXAFnJp+Y0HuQj6R
	 Tc3RMtE7CLv3x3jELTh0WC3gggJoOlYQi4CQutfg1SfiZ14vZo0S3tAIDlzMloVkCB
	 ejXOJJuc+tQ7adrd8bd5JK7sZGZW5SNzc99fgv0BTwNpZpWTrJvq/KNL4ZSlKL0ehn
	 D9RefL7Mp2AJs0b0cm9m3wa0IhvxnmTiM5pIM9GOIwt/v99m3QI6qh5kcB9fL/NVCe
	 cmkWn0z4D6ZMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97487E7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173580995359.27639.18402539889355019268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac57cb9df96591091b0e4ab266c9755d928c2b2f7e67f8d7d700c73124e585db
Date: Thu, 02 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735809953
