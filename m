Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A0DFBF0
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748618396; cv=none; b=aEMIbsp/4lIfxY//De6Iqqmn+7vFYH7JaDCko2gMx0k649bDstkRECjDYs+rZbRmxJb2sB3TDAPXB5n6xPziSNvcTU7kVwYtKKZdLpDJfwkpp+Ps/1Jw+OOw0iGlScBxzjETb1J8FQHzJRFNj6r6sVvwwAi1w6BCMThUHKwFbEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748618396; c=relaxed/simple;
	bh=frMj+gePuwOmhyLT3cfgdM7b8GBCI6b+53eIJLsQFeU=;
	h=To:Subject:From:Message-Id:Date; b=EOZYhWscE2v6UGQuX+7JiWA0q47ZoK7c5wUcSrWv7Nmy9PIBr/VQ6DPHDtYiJ6j5s2tPRG/bQte/CBsrBEvpbdWfdKJZNKcJEYTvsAkk6CRXwU4bTUbzKpL9jQYdJ5aMTiz5AZh4J11qTkOuQu/dfwFJDXVxHEQkoneO2OQ84rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GH6Yj5h6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GH6Yj5h6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9A0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748618393;
	bh=frMj+gePuwOmhyLT3cfgdM7b8GBCI6b+53eIJLsQFeU=;
	h=To:Subject:From:Date:From;
	b=GH6Yj5h6ED+VCQwoXTRpGwxtg7sqbFRQGzzsSOHLYprjFqZdEumNVE0BWEpuV4fNa
	 8XEuqGZfyLryO+0KjnYNiWMkSLIqERbFKOF105RIms+p+2zgwJoFk3nHGyJQ/yoQBI
	 YxfHDpuwdeddGzBFkjZcDSbWUp/03HlhPvQT40cRuLCFTzTJVHBETzN+toE1j8TghB
	 yrZ5K7MMCEH++AywvUgd18Hz4i03aSY5F+BxUIJM+KEqJTGHpnb/Gsb+P6ny5AbptU
	 p4khMKd/WG2AXp1Yb4w8/ZOh/rRPAVgw9hY8qPkSDisyc0ogfud8jC1rW5saSLXN10
	 Ez8EpnUiwq82w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F278C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174861839357.19270.12696297326595495828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c7428b0e1920ab5c52224a4eab59bec11a8f8adf736ead309100de60c093c3
Date: Fri, 30 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748618393
