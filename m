Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2677D4B1E52
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747316394; cv=none; b=RnHNe+ADqoxuU+/MT+WboDLPGS2JVTGJ+TMN+mGrDo4hTiJAt35gMKGEavnv/u+zxjHDaKefCJcOW/T+B23LR29c8Vf6UtHkCeJUOTae567cJHUWHZBTwBf7gDc7WRc4krNXNsECh2+NPHLu+BzCQ7+o/gLJdrx6DslxRzuJOOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747316394; c=relaxed/simple;
	bh=L1Pj1z/xNEq0INX9rw5VVf+w04kYDUBDzJIu2IJdqp4=;
	h=To:Subject:From:Message-Id:Date; b=cn3S0W++YCaRCmzQvCwTRdgexZWCyrbPzFRcN6crvI5HsYVYX7F3yn1gtDNIXFuDvohbe+noLhA5SR6c7HNJKA+3yC+wPCOe06S4FXrbqdpGBNLPU1NBdSDFvV4MMo2eBaTyhVSMRhcnsYIuat+Z0UzCRd0xYrALwA0wg82CP98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGu/YK1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGu/YK1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1323C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747316393;
	bh=L1Pj1z/xNEq0INX9rw5VVf+w04kYDUBDzJIu2IJdqp4=;
	h=To:Subject:From:Date:From;
	b=UGu/YK1YA87bH4YjG84MMYHb8GSWA7U4W17MzLBnrDYT0VED4yw/t3LtckM2BR93d
	 vFt8KJtFL1V/4BC9HouIEbIyMF0m/s/k+QrcmTwBmfRUCI5XlA9L3bC+z4KKUVJj2E
	 OrZYy1Il86+hvA0GQPT94SBYJqsF7HIhygVV847B0MOaVOyvCyM65AcDpdlEcHUBXf
	 U4INDmIKwcDNYj/SF1+dLg6sj/RtDptWc+7tcK14NbviiEMj4sAd3r2USIQ9n40ro0
	 CfQGvq87RmP/1sJmZQeaxeJ+s7MZr5T4GiUYFASAV4LUw5079Bc03jJ+O0pmguhvpG
	 t+AbKKRapmUVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90501C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174731639358.12576.7261709244063658705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 384c77cf60f507a4a38d9f1a919bde2ef527625ca7a541e5f4f9880dcdad8951
Date: Thu, 15 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747316393
