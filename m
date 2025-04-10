Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0AC62857E5
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744295393; cv=none; b=sXh7VQoEtjIU/kcrRoAee401srgN1wjNy4/fNqH9dlcGX18hEoYNtDS/TTQcY+Jlul+VLXyNOE/km34yr6aBjid/a0Sc2xQLhPVIOyanKFCAf1OQxYlF6t0w/2zqx/ZiBtMGLOFssLdQSW52Vr6d1LyzzpzYZ/aTY9VtgY1OaB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744295393; c=relaxed/simple;
	bh=/PDZOPdt1JY/FMkKwS8+eirABIzMpgMSiC4Mag4EH10=;
	h=To:Subject:From:Message-Id:Date; b=K6qypl6fCYPCD9HCoF+1E6WO6ZoFIgPcDVtaMEvZkrRr25hC/H0D8G25w2ewC8ql2MNoSQNoOO3eoklaBNicrdAB4Bk8PCNUJOnDEGHRsxEHqpEZUHs9geCbRhmy8WThRSn19sKggi1+pSUumW0JK232Z9HkAmO+WTxLuKziJWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAVHuNen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAVHuNen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28D3C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744295393;
	bh=/PDZOPdt1JY/FMkKwS8+eirABIzMpgMSiC4Mag4EH10=;
	h=To:Subject:From:Date:From;
	b=CAVHuNen6lLmIy2zoiMjbHZ/BgqIGfs+bv1hBNXT82OMVSULFTH3cWo70bNTMWQ52
	 AzKggGg9JdW/OuHhPLykyPleXabFidsb8Q3qlVPd/rJ8funCS+7GMMOxxFsDrD6z/o
	 dvUIudQLq+7ZWtSzQJfTIw4WLMBzmFBg20BcbSZDQeHkkinR+syV6GEmZRmZ5Svh4G
	 +grTmCkIjHFr4mdbbqXluN6FO0oJu5eb79m3O7aNitQhry8ibYaZm1nXBsdSvyFIdX
	 wRdflZEeTztfw2Uhi+mwYaVeh4J4JBRxI4Qjfhglkn254o+6eKJCZbZtlRlLhwBoQU
	 4b+ed/v/xr+OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9F4C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174429539362.29258.9061114891246251966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1246a24ff468096510a3b57e992f6da16abbe81500455d5be2a43a7f6f33af
Date: Thu, 10 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744295393
