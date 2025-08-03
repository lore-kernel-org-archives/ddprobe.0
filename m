Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C4D3EA8D
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754261394; cv=none; b=o1woeQlTxk+sIu+dqzqdX9DMGqP6OwcS75/H2BfYfDijXzzdlF1115rCZ7OPJAoEi1OS/vFfZCgcsrJ4qJdtBQh8blb+lqDwPYOQZ4g3YVM3KeHjvZD1u+wuELr3jDZZyLvq0VPBZaN1iQ3/KG+0n9TGFvM56iAkDfMeP8ALTsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754261394; c=relaxed/simple;
	bh=boEpYfw9ZhS8COHfn79kakG6Ymsf9y9YZrkRdv+ld8o=;
	h=To:Subject:From:Message-Id:Date; b=XAn3FbWZAsu/Zou16B64j4ZKQYsXDxoc9GttjedkkCYSpwRtboUL0sijoL5GOruTPeFYjjHu84FIZnFMkRxttdFiKfAmUdHzapg+0C4Pt6aMFX3eBmL9K5MAUcNyFz89vVhuCxUuqQfnHJuKbkxdMEwA03HEPFWBkEqzL9NxOUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPSwE/kG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPSwE/kG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75CAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754261393;
	bh=boEpYfw9ZhS8COHfn79kakG6Ymsf9y9YZrkRdv+ld8o=;
	h=To:Subject:From:Date:From;
	b=jPSwE/kGAdChww0OmiuDQgkCXkYeCoON1bss2P3iQwUFfAL++kk5Qy9SP2TTVZy0a
	 JjOxTKo4g/xoiqhiqi+9nE/H3FSxwNPD2/mXBEJOTFd41GJHw45oVDuRSd436hYHNB
	 Nb7CpR3akWyEE6L9XISw0yaozIhJX/guqOvKYzA2I0q1HxDFkSTpNQycuWm9fbEmOT
	 Jc0Jp5yat1zeCGpnJ76//6izRSssrQzh07X83Quzff/jyzxahu+Nz3HwkulGXDFo0z
	 kTiU8YB7smtvFwH0F69flBB2c3Zfq0qVl+MVFCFfYTN6pRuHUw6bDs+sdEFoSv/bDA
	 4CLWCwrnW2U0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CF2C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175426139357.25828.10438206238324968071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b99c21898e7b05a5ebc5b21f89012cd9125548f08c7153d7133404bf3245f86b
Date: Sun, 03 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754261393
