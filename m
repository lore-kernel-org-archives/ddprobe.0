Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453023176F3
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755279594; cv=none; b=WqWiqo4U9ErTtktngzyCZxgu9fK8O6vsGHqjzEmbKwVpdA0Xu+XCC3U+i1g7dR+2TL1sPE8KvgUBuzBpEy9q/JJEmXRBAy3F3LCIW5yGL7py2RWRBWKTCFf87gpPjVpvl514ZLKv7xCaZ0Z8Yl3YW5+k+SUvpZQgJ/oip0ADe0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755279594; c=relaxed/simple;
	bh=gVXoyzkYRvfPufv8siuyish/4pWWFKrWA20UMkqXItc=;
	h=To:Subject:From:Message-Id:Date; b=gC1/bcjW+y0ya2Se7WtSSStjutKuIQ0uyuJXFeGEQf7noYBABPdOEtggySUWqYElWW8MmhU9jJldcnTS2+t5AShJqLTQKXI8m7wtZ5nK7W0jQAsSi7RA2R2HFEmOgn12V0XdARNNrqG9W55gTbL+OSca4iH7/WxcY8RL0KTY390=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2INRsdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2INRsdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAF5C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755279593;
	bh=gVXoyzkYRvfPufv8siuyish/4pWWFKrWA20UMkqXItc=;
	h=To:Subject:From:Date:From;
	b=J2INRsdYp+e1FWr1sKmb1UB3BuSECeGeyGUn0UOt02fHL1V3Mn9J8m0v0DqFoAXri
	 x73MU3oVfUq4ZcZE9el1atlJptSUaTuslSeStprJTHbFLg3PtNY8GYHek9hYHw2j70
	 mhkdlB13mXWOP4D3YRvM7HexoJyVt3HH4mzO6Hx1DClEAOjtk+5z5xFtJDetv0I/G+
	 EZhajOKLUEdLsKadjK2RBXa1ipMyP8Sg+rni+n135CHr6reqW7ZtVs+5LWa+mXRdvE
	 SFCcLad3xuhgVdhdTOKvaMNc7/nUbsBprP0wcv8VSeYIvz+XmxM8i2XccMKlB5C0bd
	 /gaCnVucxMYaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F167CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175527959357.28346.7036717506755197446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b80693e67d7529046c2bece2538ef2960cbb3b51fef7a97d57be3b0263d84d
Date: Fri, 15 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755279593
