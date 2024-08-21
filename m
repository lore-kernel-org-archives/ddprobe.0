Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224011D12FE
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724240754; cv=none; b=rAnLTPBPKlgh6lalbcNx8lJFh9VYW8JAxl8Nam2H7+nbhXcsDqp5BCTepAesLvXDPu4aq0sdPwY+ejkpc4oGzWsFikjQF/0YlzQjGxES4qqEnP1RxifLeGDPixDXwLGzNJHgaW+H8gmuQsvyHpyP2j2MOFakafxbpdrc0C2e1HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724240754; c=relaxed/simple;
	bh=SmhpEHNff5vCaGhulblmplrAGLtjbIcr59zTDEPoIj4=;
	h=To:Subject:From:Message-Id:Date; b=XPEg/+Ih8sDkC59wfjxi6Esn97tW+70bu9PyF+NRsfT1FB3XNqrRBIC71Xh/pMKRU03oi8NMyBrmSd4y44ndsnfqXPeJ2ML+09E6H2OM2OFZh8PXzIhv62Pul0EfDRmlv8l4yOQ44tRjq0B3p8MpPEVec8KCQ92ux5Bq87bzOUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSDCmAK1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSDCmAK1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A209DC32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724240753;
	bh=SmhpEHNff5vCaGhulblmplrAGLtjbIcr59zTDEPoIj4=;
	h=To:Subject:From:Date:From;
	b=mSDCmAK1Z6UJCiCeCCbS9oA3iGmwdmbdQjKSi34gtuyT8TFUTQaQ5arc6KRot5sDA
	 v2MnyujMV2Dv2MgNrO2hpqhGDLyr3h+Kokv4l3WeBeWe2opNqHUS3vGGolTenOyyFk
	 YpMRNbf12pJhygoykh0B/yVtl4K8uqnZKGB9BXLIZ7Xn1UqBpCdxjElybxI3NCTlTe
	 w5wY63/zC/7F7LYDJem3uJFVTa7gSKrQIggzPl2e23iprE29AsAhpgYy2HWN+hekAg
	 qMjHvXu5I+3UvJeuHixQVT6E50qU+Gj8lPC1fn/+dr7co8nfsIfssjF3hz/VvcZUyX
	 1W+Wy4WQ6IbhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9417BC52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172424075359.27649.16598173319863380645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d585a1cb8833cfeea620adc548fa1e764e1d5dcb4f60877234b5c85d7620dea
Date: Wed, 21 Aug 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724240753
