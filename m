Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC9B3115A2
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788684634; cv=none; b=IDdY55BaeLMSVzoRbdv3ttHOeOueAKbkkksRGSOJQEahk3ZdofLfvHrvenYL8+1KIOkz9sWKef3ijUBb8Cm8vl3WBSvzywNDKIHR03dOQlnbgEtWS9GwnbWfVAZC+EoUz6XoqztzDrsBfuet4XGbEUD/St1bP8gp5F0UI5n384c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788684634; c=relaxed/simple;
	bh=sDVY7wOYw78Jkbs6SWDuZibiaLIjp6oUvvGViEbHfoA=;
	h=To:Subject:From:Message-Id:Date; b=isZF3EwlmhXHP36fo8vCabk8/zVn8CIGzYeM2XQHkojS0XLHhZ9ZW6lC/x6msbVxbg+JGV6OVKZ524PDcgTaFuIu+6vOVWXaMngckfh0Ebnm3NEwZInA5mJuNtj7/c9cElwjKIWWA5eB8Xrmd3DcthaFPUy9TpP0TUPg+QIxxAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7J4V35A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7J4V35A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48E4C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788684633;
	bh=sDVY7wOYw78Jkbs6SWDuZibiaLIjp6oUvvGViEbHfoA=;
	h=To:Subject:From:Date:From;
	b=t7J4V35A3rFbwGOEBRBiROkt8XFg5NB+TILIJ2/aWITX0KFU8LU6ewrFtnRnyTKs8
	 UHfd3+bsefCteAmAA7tR8j9sh4i3Xky6qTenAOafrLa1pmi3Dd4aaVH6QDNtp581XC
	 7BFuMDRw2HGvjxqdI42SD2IAZG65FLs6CEI5FergHg96HNARJNku3ShK2S2MCcI0yS
	 UZ4GzzQb2ywxNFj930wGC6JRS4bSxOb9jNW8LgA/w2Vd/fq/MFHkkdvDZVP9y5DL6t
	 DUfJjl5P/DwxOtg+lKBcoq8IX8zUueHkGJEGDKQxaoe2CPRDiMcwfDtt153UcuXHdR
	 IbGniyV5n+Png==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B247DC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178868463369.470.4614248371266342355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91841d94ac838d110aba774d05c0e5e824d6c14f403b4325c7b8f8809dd84bae
Date: Sun, 06 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788684633
