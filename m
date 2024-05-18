Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699634A29
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 08:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716019343; cv=none; b=WncBUPzS3eQATwGo4tmCNcCwLp4RRcPL6PgtAT0pNilTnvM4NPdF/m0M4kKE4Bsth0C/zMsT9PC7ZOQc6ZB0FWPwcm5EeGjK33NX8qOR8DwhcFjHwTAswVEk+LF01bLj/ggY7STpEp8GmtzG+bJt/g/XIyvD8tnkX8nopcwVXJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716019343; c=relaxed/simple;
	bh=oubmw5Lr+8qaOF26DATSpujxkTcU2iEEAjT7fXrZstY=;
	h=To:Subject:From:Message-Id:Date; b=iPuvJ/t/RRgSM5ULltf4lPqxRAtAtCW9jotNUWDfP+X7unpnhqSsxzQ10NVuDTvhDZNnSyxG73uPqlF3WYfg314TPSKQrNIGKxxYDs22qRviJr2gM4NoEREuY+UNFE6hU/ToKNt7yTv9XusQEcfX2EzvGQ0CkoHUIqOUH4oxNww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgHNiMC9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgHNiMC9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D503CC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716019342;
	bh=oubmw5Lr+8qaOF26DATSpujxkTcU2iEEAjT7fXrZstY=;
	h=To:Subject:From:Date:From;
	b=BgHNiMC9Tly4gdmNWWRrFW9lmCoRAln3C0Ou3pI5LCM7auIFIqSEqGIq6h6hh+EQD
	 /VnvQI41L9W8EUxUxEOZvA8yC7FrBuPjjnOWBvyJ73hUuIOmOTZGymukVDv6EBupao
	 Gh0dDUgqEmTYnTEGE8bOqhEXjUdSi61feaH746rLFu+a83FTbeh4LlC00xFJq4ftxQ
	 FlaoubXAVBawGwUd28YnezNE2gugyqUby8Pl9zFyayzkEmO+k50q6sylI97LzIQfDF
	 roNPj8Si1v/U5kHfcQfllrol95flOpQ+rps6ZRPVqSJRz58edJ+RCvjZwhBZUXO3Yc
	 VEIn1MbxFnzCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1768C25B77
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 08:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171601934278.25976.16490278512156282968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76f7eb86eb80203e14f0bec52fc025f003d90f57fd3f838e6d3f38865ccca5a
Date: Sat, 18 May 2024 08:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716019342
