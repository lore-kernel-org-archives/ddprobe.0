Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B2937189D
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772654094; cv=none; b=oGAwH/gP01bd5fIXRUhqjLL7+aIxVZSW2mIYhlozbgoIsc2Mwc7m5YoV0FU7lu6v4I/dg4Xa013zUmu7oYxDdNzFneLL4KgG5R9/VMB/ufSfk0ObrkPiSJhOz3hjgPeb6lZFOuTgwx2XUiUMLEb31GKqQub0e0Qghv6kEm4Sq2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772654094; c=relaxed/simple;
	bh=yl7cBqyw9+JzoGKz9KKE6kyIGuCAWhjfqDy5FE8yEew=;
	h=To:Subject:From:Message-Id:Date; b=PKwHhIo2yHZzOpwZZ23WH10nfO0HLItnUS2Cdhqvrp8TzbCvqdxH6yLkpx7u+hTZEOAb1GW8l/cNDGCIs8F44qOoATV3X3Y2n5bDz9bzFTGJZ/ocjldXkur7fK21jeTUyFRZLPN7bmS+texAiZs+BARMNYHG7TgiIqWEcgrOWjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cr+Bdj4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cr+Bdj4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3571C2BC86
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772654093;
	bh=yl7cBqyw9+JzoGKz9KKE6kyIGuCAWhjfqDy5FE8yEew=;
	h=To:Subject:From:Date:From;
	b=cr+Bdj4u8jI7MprVOa2dfH5D+IpGyMw04INfucTfa17cJcfr45EatuRK/B5J1yu3L
	 xLBrukzugaGka0v3yW0e/Q6+R5EYHhcc3WQ1gjecx4lqazDrL/W5EvSr0tN/+iUdPy
	 vE4mnlLzXnLDzFw+L5cswndf70U5zElXopM4v0pEwiRRoUz523REFcZLKIDLkyd+Y6
	 bKM7F7qNthYxaSmiG039AHXFWhupiZAMDv5Fu8QL4zb2ym5wqb1oOdWBZDr4S1dzWA
	 j5ceYPhHdfLb4CAjPuaKME3ud2q/BhInN7M6mlAqinIH3iHj1fp4EY083DaxOdzN0n
	 xgpWJN4zNvGgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B94EFCE37
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177265409359.28675.8253997611664130425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa7b5c2606b5cf9b189b168c7277b3630383f834c7f811045046ef6754e44ee
Date: Wed, 04 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772654093
