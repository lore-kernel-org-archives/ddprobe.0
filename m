Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C004A5EAC
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791544234; cv=none; b=c+Nirq+xf5Ta5TnBqbBU6FMbnS/sHtOAFwSZYch9s5Hvz5Dhw+TAqRLYHiz4YaPzBB6vrXvVOtfzor37etRV2Q9CsSiC0FVrIIjsmz2RMGYozE3UBoAZ3bAG97zhvozWGe1ZIHBc8Wyh+4VPwNySln+rDu0sgaUkuMfEPm8jPoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791544234; c=relaxed/simple;
	bh=R2H5Pod4bd/jVQXChutlJ52lCJ09Fkn5XbrMYNhcGLg=;
	h=To:Subject:From:Message-Id:Date; b=ee5sukxzCFle+1hlm65bODniecH3u1wjXCuDRid83erU3qDBhXsyQ2WgI6yuNm04PqckCVi/YdrmwHXteI4fBshDhCNe8YwYUaD1h47DaDGWYOWtt0hv1aaRBtGBFTePLjFZIAaxY8sxu7Fpt3BoKu/U0rxRxxC7cEP1PvqxnRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJLMVOJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJLMVOJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED89C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791544233;
	bh=R2H5Pod4bd/jVQXChutlJ52lCJ09Fkn5XbrMYNhcGLg=;
	h=To:Subject:From:Date:From;
	b=aJLMVOJTf8JEtD6X4m/qyB5DUnrvbmi5CmLwvv6U7px7g+0mEmo2CpEbLxDnDuGCS
	 b/6trf4p+DFyWclvdL519El2iva+rO8xDf5xp55r9aj9fceQIM6KCJx8MnNBKKvelQ
	 URg+av2sfV13kjuG14kuy9H2/8cE8Keoxbm16rtTTPZPK6C1WzFajsCRzwh1M7609t
	 jWzChK+JP4k8KvVTTs7QigxLWKhp4TQjOywKBvry6nqyKT3HldwzzCaFz+8lQUWDQl
	 StTX11cLrYIhLpxMX2Ec8vyERTsV1J2RzxRtbFL67t7j6Aqi3lXDIy6yUTpYlIsmmm
	 N2/aOk9TxSDOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FB5CA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154423369.24947.6634748861446167025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2765e259ebf3bb32960c56b62431eb90e14b066e6df6a7db33bbe0e30cf002c7
Date: Fri, 09 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791544233
