Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD9330749E
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759247395; cv=none; b=fOk6jOOkNiZ1RIGIUCIYcoklu84GitilnrEKaFSXZCwzTSwaIFm7NVsUOBceYW6SEf6h6UBSWXVZ7o1MAl2HOgGmWttNGXrIgUbFW1GDQQdfuB8ewj4DfCd/t8+IZyOiLzKsVe5fDJ0EvXH+DKyn7AVAmw4/BrjYQ2nIECxHhyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759247395; c=relaxed/simple;
	bh=I3PbRFH3AexWAa0iNTRf8/AM5ypl4zdg0/Jy5CfpfVc=;
	h=To:Subject:From:Message-Id:Date; b=bcctM7ZnlMg3KyqcL8Q9NF0qLhPFOK0T7XMcxRW0rP7MFPyigAEuOAETNFZZA2ZXsEegf0JBc6swSfWWYXl8qzqyy/7+jlrW1YMW1LclIuzVrjPRHkY4IjBBXl1xcVQyQtVbeTkni6eI8L+fpN57d9hpODf95g6H0DkU6NiPlS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIb4yn0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIb4yn0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A637DC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759247393;
	bh=I3PbRFH3AexWAa0iNTRf8/AM5ypl4zdg0/Jy5CfpfVc=;
	h=To:Subject:From:Date:From;
	b=UIb4yn0yY5PqcfgCOYBImwuZJ81SO8Ci8d23ufXFoipJyUEu4ZEfzNUZT+idFeJvk
	 vqFxhtKRu0OW3PxubB4VETIqbfx+1UzC4rn0WTa1S4TN9i7GESzvtM1kIRMeyr47MV
	 E+AZl0iyRh7NsP5HYl3qGXzeJeWqL266kpsbuY89lx8Fny2sVnKA07zWEN4j5Kbg0V
	 CAYtqOdiBqCm4fcd4s0+JluL3vfISGw+8q4ekLnOfIRXYOWFAOyslf/tZAVpAkYbPS
	 WF/TU50mpL9vD4gJAOqux00cGZfNuEoBN9UGnUuL60A17yQ6RvU67KNYNDTmoGdan7
	 HRSIQOU2xKYsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA57CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924739358.8353.16218697389114807223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0c55a684c68a568cecf4c6aa6a8c82e0ed228bef0e0a39f61261b797835041
Date: Tue, 30 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759247393
