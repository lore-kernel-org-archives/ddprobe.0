Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2A6186284
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755473394; cv=none; b=vFSGiOLobc3CZOktUqtFuR7xey8YjQWhxBR5rgMyuxh+OAwWV99GYO9tPduWYRnMIhoErbRef7aCOg7qV9SGF4iFeOuDO5scQfdIQDEWDQlMtnbM7+7ZEGwwoMMSasFfF2GBENo0aPXd3TXNKFysuKy80I6+2RXGG/TmcIhwzVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755473394; c=relaxed/simple;
	bh=i+isQGfSctyk34Nfk2YWPNDdRyC6+5O06KZhJC58WQE=;
	h=To:Subject:From:Message-Id:Date; b=d18SUyIOraBWu+RGXqdGWeWHBlQF88Xo6jlVSqusXPukbpGBGzDM48nySGLaatv2+thbYiCtDFB28BdwbO44MFrM0SH1gsYvQDesK5Q4JPM61Uw8NYV5WfteeSRXlW/WlVHtRI+3UVUIB1abDtf7HTGLlJ6snVKDML7azUAeQwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBUrTFNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBUrTFNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53E3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755473393;
	bh=i+isQGfSctyk34Nfk2YWPNDdRyC6+5O06KZhJC58WQE=;
	h=To:Subject:From:Date:From;
	b=lBUrTFNW24ts/weOXhXAuTYZl/7UEbXTDmIMPN//0w7Ib27PzA1vhDhAJ5J5QZK7t
	 gRVfu/9vu5g18ZJkPA7e10xom9sZe6dnOxfOhr92Gh5CkqrNeXGvAyuU+V1cHKQ11z
	 eIJSyi8mIIMjmmVzdQb8EN3NmRE/Z32uAMcThLqnOPfkcW5U52gk9DShvRnIJnmB9p
	 j+IvFS+DbpCEeemo8AOL7Ad+HJunP8W5N+JI80V8YbecDwOcBm5Zr4wBHjUJ6ncKJY
	 OyDVIdeFQWN8dQ683C9on9hCt3o9z37W/bns20vii7L7CI8Pyl3h98wa38hreRfCCv
	 ZapWU1Kpv6JoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9459ACA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547339357.3801.15656861064637785386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17703fbda7e85eac8670b6bd6b18b172be0508d9e37ee14805597c1eb108f941
Date: Sun, 17 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755473393
