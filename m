Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA3225FA13
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749583194; cv=none; b=Q9v0VxnpDfzzBuzfkUbFSja+/PCWBee7wclQL+ElBMB/xZZb/9UP8yZUU+xhKsa2V0l/DK10rMLr41N73nGE8iUIsFDLR31LDtVc1VwmEAomnO6X3YnXZyDk13Gt8fKBBbxmCVnzx5K1psVjCYxt3T3qbJJtxX5gGJox06xZ7L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749583194; c=relaxed/simple;
	bh=4Es2JtrwwFUKgHFQIvTCJcKn3IAUgHHuJcCjqGkeCzM=;
	h=To:Subject:From:Message-Id:Date; b=plrwqN2UvQpz22zCmLN+r7D2yXH71WruWse51RQ/gum0uVKPT/VqYRIkVU45HC4PukLEWbl9dTOvJAgML1Li5nm0qqFZ54paicITQB5Ls7qz1K/sCvXLdGjyDzfVOsLQAil3WAnroBXZDUhnk3sCrkmAH7ah33OOBKclwTHUCZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBwCNpIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBwCNpIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9CDC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749583193;
	bh=4Es2JtrwwFUKgHFQIvTCJcKn3IAUgHHuJcCjqGkeCzM=;
	h=To:Subject:From:Date:From;
	b=EBwCNpIUmlmH6a1GFXMOdOcPiPw4gVQ6cuANmK1QETsTv6cs7NFqLB4NdGnzr2oUV
	 XEqaHwQkbjxebETFHgp6wwNql5Je09IJSlOkhOYUYMAwxhYwM+Z8lEVGqd3+wuFR/c
	 eAVCi9XKImTHW7r7TNe6HZ3UuaHqrD0sklzPCjBICWETt+RrcsG0NXyw7QXhpMWXB6
	 sRMJ66auGQ2vRq12l6FuFrwZtuM+Czb+ST9mjn58TheuUScoF2a4amjMRaFEh3jbtV
	 fyZmRXwV1TBApO4TBV9C6aoVoOGn1km8R/l74u5m0IfnhB8IhCExYQz2OWOMdelAM6
	 cFGZlohq68NFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9549BC677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958319360.28690.2657304474621929682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07748dc48adcf20a10b505e4fbe6affb05ffd00ef781bc412390c0cf3a28a9b9
Date: Tue, 10 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749583193
