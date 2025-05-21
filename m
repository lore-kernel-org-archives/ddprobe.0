Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8A728EA64
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747859994; cv=none; b=V75RS3bTwDDp6xUhirpxdB4xNZBpupkA0w64HmP22GI9uH1gQsNpKfF8pajJNNMcTg6p0YRz8XFb+EoykO8Qer+qlSkR/3Paj8Um0wk2+648pEqRktttGBfj1EkCBu5K+0azd7OnZP5+UfxI4M37tJpvgYTrnjWSIjfE8CsYDf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747859994; c=relaxed/simple;
	bh=HdmRob99NB/nazKpT4Wc50tT3JdPxqHea+U3z3whj1o=;
	h=To:Subject:From:Message-Id:Date; b=B+6gcKbPpOhmG9ubvgIRZ+FAW+I+MnSo9QfeMGyGTQnjWcytW18m89ybOSoBrwx3GMlVuguEuvyG/Qqe1bzFR7dH46ub3/g45R/ds0VA5EWwccJgQii/xJmZmqAH6vFRAICWDqxn37p3gx+LAjICBPNBehvyvylbkmDMEHzkwaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtreM948; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtreM948"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47E1C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747859993;
	bh=HdmRob99NB/nazKpT4Wc50tT3JdPxqHea+U3z3whj1o=;
	h=To:Subject:From:Date:From;
	b=VtreM948TGwd4KffRBdiKGuspovD544EMEKGhgDSHHTalFp/9cK/gQc6Rj/+EwFmy
	 sNpJEN4O++jnizNhV4JgQ/nTrxt79iY8P9AFjsKILTzHfnKmprPgEgfag0gT+mOvsZ
	 viCUbe/yqqYRYS1fX3chnpiKPGcrYM6QmZG9E2emQGImINLxWP/JEyj+t5rYzErjiZ
	 cQKMktRklRF/sC0CzgMRU6G6sZgHUv8u32qxCjkHCJC2Jsd76F9hk4ug5VesDg0yXe
	 bnTgqFvpJ+IhnKkwkvdlrOFP7VzHdheMcf3Ud3GqjOlQOtkaisPYpKMmJb0vrJ7gck
	 s7W7PuZh/Zk2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AFCC54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785999357.20038.10870135418562754124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be69a32f87bc85ec229dd23d3b5e434bfd63388926ef4967f0abfef06498531
Date: Wed, 21 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747859993
