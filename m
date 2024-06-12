Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B21E25762
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 20:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718222903; cv=none; b=ZSZAlAS+nOH3T1AD9dkVuNhNIva5lEDEMXvWNxp8v6eBvpZdMZlKN8aDrkPv+X/xrK3IvI4KtBjkyAMBD1x/1d8aSfUBJAlf2p2yP15Rt8T9+f4Vi+OV9mke26UyjowpcddwgQA04U5yneYkpSY7RDbscM2smKGFicO/m6uF47E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718222903; c=relaxed/simple;
	bh=fAvdB6qWjmtYtiXFqbVNPqBjhnSxUF31qXbkvUHh4Yg=;
	h=To:Subject:From:Message-Id:Date; b=KnUUMP4LN6wfbto9a9wZU6WggF8eN1vVDqBBwrySE62QTKAp0MXA8ZLus6KV80QwQdx8qnkG8UhBzUGl6NTkkttRrMvINytGTg13U+b/IloEWLzFphVHcysUocNXqttTYZb6qG8IJEcHSkVJOLHxF0doMsJvqPjl3BWSM8MV2Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSooSfIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSooSfIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5C3C32789
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 20:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718222902;
	bh=fAvdB6qWjmtYtiXFqbVNPqBjhnSxUF31qXbkvUHh4Yg=;
	h=To:Subject:From:Date:From;
	b=mSooSfIYyk7onyA4vpeNzvalsdac2TeqtBwUst4qj8EauOyzZTHWS5C/LXYgiA/3q
	 HDVUytOVP2X1fl1WpZJ/9AJxqZkgTO2kACRZaXZLEUAr06f3aRqvekyBZYO+OTZ0Ou
	 ujy3Zsh+nVLkqIfkyAj4NWu0rT7U9DoYcug0LLj9Wi5N/nIrvSXsKbTbwqST+r79gp
	 sGgtlADsewguhbjMNTjV8rvCOs5f2XNT2ogwiMDMUKjBAu2Hb1yu+0fCtPJGWrztdw
	 Wu0QM1Z7Do58YleE8Rj5aaKBn/tmxnm1/hDuSgwkJWwOXLNw4wVaWLSK3tRFs+Ob1P
	 MkzDjf+bo3Dag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE009C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 20:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171822290280.25937.17077991711733111768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f1f215d87fd4cd4aedef3bb347a2e84491b7eeb1a1189761af29395756f355
Date: Wed, 12 Jun 2024 20:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718222902
