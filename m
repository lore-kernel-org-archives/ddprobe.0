Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3215A19E968
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785730834; cv=none; b=Y5X5zZgl/HxureN9B+PK85Q53OX8jofGILC79T7euG5KidjHojicxvFYeFTfMye5sDpbGAKC//MfQ3SuW4+6y+UsSXiFhffPf0oVB1Csvhd0a0iAJ8EScIVXfYhTn0z45DP4cDBqObA/xtyySBbw+enz3/cOleCbB3dMCfPxYIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785730834; c=relaxed/simple;
	bh=vh5FHb4NOOyEC7TKFNP5wnAego008wRcslzrTM0u+PE=;
	h=To:Subject:From:Message-Id:Date; b=N35kezr743zGmcLSK4o3BSGNS+dUXvj1sjSyWJnPdYSJckWNpNn/V27yfVv0jJ6S0qbq4zXhrMxIc14xbMeFKb19PzyUrZ2f2vj4u42n+k9nxPbWYO1cLAlcVt7qxlICjqLe1o5yxDXpx92T8eXNbJ1Uvr+6N7+a/QrEiJ7lvn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgE4KlOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgE4KlOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A39C2BCF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785730833;
	bh=vh5FHb4NOOyEC7TKFNP5wnAego008wRcslzrTM0u+PE=;
	h=To:Subject:From:Date:From;
	b=bgE4KlOD1V3rtFzu+fDFu87PjrBghr3P1TjOfV/mse74/eO01CyDHS1xT4K8veMOw
	 6Ql0mYfFPS+TrUQH0G+CH4M1+2YgKq/5hgj1uoLXfwsfVjhZSN+LB9Z5KkuHyYThWG
	 G4wQQo83iNMHXJsTkJQ0YdXkXF8KjhSZM1FwwIckqs2xemQlgz6yokRonPrWq4XUHv
	 84R5a2ROy7ucSGBB01EcSL9O9xrbchVo45faeoew9UZ/V1+HZ9e4C65sb6BnFJqjhv
	 ge0CH1hMrgdWFLt6RbBvDsAitJsuph9u/OhjoAG67077qVToYiZBJwyCbRJK09WWSp
	 PHGrbvpZhrcJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A65C55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573083371.29138.17179430896148945013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e80dab813c8e37dcce3a2f201c8871e819576378b4bc981aa6fb2d30a4f668c7
Date: Mon, 03 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785730833
