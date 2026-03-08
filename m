Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2984323EA85
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772949294; cv=none; b=FUwYmhNCkGKLQLMH6Hkv288xR0K9OB3tdLpCQWxTQ1AkUD1tdR9IAa7seKqxCfx6rS2Lswh9lD7h4Bf1U1WHsEl4zuksr5Y9uB3cqeCG4/+33KSHInhh5PDXcDdWl9GoyLOpd5s6B5xJUrRCid3D0wmayVp4eWoPXn03aDPJVbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772949294; c=relaxed/simple;
	bh=DPVvYjPhdyzGcrTNeakf82/N7lVOWge5Yy30tP+u8B4=;
	h=To:Subject:From:Message-Id:Date; b=chrtVgY+hteAFr4JFu/YwmGgW9LDgYR2CeV4ryKMYl2Ht2i/0SC2hDvHFW6ZGb80ErcNH8J4e4vw0RkVPJ+wGxruEnFFDeKK6M5wOBCNwWLA/N5jdDwbr4vTg9jb4+ydmfe3sb35jFbh9JvJsVN13jzUQp2CNwOB2OvnLq+njtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQ8vYuz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQ8vYuz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BDEC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772949293;
	bh=DPVvYjPhdyzGcrTNeakf82/N7lVOWge5Yy30tP+u8B4=;
	h=To:Subject:From:Date:From;
	b=EQ8vYuz5KUSfYD6vJUPqcVg/DdeGYa8e3JUY+JCItAT+Li8GHPANtvZpicV6i/kym
	 7cEJ42Mk+BftDN3LcL4d4rvp1qPNOOxEEuaWoVDFNRXgO8ENCwooMQ79QvetcrtmAS
	 CLyBsJF0DD9amDz2Bbv9berBudYs18njRw/gkMsD81/El14Z8qkvYAxVXN/KXAZ7pc
	 P3YVarKJa/tS1Qmh4zvXuCM2W1xpjOGtv46AXOfS7l27aLsSKUhOHxWsuOsgSDqf69
	 1oUZTYbEM8N2BNLUzkJInzJY1eWOpizkqGL23LcEJ0dq9NAdHV8AnCSkBj7wcpJZV/
	 XKq6nZudLd9Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DCAF55131
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294929358.30824.15220323140752277145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece92cf49e2c898c171f3baafc6e40fef85a2adacb28434d4c70f370ade6e943
Date: Sun, 08 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772949293
