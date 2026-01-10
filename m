Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335817FBA2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768055034; cv=none; b=GuXxDGLayBx0CPDwPW+sy0kEZRKw4+ggZWvkeCLY/i+MtyRn7g5gnO60M+mDdvQl9DhkoiyhvPJWCwvlluxSc++dARWjrG77L2jwgu0DT0JYceMW/mxlAFLj4Z2bBHArjDO/jOeNhcbsQaOK4Gz6kjXPznPo69uijSv2ogZObwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768055034; c=relaxed/simple;
	bh=azn5D9pPMIp8Zudyob6j6Tl+jiVX4cDUsaMsX7y8wao=;
	h=To:Subject:From:Message-Id:Date; b=u95jbXUv/JkqGflwFZZAsCHKI1sH3O0Aodjy6AOS9q6i3EmWOzfCwa7Quj+T7oe4JPUQxf4BvSvr5dEq1abSN5e6zwBfLEjccQtODVFHxlP4hgOf5ZKGmaOhYax+OryZ5IyNLxeW41W/OYoyG8ym0IYrWKc4h4CBps7AYRt4e3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeNjUo7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeNjUo7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9026C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768055033;
	bh=azn5D9pPMIp8Zudyob6j6Tl+jiVX4cDUsaMsX7y8wao=;
	h=To:Subject:From:Date:From;
	b=YeNjUo7dbPqMFSzpqBpzqkq82B2uVKOjKMI+VFQ8spXm6umTBRwkJsGF/aIGDCHUE
	 k1SDTrJZNpltbDjRfS3oSq622Or84AO8+MVXfx36sB2jmKny6rXqVLwP+b8AM249Jd
	 yvVh014ktyzggSnZUiCToetc5ZG51jcvNdNEjxQX6AIwcDE9MrsHYQdQxXS34T/aO/
	 0H4YKUT6va4vkU/oJ1hItgGe3KsRJSxL/M9v4F7OkBeetKdXmBMMj57xr0lidyAR+K
	 yKNOaMsF9jSCOJSluELjbPxni5Bz7jAhS2VT/LoaYzwvGw7cvu/VYWKOzSdoPRiCQi
	 6rWTbHRDVFhNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EB5D277E7
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805503358.16213.12679908941371137453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8037db548bb0b17601caabc6c02996bdcb12b11fd5505c668ef0c97491730003
Date: Sat, 10 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768055033
