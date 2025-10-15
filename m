Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A1F2FB979
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760543994; cv=none; b=Yn/zgD722PsXuQKjYWBhHKMoZGQAYHmg2n+3unuQoKt/1JTMEHHl3oXPwAeofQya0mkc6iB5tzgfAR17b1BsHNpGXzIGvX6PnlB4VT5CwwQjDMGtCzuEnG1KwL961EspAOoC4TrmxBXF3Qj4Avpv46vUyxBC0wbaO4QDt56wGa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760543994; c=relaxed/simple;
	bh=3tmR14cel654xnymn3zcMJ9BQrARvH4/OX/97N/H5WI=;
	h=To:Subject:From:Message-Id:Date; b=m2X+hbibRZpN+GVltRDApIzCEajJBI+8VV9pnFDonK0wJPLJDKY/clZuRv5YPYiUOXo4SssaUR1mWSIjTGecLy5RmILMhX3MNcnhiPXaCYuP3EIQvkK2SO0He/PrSWs9tHrqbbyvRmXUduyzMAEnNHwlfItxwGcDTkNhKc77d44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQrF2HI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQrF2HI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D46C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760543993;
	bh=3tmR14cel654xnymn3zcMJ9BQrARvH4/OX/97N/H5WI=;
	h=To:Subject:From:Date:From;
	b=PQrF2HI9acGWn2tAmeCMomAJldjhp9tJo9aF2J6mAzeP74YGAMbrytjKMp/LvrFfi
	 S2ZvmMCS/f68/kDHEdSeSlWLkWMjzZijKEZMpM90qYQcnNNT0RveS1Yt5THEhEUjj8
	 9lhGgjK+D2+hATZOHqv0JszEDrSxDk3vifF5uwDxwUPq21SjucVprURju34lLLYPDN
	 fgWgYavEEnPzohudzqChz8qcCX25q4q5iXbNL0C59YyWJUvJw+EBJwANjNz5zR/C+N
	 FBw9pJBG3HxA7afLGkY/NYdzSvziW+pUSKMZfiPvms810IJFEXYvGDvoAd5Oiky/09
	 jLBsQ9BbVIy5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E4CCCD194
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054399359.5776.10016780794170411318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d620c5006bb988634ce642c1f78fbb2a04db4faa30a736e15d2d748d643687e2
Date: Wed, 15 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760543993
