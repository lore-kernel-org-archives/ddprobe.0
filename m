Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2092D286419
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766097834; cv=none; b=Sx/lqkZEmiBsWtkRPZScFpRHSKEsHMnPrOyxHxDkoZUvHt8eH/aey8tmcrtDOjJJr6qCuQCA8zIx94qyjDrHe004CtaQikYYwkSuKWBAVZwfwgrzfxg/6KZIddMBsiQlHJzZzqGdWIYV9M5pthzSOUzJ2yZW33IEAxSMh/BHHGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766097834; c=relaxed/simple;
	bh=K330wMxiwWcz4os2GoWelBwWmId+VFRWcv1pwDxCB/4=;
	h=To:Subject:From:Message-Id:Date; b=NZyAaNHlogheyz1N0fgtcbKtQT1hT//+H36YsBVQypZJGjd+1J+xBwgnojN5KyzvXvPnDATEwv9Vj2BBU5/gZb5/PVDVW3ycNzfidUZpc+SMDCan5LvVeszf78bxiJGsMYPjjO8zQemfOCxUJVefUrUBhSqc/Q9NyUHe5CDLqu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBY9oeGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBY9oeGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F46BC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766097833;
	bh=K330wMxiwWcz4os2GoWelBwWmId+VFRWcv1pwDxCB/4=;
	h=To:Subject:From:Date:From;
	b=aBY9oeGXeHsPERr796lQlhdXQADBQXE6TLfE5G34Ap+rPZPOr8mMaNdXZ8aUdySfv
	 hQBqQK4PypmV2b4Fc6ZYQpueUjf5KsZzAE/3sjc0dQ2AZKqeCSyN+0wQ0RhpuFTrwr
	 m2dJ1HvTt1Uoaj/5cOCH98vyfa3dD69LRtZcwKAUPuwZ9xcEvfg4wYMeG29LwfonNt
	 RDdpo5JgqEVbneIPYWhwR0ONxopott14lppVCn8jmz04edu8/SMP2MIUMOYJeYqSnQ
	 +NUVS3WzrR0Yu8SwH4EtPYaEXnB1X881wljm5ocMG93c1Bco2XnhVoaAV+UvdjW3HL
	 EZVlCSjDHVZ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90868D711CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609783358.1308.17902286875433463334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9305f454268be5b80f8cbdd2d426591690f78d3ca236167e1da9e2d672cdfc89
Date: Thu, 18 Dec 2025 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766097833
