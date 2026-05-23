Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295F43195FA
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779563554; cv=none; b=XFPoVuOqD5XW49swht9+fSxtBs57HYExswwoUwaZEfQ8yjSD/CpjFyZtpMFITd5KUb+evDR3s67jjvcMKk3r5fWBcNck0lKDYLdkvqTauCUHePrqbBvYjInQkW9298GwFOkjht0XdKcPznEXF8/kePqeiFR2ziD4XEdgYdRyh7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779563554; c=relaxed/simple;
	bh=HngqQ2tv3i4ZEiizj8rHZss25ny9qKXK2BZNLSm1/Os=;
	h=To:Subject:From:Message-Id:Date; b=TPwUOb7aGefhoSXATpAHQqdsTJQOdqPnzJfhVD+nFYeIAX7DJEMLqCKWpz96eLJs0qgXl1dZveDJXTqVed/v+ccV8sMK6hj4vnZox+4ViI7nRfnj3l2ufwGfRgeWiJaI4xkbZO/wi13YZA3XN4RqLdM90zXUAQsI554daTUBlJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aP1LrF/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aP1LrF/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF0FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779563553;
	bh=HngqQ2tv3i4ZEiizj8rHZss25ny9qKXK2BZNLSm1/Os=;
	h=To:Subject:From:Date:From;
	b=aP1LrF/8apS5ng0/vtBVhEcf8mgyf266qFS2hdynX07OYIE2YkYTWnwdBrejAvA6k
	 idz5BAFTmQ/9kNdOBGqjZAdqkHeYoL32wKSHbPxGox+vp0UkjSKOIR574lxzBMUmLl
	 A3+wmYlJe+W36nPfGAdieZ3CupWoFK5vVGXNHuoDdeBhReeOV1tk2UfXwEFpz/n0V5
	 rGlNWsg0pafheFM4J1499Tt6/QNNtvGaLmQCjBESGrsktjr93eVdCTO/+k0i+wR/Tv
	 4UeCZ+S6TBUxgFYWmmWJNJhhiXg0HBBEMMRq3M0Hv4o78TNmp6ouLYSqGdNByiKeNU
	 Erv7rZ6YLQYUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8347CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177956355368.30956.13355256584421378514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc913641d459ebe8f9c8644dbd4054a41d369d46b8e90d853555f46ff6c8e0a1
Date: Sat, 23 May 2026 19:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779563553
