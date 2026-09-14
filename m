Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526B039280A
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789410635; cv=none; b=F8YxiU4jtc7upM6eP40tv4MQV5P3K/Uji3Xa9L+x1rl50paCplyv5vO3yJJNWDwwY/3Xa9QpE9n87p6Yi9NZzp55EkYvjzjsiwpis9U389BCisvyGsFEihaNaOgAkMpgcKCvWsRjdAYlu6LBWxrhNC6t3PZNSvTFKzQTVbUPG+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789410635; c=relaxed/simple;
	bh=tDmWr0r8DgmqhAIc5e1TDgGVV13YHVQb31HYSrGbiVo=;
	h=To:Subject:From:Message-Id:Date; b=qtKyXi6IQABakrWfvJgacfQKVc4i1IdUT2o8NJY4K+4s2nVTAiFaut9X7LRI166/Rdi9yW5H5qQ0dpAge3FqQ8dwd/dS8H21jBZi4Nj/qLYoAN5KSLKTP01GaYdXJR3mIaNvnAtS8hGH12TmZZYAoCr5WCEKUISyv9vxwMflr1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBHJvbv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBHJvbv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CCFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789410633;
	bh=tDmWr0r8DgmqhAIc5e1TDgGVV13YHVQb31HYSrGbiVo=;
	h=To:Subject:From:Date:From;
	b=uBHJvbv6con86ujCU0J1QXEojvlgLhwgH5Ave2VmZcYeAcKYTZqzkcjLGvDxJDwCp
	 vor5TohtdAhf2xbh9Q3RnJCgkT+zia7VDS9vCSshKpZHgBbhbRSS8ICpUoxtOnCud6
	 FP9AwqPvn9v3sODZVPwYNlKcGyqGN9wUBrjq+y+9ZssSW76Zm+3hYqdJcTzPnVgXLM
	 ix5IuIf/MmCL4/WSPMQres7ie5YOkwAJWpGemSvxG78sq338N4F24YmY27LO7T4rjK
	 TkE0uQ0ljIrrBzLjbwd5KYTNuQlur3YK+iOo+eScMtML+mTjX8A6XFqNMRwUFW3a89
	 /C87fyayq4SCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA56EC88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941063371.22883.17590859214107462012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944fed48bedb0827472d5f5fefc6b9cf18cd4ea5f3e4d19836745b8a017e45e4
Date: Mon, 14 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789410633
