Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1F826059D
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765873434; cv=none; b=UobBaMLIHHCYEP22OvDmsHd7ekqlkd7nehLUHX9e+kqp1neH0wvkXAUMUkvC1OXb/7o6JBBRFzmv3Ko0Ya8BVHMAaYlavCKbhbrF7fIHfizwjDnPInUGlEfivAmTzCRgCMzav9vbnVZNzDJmSkcltIENCVL6VynOYOSeVKPMeE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765873434; c=relaxed/simple;
	bh=tiBX1HmmwNGU4+u23YKbtHYbVZamEZEyhMvpR6nWAK4=;
	h=To:Subject:From:Message-Id:Date; b=JYR8apkgX+VlgxsSUWn6a0YKEk8xRE95uUeXUona1yQexJvYwTW26x50m9OzBipEgKBwDPQEWfuIVZhZe9R1ktleqwUxLHEl8tT5Q3uLYhy+T5+aU73grJTGX/aA1Rq+3kaV3IJVPM9WzfeLHP3SnVx/0Id9SKT6zwRuQKsHjZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7ZG5IJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7ZG5IJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03D3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765873433;
	bh=tiBX1HmmwNGU4+u23YKbtHYbVZamEZEyhMvpR6nWAK4=;
	h=To:Subject:From:Date:From;
	b=R7ZG5IJRzovobK32FTn8gJ0GfBKEJiQYp3jAbboJpupnFaZzjZZV8nAslqJyQM2n5
	 iItYqtp4DvxNfYfgcHM7ogMsg/uv/7jUJoUQDODM4euJqW6Yk6Eayx1r0Eg0jvTgc5
	 E92fNslPh3HvR6+BlSp3ckOaDHLq1qtfvmd5ci3vWfB7d28DQkuQ/4VN8J8sv1nnxA
	 y/pFUhNVyedgRphqTwYa/8H7zpyJgwskFfxogqiRbP08v84hkcX6iggT/Bf3BdawMD
	 FTtBfCBJlAHm6TrT1DZsK0zoryHTtrHiapuBL5Gc83W3k9Ccp7G+3lJWidIYJvQf1r
	 4EnqMeYAQp/Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90351D5C0D1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176587343358.2324.13854515811519118758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c6f0bd7244e5e518489389e8272d3140d1f7971cea4ec4d5d382ea20d61412
Date: Tue, 16 Dec 2025 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765873433
