Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231FF35977
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763852514; cv=none; b=Yv6BD/HLEUXldSGtmFG7CsG4oe0RY1XaP4sK4FBYCA7r8xO8wNtJ/CatChLBuPyEGjq2vMJ4uPskHNYNjo8gZeyir5yMByRMMqqt17bD5MT40r12bEg/d4ej2NxbyKA6brOe5fyuHVWuy0vlS2lELQsyTan98OS5S8VsXAjjydE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763852514; c=relaxed/simple;
	bh=IMDl/xt96coC5msidkOsDK2f8ZCVJzG79UHuTLpSlvo=;
	h=To:Subject:From:Message-Id:Date; b=XUz7x0lANOA7vcjsaMZFhMrH9TEbPAGGVQUfyJLv//qNqf8ni0OKMcJC3rIY6nA958Ozs8YlwSJQ6Pj/uMvqbujEx1Y/FBdCgLUx6bM+Z+Wb4cWZMVI5hO05ul5Y6WywZDznMMAcNOgcKdllfAL4Y8tnJW6H/JSVA8upaSEs6Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgFiVvzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgFiVvzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A509AC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763852513;
	bh=IMDl/xt96coC5msidkOsDK2f8ZCVJzG79UHuTLpSlvo=;
	h=To:Subject:From:Date:From;
	b=fgFiVvzzmvnkga2VwK+lzjtTA9Djgk6f0yzypglb4zqqoF2CCsasF1I3fVZozbZM1
	 +BN8gPqz2GlaURB93M+bQBa9NrCEF0NKibJmwz2Xj0dpVrgtaVziNcTUDBsXMWJAgP
	 LkxICKR0A4ur4LC0OH7xvIzJqM7fXxScHwiufQxzhzv4fE2Fxs/G9MLmyV266g3qIB
	 oFfUnnpajs2x/kO4vbbYSLLQW+ceFhuUzvNzSXMB+wPw2RCqbkICVn+asWqBBerZya
	 MRlE1PUL1xQdoGwtEQrzqprGsX9sgO6vfSHXTTio4O4sEwvP0rSvV55tPmXEmg6GrS
	 lkwmPfuFQeL6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91349CFC53F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385251358.30608.14921300147705447744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18daf8de6f5ad8246b3229f48821bc8d4db246cded6e97efca6696a9919787c6
Date: Sat, 22 Nov 2025 23:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763852513
