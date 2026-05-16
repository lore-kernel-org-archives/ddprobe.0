Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281EC28313D
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778953834; cv=none; b=eNydlLqGm1q1H3UuY2xpgjtDLBK+237Z5iKzQf5VfwRP+w2KI1sq2Zq9OFGkY0eItR/PJ41b89+Aqsi2hscNffFdRmdpO0IxRBJ1QVp8gG+DORurYmovGoIAFgo+AmXDVacfwoGG42pSLu/UYy9pofZrUDDGO8O61cGKrp5PqdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778953834; c=relaxed/simple;
	bh=BBaZ3UqhvPn/XCKOr8QGr56xI8ikWVzMnEJFntkKGcc=;
	h=To:Subject:From:Message-Id:Date; b=e3mNGOz090dBvLL46th0sMPZ35TJL0N72JNCj3+P7EmxzAhLSRf0K8vQ+uUYQuBEXUccPi0aZiikHcMia59dYJg+ouCJbMZrpMtBcFxe3z/TMI2/CYwDn9qIan9XfGiTd1E3T8k3VL0nwI3UhEFcGudKut0+sWycQJnP4c90hjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpuq4jE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpuq4jE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE62CC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778953833;
	bh=BBaZ3UqhvPn/XCKOr8QGr56xI8ikWVzMnEJFntkKGcc=;
	h=To:Subject:From:Date:From;
	b=kpuq4jE2kx0c6jVRWhhTqLVsu+GKXeat451yg0n1dchoqp0u2Kh9/St5CQFexaOXT
	 YdBhFu+VsdwNQgN9cdMseikgUrw9oyKWJWc5g0aQJ/FkUh/Ij/b3xc4YjzwodspCmS
	 eZh0nFX86XzV1VLCtlz1SjRz4hdDudKzj9V+72WRBEj9/cis0NS9tK2t2enLITAmdH
	 Of2+90Qc9bXncgvEO4u8yPKg6yuTNHdoNccSGs4YBl6XIwGwCPSzi2Hu3dz4pX1S0h
	 glMTvFMcRoXWygImMclIJsrPIRagw5bDsZb0/Bb7mCXnE8KUMB+kU9whNtCqZzzcVp
	 syRaLSKzFXTqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B171ECD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895383370.2939.10236853399374164155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418717da22546b4df30c68249cc85e093d9b95781dcd4f4bc2da2f22844205b0
Date: Sat, 16 May 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778953833
