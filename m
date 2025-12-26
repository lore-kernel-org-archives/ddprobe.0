Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE50824BD
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766724834; cv=none; b=ipRt7N+QBZcL/O43OSL2u0jRjigGmTH4Zwh1ZaqoeKuCnpOr/ybHvo2NTCmqQPv1P0vJ0zGSijzIuKtV1tz1tzYctJAWcojWyg33+Y7Db9YbToL/NiImL/jKdLYJaVY6ZfalyUvEOC+2MxErMPku+cLeF/I9KYjYUYrbJkkVAbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766724834; c=relaxed/simple;
	bh=Htz8waDKaj/bv92iahkKI7xinLn2z74ev9RH+STz09U=;
	h=To:Subject:From:Message-Id:Date; b=V0q3Be74JfOlNgR9bV62vsskpLEs2n6/dwtdx91vr7ZlLKl6q4EasMVR73aUijsxkDPI+kpXaArf6iQ+ARdEXjBNArblkOBh9oqSi2nEiGDS5p8SsR/xty0MyqmgVPYKR6QF+sjZ2SRumQztHQlKbaF6rdAOeMZR+oAekAAWWGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFZkBLo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFZkBLo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BF7C113D0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766724833;
	bh=Htz8waDKaj/bv92iahkKI7xinLn2z74ev9RH+STz09U=;
	h=To:Subject:From:Date:From;
	b=IFZkBLo3KdWq+8yZoZoVnGmO/Hi1FkIxqadGXYikAM+A74aSrQagWf+S9JEG3WAbz
	 93rK9jZCLmkXng1FgULldnxjBnohI6flyZD00dSu/qLXslYPv6k38j7bfGztcIlKIO
	 8yfLsLStIE0SUDvj03XSDJkKEk4aRL0xUcObZ5LY5ZS9bc9tPv/fyScAQB/4FryfN3
	 PzZ2Of733/2aoTZJS8Ao4WhtLRCjYAsxAItQA4y/mxDdA/Z2/cD2Dakf7WMWsOvwD9
	 IhCpad4FizFnNVrSC1lqwfxrlIeaxJOvMtd5vn7zCn2107NSmHiMS5A3Q6U3WI0dp3
	 aqNwtbrln1BcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE0AE8FDA0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176672483361.24167.4252209369245717098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c160c86c0c4d1d0a5bac7011832c60120644399230d3a6393ea31e951c4a17
Date: Fri, 26 Dec 2025 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766724833
