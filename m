Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4134C2BD19
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728962754; cv=none; b=pcoBKr4fuOCvYVHF3JZKqG3hS0A7degm5aCJFOTd4r/a6j1fIe6XgIAooP5XRWQmfcDqbNHPciK8wb8ZrRZ9cKHEFZ1QB51fcIb8a+tvwyWsKIEuAo9Bc6yKiTV3jO+gcUTMIZn7K2pf8wmBS2vOTxsZj3lpYIXncaeU7vd3yfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728962754; c=relaxed/simple;
	bh=MCikpITZjls4SAKVhp65JZvZZmIKGUnTlwLQiCFiHu8=;
	h=To:Subject:From:Message-Id:Date; b=VAPvYSLxGOWfVDJSZNM3vAfwpeNf47yXpsP56OHIPPxhdkHUkAOUEHQw0X+WPU9XCna2/QoyInv6aoqriXtEtMISSAO4d6mky99GIcX3lVV34CJBtBBAOR01d/5xB3MOE8aEnnY5JL0296GVwmu6BCfJ6gbZ1Sq50Of3tHnYyjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6sscOvb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6sscOvb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25A7C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728962753;
	bh=MCikpITZjls4SAKVhp65JZvZZmIKGUnTlwLQiCFiHu8=;
	h=To:Subject:From:Date:From;
	b=r6sscOvbQY0zC5+BSyLTolJtUPxjNDajquomrlxwN13zrAy3MUo2pJ2lkcPgEKZs+
	 gK7L0FH7+lAuYd40SKIjWCJOi1OIwyzDhJ6baBzapAeRGCKj6FTWaqPBqZimOwj3fS
	 kBYSpLRp9YMAAsbab7cxJaBtZkwARSFi3dCP1vOmaMNtEWP4UOI8H1hfNR1SUGFr+8
	 nz5aJvA9VXL9m9kR7f2aBbF2tK6giFKIqE9DiWcztlw4oxhlAeEtLmevCpwkRe6/P6
	 YpWl678l1jaRULyMipnfaFjCePpCEkWQGDSx3Oo3BVdyREaVwQKyCIMUCjR6h7bzQ5
	 cqLjdEq+zKREw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04A3D1A443
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172896275361.31485.4372609007764291526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e884738a99cb7cd9b34c62136502a22229c7841a2bf75cdf76e599e52d6cda
Date: Tue, 15 Oct 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728962753
