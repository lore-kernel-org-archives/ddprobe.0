Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B2C1DE2A0
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754802594; cv=none; b=lkqP8hmKRFv5srjgHuOApsNBZ0RuHyC71YevahTSrf7A/fVDf6QrH8IiPjgbccz1lL1YijymH9R1GPTqoUSDVWFPKf1zx3ptlEfXGdg6kY64x0ddJ85+LLTZaIn0K/QCpFZTb1elHimI/pzRWHFczVBkXaYeQ/KMlKnae/GJEKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754802594; c=relaxed/simple;
	bh=7GSPX/kTaiDfr7/AcskopcVYNWwG4xi4bx33gnjandE=;
	h=To:Subject:From:Message-Id:Date; b=kgK/5w5zwbkUg+4LkHw2DyfLJZSE96fSy85pvKS/aRHcf4BkPwg2hOg0OFCueVCy9oDdxBn/2rO3OUELEI5cKB9sFFnS+fxtLMWdh37QLTBeCKlfFK/AiWsNZug6PGlkMwWs0i4ygA0HGm54IyHmvQXSmvzI51kcklfAeRkqMxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOjWBo+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOjWBo+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F04C4CEF6
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754802593;
	bh=7GSPX/kTaiDfr7/AcskopcVYNWwG4xi4bx33gnjandE=;
	h=To:Subject:From:Date:From;
	b=pOjWBo+gGhbjcbb1Rt2HWlQFXKjyMPt1cpKPQqJ7xR+4Yi5yvnTA6odqrbGxXBITJ
	 V+/VxY0rmeCyqy10x9R9UBq68eJjnVyFap8ZKZALSnO/xTtS+jd4pVqFwZj0RJab46
	 JE7evILqZrZam6RJQhdQkTyIcwIqbJqWpuDrYT7VHNInCr3cWA1DCDTRbp02ASZG1g
	 JjIRmSLwUGNkeh/Z7SYA2xdU7S03C6qE8nRbnseb6V6yCTm2uvDNS1FUpXFzsnSOwP
	 CguLvU/BPx57JTZO3Ybn0E0PLHivfJBH6pYkABQbbnITdxhEz1cmqI1ajr8nriYPJm
	 jlIO5uST/zMTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930F2C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480259357.25935.4002237982978137747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ca3c0b6fb2d4d276953a7af8cedc00ea0d37c75ab2d2e2494ba95beeec250f
Date: Sun, 10 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754802593
