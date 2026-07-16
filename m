Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2496828AB0B
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784191715; cv=none; b=asfU4o5GQSAgqz+9HpcZsuBW92mPGJxfh02x8TpzEOru52G9jYOPdc5e9NrJvYZwbUxqelLe6yw8HzQETy3aXVLoWJnrckkS292oeecmrhl+0mc81NCOHz81flkMtXOeRVUZRwKJugEbyH+xD6UuVh6qPceU7GXEIzqm7SvOtZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784191715; c=relaxed/simple;
	bh=+RjHu7HHNYmh6AekE514WkmtHRltVGh63GvpiLBk5fA=;
	h=To:Subject:From:Message-Id:Date; b=WTuCrPNmfsKWz9R7XCFnusDUloMcAAq9oun5Gvu43/VNk51Bp8NYJkRqVUGgHhIFFpNqDB9PUYx+Lw0+nO12uy4+gmt/ONU/3hFjZfsWCv+Xn1pd49eEyYCd6im1e5/zOb3qGx2jdcNi8tYYFBbEOb0t1tzKw+GZrC8gNWxFhUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esRLIX6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esRLIX6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3FDC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784191713;
	bh=+RjHu7HHNYmh6AekE514WkmtHRltVGh63GvpiLBk5fA=;
	h=To:Subject:From:Date:From;
	b=esRLIX6uQZxQXsSr2KLWCF09ovwQK6CE9ov4/udin02bPToMuPfuLEOZzmcLMdqL7
	 A5IkzxXr3j8Bp115aN6hq15mmM8W/ctfpTF5m9liyuKll2J/iYo59wv8uSC6PdT+dM
	 fiuuYICyCtWPHQ93R9sZOLiIiry51PynpEgmcG6xggmCNJPe+gSd4y0LGMqyxZN2QC
	 Qp1MZ02snzUhcHCi98ooFW1eerlU931eb6hTUcxnFmIl/dTMcfKd8z1ovoqL8f73sg
	 9RI/7dPs+I68mckXGvnZ1/ovKGokRodLA/OxnLmNBXZdv6zKvf5XFpbJszwSNNb4T/
	 2p8N27zWZ37DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC04AC44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178419171369.6004.2240577921152706244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe6848fa50bd31fd6c73837060a8b09c384125eee25cfad0f3f65c68c8e85cca
Date: Thu, 16 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784191713
