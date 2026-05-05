Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E2E3BED19
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778008054; cv=none; b=eDUGiYlYKt2FBD+qLcV185hhAXwplfFZ2iWwKiExpzJBAaKZrfCOwMW8os4t5MQen6gZpKMFwj3ReULxy6gLlflH2vR9ytuUB3/usagNtuy54SRDiZvJQBZzPuU1qGtgWCqDm4L20zcbylfTmdws14yE3i1nPN7pkNMeVxzXlsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778008054; c=relaxed/simple;
	bh=Cy1HULMi00MlRWnAVWaOG4m69gYiYPROA/4Jbn+7Dz0=;
	h=To:Subject:From:Message-Id:Date; b=T5/zDT05IA7W1TArVDp56dSQb21HkVDNB/v4xE1S+zoiG2E4c0m06vzKGdG63tXJgmeorIvUqJKHa7AVCODSTxJ/cNX2OksMPoCNQQ+ntN7+9F7mKVUJhkWHM9hjx3d+axV8xRWfoe9A8YpgedkOzZdxQjyM9TvpeBONIf6zP5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rdw20hkN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rdw20hkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE8AC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778008053;
	bh=Cy1HULMi00MlRWnAVWaOG4m69gYiYPROA/4Jbn+7Dz0=;
	h=To:Subject:From:Date:From;
	b=Rdw20hkN8ecp+MckoRh8GJxYG7Pi0K8w6l/TbvMvBltNRmkBNDLyZDmC3ZFhUNFB9
	 4HZBMKVdUcg+MjMrZfhAaGzP1cMcSF8xVaH/0Ni/chcdk/xedv128CF8AZRXDa802p
	 ydISrMW1wdJC+ugiVjCpBuiwyoIY1L4P33+T1QyK6i2ZgP0SdPexfF9OjAHEivbhFG
	 lyDlb+UybJAuiOxduSiay6PcS5PmoxzuMhejKCFCaE83Ai9WNOFWJnO9PFMqmnfyue
	 3/H3c9zQ0Q2oXHUt3MNnEI4brLhtSBotymeQ5qKLcnkqZ1h/VyvtDAzWD/eY4oy7D2
	 7EYKPVrkMdURg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0E7CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800805369.30596.18236057740049015586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b8abbbd83cb04010caa4d3b1869ff22a6d238945a6427cfa0f7a4cf7e822a3
Date: Tue, 05 May 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778008053
