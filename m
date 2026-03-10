Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16822364954
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773129294; cv=none; b=em9XS/HDrS+V2/duW+iRNxbGdDx3ixyeMczm+1lUXBe35oIDxd6Y7qqTRPG5Obr0i2ThgfR3KjViW3D5/Uaxlx7XYVktzG1iX7WlSK+EQy7lNBEqLI5tfUxAANPNIqRAAlo6zfd9FcsBVcDKN3GUnYM749H2BhImLQbOcQmOV9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773129294; c=relaxed/simple;
	bh=Lsm2dsxJJeqaCqrBn6oYjbRwkQ9iCzV5/ATJznxwcDQ=;
	h=To:Subject:From:Message-Id:Date; b=EMwBIyOZ5ti6dwimej1lC9yNMfAkl8ZLMWHk7EIgwMMPax9S7PCrN1tGuoqfO8BP0ameenLhpOtdLfeEC1JWsz6zU40rjdcsTyZ3ZkRCFrr8fHsFrqFlI6Oa6UMlhXncU8friIOwagD01+Lb0ztNI8DLYxjtHMCUEVUgpS33iQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jv2/faJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jv2/faJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7512C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773129293;
	bh=Lsm2dsxJJeqaCqrBn6oYjbRwkQ9iCzV5/ATJznxwcDQ=;
	h=To:Subject:From:Date:From;
	b=Jv2/faJkVjL2VgZusFLV2EvK7N765nMAq97X8fWq8zEK2Ue7S/7xnoTJ+B/AtKX2s
	 FjD+gDUzNpQgE9NYmnggRHpATfpEs8Ncc2Xe+lCVariVW1rvPdo8WcWz25KdXQ2aUo
	 kjKOWOmMUpm720tK0pu4XGR2ZyeBR4ue/fw+yrLlbuV/WRxpbtyHT+Be8tacsynGk7
	 TuW4PsscIaPRkJQ8Mog0Po8qiGXaMfhl55b6ko1JI8j6KNOrOxRTdn9HVELBKv8+zR
	 nYrBrHEGXT8MgVTOz4xoQwf8fEvCYmVmXr582tX/WiU35cswkpl6NVa4HMQMEJbbT+
	 RHMtk59+Fi2yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955B9FCC9D6
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312929360.2607.13343845818637996942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79de62860eaf841c6fd443f73b97de13683e01118b3fbe47b41919777935f931
Date: Tue, 10 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773129293
