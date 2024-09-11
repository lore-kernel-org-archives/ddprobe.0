Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C53F1E4B2
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726094754; cv=none; b=GMi2xSjXjqS78FSyWBoMq9Zn0WBxSfmT2ISywKBmbemiUlezABEQ6eOsYcPE3jcwwuIHbypzceGILWVgPVMWu91QynODtcJe7eDh2Zk+HgIIC2GbAJILEMOP0iJOtBvaLLVKCNm6BOnXrQth5h72b4c0CzZCPPga+r7FqssRaPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726094754; c=relaxed/simple;
	bh=3p5v5TBVm2OeBVJB7DSUS9jpV7oyuFztaeFgha60dQw=;
	h=To:Subject:From:Message-Id:Date; b=mn6cm6vSo/lq3YE3WPUKrb65rweg8VPHmIKK+MkfEgd6K7bZyPAFs/S9qyyrkP+90al1/0ebSROR3Xf69ESf9rEMxA1uDeHYfq3paeTLRb4bJwDhoZR5xX/p4uBJDmPRK/SwfkWy1YivMmZiFerNO+K3yWDSV6NsDHb/kWA2g2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vqh7kwck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vqh7kwck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFBAC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726094753;
	bh=3p5v5TBVm2OeBVJB7DSUS9jpV7oyuFztaeFgha60dQw=;
	h=To:Subject:From:Date:From;
	b=Vqh7kwckr/Z92mvJ5Pr5ecBbbCjiNmradRVYD1ynDIep0KOQocV5iM9E4M/b76phn
	 0x7v3bLV02pezSa64jeBhQwAtpXgmA/1A+W+gUFA8AqR88g1/G02kz3GziGHs2fPuT
	 7EBGOMM/mjaMuiBSNxjnAvIipfyKEvPoviSBIgrESVP3fy/1qxJiC0j9PbyP9YOQnN
	 9Y3C+bV5Bu4UydLCUop6W89L7tvtsleIQLlCG/+QIU+qU2h4wW4byk2vI9cZq9PFDT
	 6U4fj9IJFgsbsLMK0fEbJcwIPI2uJ6C5UYZHPDuVPw8kcr3ZMKNgqHkmOOPN6OyTQ9
	 +jrBXuhURgXFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B9EEE57DB
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172609475360.17739.14325151754802779347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14811b077d63d5c31273a4288e726bfe6f6b5e288d6b7a27c9adf9128afd403a
Date: Wed, 11 Sep 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726094753
