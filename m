Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFFA19005E
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762591194; cv=none; b=uJVCdYjjnydJkfDcd+jFGmFGjGb1wm9f5OyhcBVwrUo7I3yRfhtLaOeUzzSsteoHE2uvpctISsZoQ85agJIxyHPPZ+xzqxOPQSFAsvlctJSlL+c4JJRl3RK0/wWzKgMhHS5vpl+IL7K+yd/dfi/d388bA/DAv3U0N+5889vvFNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762591194; c=relaxed/simple;
	bh=ROSw9GxJXQjr6AGOQGaCllwQjLujc4SNIv5UAQM8ur0=;
	h=To:Subject:From:Message-Id:Date; b=su4zPMBaTLceX2nMihkQsmePg4LHoL1xMo4u8Ls13e4qiEGWttAQmw1/YlJ2nH8xSJ/AuA/5owchOdgeIvMKLXKJvGTwlqrT9fvPdxN9FHNbxuVAidoFtU2wTYyaJCmKACUNe42INDHaLXqZU8ub06pMA13O59WFY7d+ngTEpwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oy7SSeGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oy7SSeGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E58C4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762591193;
	bh=ROSw9GxJXQjr6AGOQGaCllwQjLujc4SNIv5UAQM8ur0=;
	h=To:Subject:From:Date:From;
	b=Oy7SSeGogpic3clBqJSpocDCSLjyoExEJnn6JBjJu0VUi1MHDQi77eJ6caVCmaKVp
	 0lULLFNOzqGNC+ZF6NRufbl72LfGU6mBPS0uq8wibbZQbZMe/pqsQUWeYdwtnxyevQ
	 cFPcPsr5Hu63ctrV16UvCNAim+JyAf6ylxTpMOWHS59f04jJ/gB1USVB3ue34BBbXK
	 6oEVmtJvOgz2zozgZm+cfYjLiroW0HtTEjl45Oxpj84yGILM1JkMLhevjeXGUE0YC6
	 QDGiihcE8H5NIXSjNwYVy6DYpF4EE6Fu7qHaWerU+NiLmGzqhdfOQL6UfaOGizULof
	 7k4/+ZsWEH52w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB85ECCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176259119366.19707.6892478883997506839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0add2634f5fa05e0b9fa04cd6c03e6b09716f72e577a317cd139634c71dfffd
Date: Sat, 08 Nov 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762591193
