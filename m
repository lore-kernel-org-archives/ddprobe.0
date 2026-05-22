Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9E025A359
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779486154; cv=none; b=O8Jqri4LnALsmzJ+zZc5GTsnFkJ6bE7ReJYvpFDVYP6EJxpAe6nuawxk2cVfCvH8CizAGxYti8rvcZrb8ArkceeFEPpQoqKgbaxESLVLb8wr0b+rAHzn+dN9nqINMgYHW7kmojUOixrvu6Nm6bHNMyHGuCk+q2SurEIhcDA0s2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779486154; c=relaxed/simple;
	bh=Nlg1ru5srVvnU7bmgsvmT+FcfE8Ahq27eslIXWUx188=;
	h=To:Subject:From:Message-Id:Date; b=DGSHavQ95hoNX+Mf/562Rn4RS2YTFPKHlFpNUNoJZN4LUmdbFKOsal84a+tfBfhKVX7s1zpPOczwBqYzObbNwfxgovDmsT/Vz80DhAkw8dBBQ4YqkyHy2nBT7ygZJpbsiEtSGGcLaX74mSjVHIsTYysDd6RYNPckFtP2IjXLEvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsVDpMyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsVDpMyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8331C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779486153;
	bh=Nlg1ru5srVvnU7bmgsvmT+FcfE8Ahq27eslIXWUx188=;
	h=To:Subject:From:Date:From;
	b=OsVDpMyrJCZef/Ye66qHn3LcyRE2M3qlKYeL11v1w6/5v7+znSiSTkHnvhDs6mM0o
	 ouLOUn392SoGKU/5C7XMMj+xdbApC6b35iCrYXgFWEla+5HGTEPy3AKPVDQj1ti9i7
	 zg6kzbF5FxQwNyz0nRLPk+2xsuD3x4qcnUV9HzKrNvJk3esKQwJhjphedeSskJ7eYy
	 qPsRN7OIogRCiC//XuluuID5gIxD+cXa1eONU83IcL1N5hTkya7CxzaDdBAskaxX5N
	 garjaM+SrsXV5TZTy0JM+OlRAE86t4RQmnWPIC9KgLfPGIH83BbdxC9nePOZF+cbtX
	 oreVZ/WwON0lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD55CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948615369.30099.2960479220911620381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576adc7b631e8706c470fa4c9f35338bb2d954400541605e4dcea85b9df6f340
Date: Fri, 22 May 2026 21:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779486153
