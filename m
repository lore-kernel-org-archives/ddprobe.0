Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2F4274650
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772319894; cv=none; b=ZWownog/Kvq/iapcdC4wNLoWlzLbTkNoazRlCErOIDffI/kEyAROC3kRsg49xr4KTRXMHCOCZ+UjSeFp5m5h2LCINZJrILszD11RcyHWQUgqQVobqiRB/CHLeMWvhizvXJm0fmudNjK/XPrqwAQuRqfDecI396RbvDte9U49uXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772319894; c=relaxed/simple;
	bh=nuV220vm1xcThx0IZ0RkdqOujIe4zlxuh8IwVsc1VXE=;
	h=To:Subject:From:Message-Id:Date; b=K21fjCqyb8iKe8Vnk2aJvIMvg+bM1HKhiA7prnu1BRBkNnu7kiEvemjT+oNUnNuK8OQ81BtZxeOzbrlk357iyb8XKm0keCper6MRdiWC6ta/tmHra43QplJDNxFE3YW/YmKRYHCf5h95vUitaEpfx9eXbJ01yApgnwrZuJzhxeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAQM6Wee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAQM6Wee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89F7C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772319893;
	bh=nuV220vm1xcThx0IZ0RkdqOujIe4zlxuh8IwVsc1VXE=;
	h=To:Subject:From:Date:From;
	b=sAQM6Weeea66CCopN0tj/nTC5TVQ9fbOmPUR80oY8UEoOzUlqDHg+hJAFPsT7lHGX
	 +RFy7ViBfSwrpc81C65Fr4qpD+M88KsCK4Mf+7G1t6PSy8aZ5qieT1MvFM57XEOFD8
	 ZX8bXBIB9WWbuk1J+HObqK++OCV4fQkh2AtreeXmK2Zf1Pu1LSzC+sgYeDGSRHivlE
	 6SENrhVUGavhm1FO6TV1z2kET4SzMSr4flbXf7A4jfXhTDte6Q2yBE8X/A16RRc1vZ
	 JF7LcQ1OoKBssSSIIlvOVtEJu41KT19UKrgMUQ13WOjD2ggqVpnw6vj9mcEooFz7yZ
	 oumkrdZhJrozw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC5FFD0040
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231989361.1210.5490724395489361912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44808b836f32a5e12c41686b7655d8c900d143ddaf8749c9276fe0f661db882
Date: Sat, 28 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772319893
