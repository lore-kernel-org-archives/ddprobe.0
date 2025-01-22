Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3036D83CC7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737551154; cv=none; b=aqr6C0MhM2hN5Mq4jJ5+0EA0dRIRV/esZ14MdJW6drWA1a7yquW6sgAZwjAVnGerSsvr99GanY0Mk45xPl81NE7NGzBQt0jtWsVQ/Zaqv7o45NDV2oC+hY9FW1+kQVwYR+NXTYXmL+nxSsQ1e+zUSQjBPNFiGx5IPyvcp1Jeg54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737551154; c=relaxed/simple;
	bh=M4OKntosftACOfwjr4euiik8KnTb6fjeDZ+D9noDgao=;
	h=To:Subject:From:Message-Id:Date; b=KZ54CKvrRyVIRVAO2n28jpclX3fuv2vQ33biXgaCFxoBMOG+vYuAoz0kII84ABpkpMCTaPygLLDqmqq/7ezx9tmYk93MowJRqD+AeW4pQw8m7I87+QLvq+Lfai2WkpNea++v0RyNhLTyD2rs51PB3btMEjBIUzbqdkeTIMj9i50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfCmPjFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfCmPjFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D0AC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737551153;
	bh=M4OKntosftACOfwjr4euiik8KnTb6fjeDZ+D9noDgao=;
	h=To:Subject:From:Date:From;
	b=sfCmPjFuTknT0GVGe2m2lS7bSiUTJaLOEp801PypkUKMljySg7w5Zqx5jBU5odYB8
	 Q7ptrHvFWASSnDwUfOhiPn+i3IEqE9tQBLiQc6h0ZO+MmuEDQElmu1HHTbWt5w998Z
	 /YAK/l1pd4P3LOBqjjZijTgYBy08qGIn1SAWiYgz5GLxGEWbYbTIVgN86DHo8TEHbz
	 xRnloiBoNKbVSStdezwg44lU8C0g+8EZwISh8jooVvwpk3yVNTBthJQFNW3QJeSg/q
	 eQWPCwKWB2Sp4L8BbnCiEkFoL1aHtb9wUl+IoJV83XPrCwR3pgUbwOeRBUjObVaWB4
	 iolql2/9OprUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94488C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173755115357.5070.2855724965190844265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157fe57a9d2b67ba2ae680509a061a4037bb67a120f0049e450c2939b6955c2c
Date: Wed, 22 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737551153
