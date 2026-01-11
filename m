Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F99320B22
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768094634; cv=none; b=VnKHc6Dz5GmNgqE5M4QirOQ7ZA16mR9f4raC0hOpycU0sommTqBBo6wx6/Agpe/l2GwLFhctWrzq4Dk+odWjEyEgiyS8/HNKF2t1jXkyTtqH6VhlDOuDxa02X03tigrG903cU1DAD7q4RzVmg1D3vcCQAoxEV4WoogWPFJM2Tqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768094634; c=relaxed/simple;
	bh=cUTTsQIwbu57liri3nSpdaBeRqm+ZTYg0hjjEHZra5o=;
	h=To:Subject:From:Message-Id:Date; b=cUta6ZuWEBdC1pPcO5ggiFqjV0r0Gk+TgKbkg/qSi7Ft9QihcTEz5gx7HkGARcao+7UkZZqHzrUqD0aQ/+STwwtCBaHw966vuowUuXR+TDWA240cmW24rVs0LBQMjW1VV4OyttZPEsSgOrIgehuNdnnrN813et4MJm7Nr40OD9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUnJRHdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUnJRHdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FD5C116C6
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768094633;
	bh=cUTTsQIwbu57liri3nSpdaBeRqm+ZTYg0hjjEHZra5o=;
	h=To:Subject:From:Date:From;
	b=oUnJRHdZQrph/AriqhYagaR5wZrd1V8GkvTVwguXnO+WnPv4vg40GltpOweXYVdcy
	 NINXlaZrrgGn0jivruWDJ6mfgl4vibgNaeHgh+NaBR6TV9Tr7aP03dLpEjjXvbqbmR
	 s9lJK/bxkaA+w8/35V+lNjtuLfOPhgE6JdUNlDT7gVagjsRy9IELndF391UQ5qIODb
	 +dMOGjFLkvTZyHilnErJUqryyetAdL5AbpvnMD24JgQycfzJax8g1NIkyGKfROeNhh
	 o/1qxids45x0lHumA9kPEPyEJZVtTGKrVfru4uPwn85BTF6asHZv1pJJje3ieG8kgA
	 Eh5ohJSUKEOaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9454BD25028
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176809463357.18117.16716337988904651913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9af2adbcc5b05128ed202c49688138cb64c4f53bce9c089aa733b678995454f
Date: Sun, 11 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768094633
