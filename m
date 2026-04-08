Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257D82BEFFF
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775671534; cv=none; b=VEA8mHNfGAI0RBQqogDr9rcYhq+XJ0CqLql/MauhElllLiwZmgcjit9rxJqTA2gNq0vtrLsoXK8zzJid0B/U4NQSU5Ur6dwTISWx0PEoju8H2U8COmPkauRzQ4Re/rr2zCPTjHgB9rMxr/DcGU5Yl5c+k5bbcUXqMQX61veyhsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775671534; c=relaxed/simple;
	bh=iNiX3ZBz76lbOQdvZPGVY1I5sbFB3J26TitcBMC9JWs=;
	h=To:Subject:From:Message-Id:Date; b=GMBjgzv0ZWXMafD9oyHaESzh34gCXEnnE4SCLMQ883UWIBuejhzs/lXJnIpzDwksOXk8XlUjU3VqQ1H8RIufb3KjZXPRcmfJ5u3WuCRZrZTXqpnTs6aeykYpH9sOH+k6gASSteoeLi0MMQxPzxMo+ewCwduIbt3A6UzoyGxFEkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohvE0QZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohvE0QZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA148C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775671533;
	bh=iNiX3ZBz76lbOQdvZPGVY1I5sbFB3J26TitcBMC9JWs=;
	h=To:Subject:From:Date:From;
	b=ohvE0QZVK1LnhmLsqFAA29F5D97itOn4Y1eOYoJ5gmEGc/bnN+MSMxSoYB0ABkw1B
	 XBQpWftqm7SqsqaXYWQeua3+psOxFmZoz7/MRDDRl7KQdEouP8QoZ4kxiukrNYLD99
	 zT5LW40B8KKHp3z5OORKpizdkzAlEbUMWqEi0NEHYWuhKXKfgu5TDLgmmunkfDE+rl
	 XyH2jbATvNJ+jcIWWusYSbH0CEns0crvrckmaYPV8N54+jd1dcZY/hmTo/wNlrqcKs
	 vhyM9iszXxFa05MtGIRJcpbON+14xVAJhSbgvwFAtVGzixPdCK7HPddXUQTyBPs0ig
	 AaToV87Tbpvuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1E310F9963
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567153369.5998.1120360553804414018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a6ab3fe2f6e4d44ae691d39ce38998897709f2e5b62c86a4bfc59524655ca42
Date: Wed, 08 Apr 2026 18:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775671533
