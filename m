Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAE3481B6
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742892595; cv=none; b=IJe1Ylkc4/obD3JYjQE+hnbPcPbUE8w90lLIZ9rf+on62Erm5ge42SGDXPrz6/XH5vkZ+iirifFhi8wOosEtmkPEcvDAkkWzNhyFhYIIrW1bwl6XZj/MqTnAVbEIdiKrFfhKimVCjk8V+EhaSGD/YeCmZIwpFFiMjTiklR4Rwwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742892595; c=relaxed/simple;
	bh=0UvBkdjco9A6MTtsbLdJRQS+DY4BQA0wqDFCKBdCJvo=;
	h=To:Subject:From:Message-Id:Date; b=OEOBbJIx72fInc7QYzML6oybzlBuX2a1YYCwX6BGJUcnqi7iNW6tkmZ8ImXzgSaDgf3LZHFg8ny70ySZtC415hxejkr6IgUowN/lZZKnzAo4mvqi571dBAFKpbOVT3vqS85xYPHUOsz3o5+6i21IMP50QkzwNdugUen60kFFkX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCJM5lCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCJM5lCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18AFC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742892593;
	bh=0UvBkdjco9A6MTtsbLdJRQS+DY4BQA0wqDFCKBdCJvo=;
	h=To:Subject:From:Date:From;
	b=lCJM5lCxLWOnKFDaRhjIgbbLD7gc4VJ2+3nyfSo7FPCiXnFSXfkj9Mrbrl1C1UrDL
	 gOUWOwVtJFFF4Otut0/OTGJaALSglUUNUjl2rGYPVB8+BpQIeiqNOXExKMENqKLNsH
	 F/Hcejq9QNi0AnNZmQffAMe4ziLn64H1SGqJ4JVbnTPEOZN34f39gdHISM041U+MOU
	 Pgx2Itb1e7Mqhhld5PbW5D/lXA6jBkmPwhRg4Z6EHGDcpJTfxjaMOeGj65Vn+8pXOX
	 ausf0M+AbUStOZCT8l5Nz+Y5DJYTa/3NiwZ2dU3ob+cISJKe5FZZPFKHJGIo+bxBA9
	 sH3bWLfGKBlwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE6C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174289259359.1135.2793474438739995628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781b0bba99dece978618279d1202b90e2d28e987548035f81b3c35877dc37e6d
Date: Tue, 25 Mar 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742892593
