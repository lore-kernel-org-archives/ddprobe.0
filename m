Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A58C22CBD9
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755817794; cv=none; b=pNwniiUtRj5403ugA4AhvgM6TA45HWa0ETOOVGSaSaP+clqOHHuPg8amMBhZ5/etnhKZsdsdifwHmyAauix7HZ2Ht1QX8v4pzbRUCYMFzunlZSGC1slGOuyThqeB7/LmAAaV3Gxjuq4Xm1iCVrqBK+lmph8tNk9NH6XTD1ZPXbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755817794; c=relaxed/simple;
	bh=934HjWB3zw058BwwOyukrGH86YppbTTZVhMlOeMXUUA=;
	h=To:Subject:From:Message-Id:Date; b=T7DTCFg+DXz5mVmJgxf3o4lAg2pQpRGmdMUyELLWaSqvKl47gDjTdkXw8wBH7qah8WvpKLAmwTgIdINBlmlSMTw+0O+2saUP84Ql5dwekMa3P2KI+/mYdiI4HZyZrReXGxQfweJjYagm7wLFugm+Iglda0t8xo5ebupt2RewVtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nlv/HXwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nlv/HXwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D08C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755817793;
	bh=934HjWB3zw058BwwOyukrGH86YppbTTZVhMlOeMXUUA=;
	h=To:Subject:From:Date:From;
	b=Nlv/HXwMCgB1i4OKcKEsmuwKa9y5XnwvJ8ARYYgStXLivpkhfnKye12Vs+UnKlVRt
	 Dry6fvTm1xjCzcUgF7DCcFT7ecE9bi7smNopIlTWR93SaizipMIh+T+HeJkw15JqlV
	 E2fIEBojaa/eJNQOxXdxUyViaR8/IQcGHPPNUr86IXlTnUApUb1gfIigYgw259N90Z
	 2OP5f9dXpbBpPeEXCqnn/ZiuLzpEMEJ717AFsR6G4ajRpS5iJ/yXFOJlFbOOCtNBbd
	 rmOntpUEonttBMZEWaXbToyO1hShLT8IdNHBOw/+NhM4mLtJIX2Nv5hNDIalcaMrp7
	 dszBXhlFy41SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFD9CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175581779357.18502.12036040034674009655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062ea35270a7be729c12a9e7b2501940d7e68cd8f4bef68f0182b71e392bfaf1
Date: Thu, 21 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755817793
