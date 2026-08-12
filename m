Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA297404E
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786515634; cv=none; b=WH4H8T7u6B/m4P0IISN9dGaLtR8eC8muBBbO6bUiPXYvAX1qNmTdnS+fA/5xR8ScqFPmQjrETn6y55y6g6WDN3SfOQ+ThRPLpKLHpXGHB+v9OIz2NuDrr5xzofkhO83bhBaac46VcrfdqVWuVHHfyO376NmaBGjgRlfPsOdd40k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786515634; c=relaxed/simple;
	bh=IMSaYEJr+SLdUG9iZMnuZdfqbAuXeZteK9fS+R5nLxE=;
	h=To:Subject:From:Message-Id:Date; b=ostSRXlfFP4h4U9LsOp0YAnaDL5xExW6rB/7O4IFUmmGNXxVYf2EqQ0HiF4NmZWe56xlD+nV8aDpS5/3sxlHSO81gHvCn6EyeRMkAYkG+FKEuDPGS/vojhth/yoCPc5byl4BmmNYR2ZzB+9HcEx3CdtUpZhm1fZl/p3+SQ6IaFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkRN0rir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkRN0rir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93ECC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786515633;
	bh=IMSaYEJr+SLdUG9iZMnuZdfqbAuXeZteK9fS+R5nLxE=;
	h=To:Subject:From:Date:From;
	b=IkRN0rireTH2a+u9vSNAIEf/RWaO7zmpZmVqRiJ78Zc6AWTB+UMLvsAw6bKmEWdkQ
	 jS5swX9HrMPvDvqm8qmjtjTz2oO7d9mAOW7x6arMANXgdFP3gIEYlJA16jU5YHO7v3
	 Gm3hd/2/u9V5+pVaxN5yYdn3m7xpuh69gGOLPOOVKXXchXDwN4YwLOLv6qWEQD1M1C
	 mc1rcu03AD6ecoOULHpadade4jSnwuJ82oV2MK0V4krpo8XM9WmF7IcLUanR74MVmf
	 pqZy/BPIxdeTzLZrXWSs41lkTLX8VaLGc0rrlG8orODksxQWLPH7M91UgyytMVt/EQ
	 9460qNEXU4oaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8845C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651563368.29028.12003090937545004023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98897407a7aabd4cf42dc5b8f8555439a27baf78c375d3e7f79ab5a725ed5d43
Date: Wed, 12 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786515633
