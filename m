Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E02537E7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719832463; cv=none; b=SAcEHkiDy/V+2QP9EpeL9HV9fct2acvNz4MA44N+MWcg0SMHBwf8kTfejITfNE4iqlfAg6As0tnOeS/FT7TQU/KQZAUd8DfVxfN+K9MR5CyWLuHVaFXjdRKXreVNgkTnQbArD8VLvRGQXGLmbQgAU62xM5odsjHGFHfTa7pyidI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719832463; c=relaxed/simple;
	bh=0Q4kY5zSQzv60dwrH/bHDwesAL5Rp8xsr0aQxo1WTwo=;
	h=To:Subject:From:Message-Id:Date; b=P/kR5PZwSNwat4rJNPZIIyrAzh/XK6Gk4zIUm88rTApcLJjtswNpy+S5CAC9iiMHOI6dV2mC4I7boGhs2+MVGHWUnYevCA5lpW5oBs82t7dY8wQcn/cAITBrDXQ1wQBIlEquhZkuI3WNGKmWWCKgSNQ4jmilfIupg7N1/rDzvnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lP6n3HYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lP6n3HYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B9BDC32786
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719832463;
	bh=0Q4kY5zSQzv60dwrH/bHDwesAL5Rp8xsr0aQxo1WTwo=;
	h=To:Subject:From:Date:From;
	b=lP6n3HYpGlMWvI98kw+tP+VfrByqZsr+vn7zraq+Lsc0rjpO4A8AJRttNXfCev1uL
	 Xea0H4G9TelVwZOKDoHQ0dbLLoKukhe93LfDl/ztd5kPa6/D+GkpWdqanFyROIZy9N
	 ajPNVgtG2qrY9W+GATg4lhQre116M079tQp96A7Ot7DVuyPp0EFP5im0cwHYPs7hu2
	 oFxqVjxrkXQdaUTm4SIvn7jJeSkaGweB2Qg2wFG+IfNcX+Comb6WPN5u9Gvv893qvl
	 YKqF07JKlE1Wihh/22KFmOatPnCmcn2gtvOI6V9mWiFbNcITvM0sozVXIj6KnZ4QNo
	 rGSfUPC73cLBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF816C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983246288.14369.16948411215711542126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd468ff6b5868f109d8a25742cced54cbef1bcf4c5fc2e66ec17cb7bac15ed3e
Date: Mon, 01 Jul 2024 11:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719832462
