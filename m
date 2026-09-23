Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B26314457A9
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790145034; cv=none; b=qnIvbagBYGOdnuzM/dJfmOYfYVFw3/luN21mtHbxQ4+x2iaHT81KNzaweEHIgC4t2lphJAthzXliAKhNmt+F+wyYxanCviqEHbgT+Ir8yIr/wcaT4hcxGMQpPKOToQOccZS/tI3AP6D8+NNI5H7So6NxaU8mZQYRibSEXjTYhlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790145034; c=relaxed/simple;
	bh=VaSKTWcKM0QQ1k2OE6x98Y4XSTUOJSfcEOjxdQOTvXA=;
	h=To:Subject:From:Message-Id:Date; b=k1HgKPLuZg2O1wmsOFHY0ul7wv0RC3Wk1Nens/DGP8jE2rAZru/aEkBoQynvhdYp8l8vekqo7WRQfqSZvNnI/pGHF9fXa3Lb949gT0Sm/IgcDGEXc9iPxr+KLUsre5pxFfkCxU2fJbE77YP80PQ3nqfpagamIiXGKBQxytTXCJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMzrNncQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMzrNncQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB26BC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790145034;
	bh=VaSKTWcKM0QQ1k2OE6x98Y4XSTUOJSfcEOjxdQOTvXA=;
	h=To:Subject:From:Date:From;
	b=MMzrNncQFlRVCgXV40kFO7BofTT9yaqxs54ZwrzNTBqtoxm5eiUSaweqMndGzli09
	 Vdb/Hhz+X5xPRvv9sCUm0WVbHJKju4zvIB41N3qRBEjh+tYz6WQ2a11tfhc247dSGo
	 /TYDXb0Q0iKZNfq12ApTNRJ8Kno2RlWTvTzwqbAkIlJB8NQJZGBswsYcmdVFRlkhQ/
	 +SFnGNcmDZ2YbhoDndIjaq8NgiL8tev80hyECpnUxKtXCM/9sxNYUs31MD0I/DCKQo
	 K30pmDduug9zOT0dBjt+/G2IxzSXuYMCl1py9ZoT58KFbFgvyHzIYF7RscnFjMic1b
	 lPVL9hTq94aXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB284C98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014503381.7598.5511259990679193592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21aa5778e5135759a89c64f27ea77414b0d433f01a95932b09fb73330718d309
Date: Wed, 23 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790145033
