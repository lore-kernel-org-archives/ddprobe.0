Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B144D27E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 01:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733536554; cv=none; b=BnlKzGw7x+9FdHwZ8UrEQHhBxp1VjadiyB0ajBW9TS9ebKT5VCQWDkgo/10ikEskUErpRfa7oXEE54bGJpSmcP2egJC6aAxsFB32D6fbaASpvFJTcK6u4rs6iG7VR+cOlujTT3Wy/GjSjT7qeXRjFDseCMeOIlBELJPppunRnlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733536554; c=relaxed/simple;
	bh=VMyd4EUE9VfpNdTN8AxzyAVod7ga5Jltcz9E86D4IWM=;
	h=To:Subject:From:Message-Id:Date; b=G0MnT1F22jw7VJo0MWTPj75z/cktC9CS2mKn5XP2VSw61Pt0WLA4JJALu5SdNYa+/8ZbopDyV+QndD2oSiuQWQ0HO8X9Kz3HpNPgGkvCpoLO0Oc6OnMazbyJm8PTdLtxhEfg9cas/aM3D4rKallmdY1Y7jDJlCaKMAW1xodsxuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQZCp/Uk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQZCp/Uk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BF8C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733536553;
	bh=VMyd4EUE9VfpNdTN8AxzyAVod7ga5Jltcz9E86D4IWM=;
	h=To:Subject:From:Date:From;
	b=OQZCp/Uk3fklLgVXBdKHcG/hlmL1iXkssNKAqWDktn3iAetri/HIeLjjhCqzLM063
	 3Yrhm+hZhZTNxM3f6XupbAgMknCfVvjLvJ/5D69BMRO3gAs9y8tGmxAi9tzvHCpspw
	 Xr1S/rlGreJ7ptq/P/jsWB1/xmi0Lt4rE5CRmascATaMz5AwccJc78V+D9aK2MwVhs
	 yIVTQuBdh/6zNC1/YmOQj0ieX29yGnJzkOcP+hAzGyUFA7Nl4umRGO8Mb2pOo61xJx
	 MZYNLEBKGqLzrRTtjxRdjiAE7iHS2ebapvkfg+24HQZdrylflmV09LwcYgnoKE1aEp
	 dij3oE9911/ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4069E77173
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173353655376.1447.9646071992501717694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff08970f3b0c56b4d183e2ef2fe3836394d0e671dac078ecfcc10dd8395ce164
Date: Sat, 07 Dec 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733536553
