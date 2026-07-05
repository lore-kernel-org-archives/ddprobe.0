Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4485612CDA5
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783211914; cv=none; b=naT7UQGZtpfwAahQIOVtZLpWWO8B0GTSOc/z1WUK2a9nIhD1NGQxXuxJt0UOE6kA1/VW5pu0CFtjSwxjEsvjC74hP9IGYWlSDZpdvR1md+HzItlw0/i85sQ+CILZO2s0nM8Q0LgrOHodOyDrQeEKbKMflxX81kXIajd04/qFMwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783211914; c=relaxed/simple;
	bh=H5xsXhct1VAXWDs1YR6ZhcieUb91bdKMdWNhzOEDHcw=;
	h=To:Subject:From:Message-Id:Date; b=VWUPRhOP0DYZP9Vsg7JbsxdaCh3mKTHhcNQxzr3Bk4LsLTPR5hz6ZwjwC++Km3/8JXfr0TUp3YpR+Xgmg2eLf7tZ+95zXqlBwFcGvLDiagaxbpPRwnG3DX8fUwmg6F46JuOTaHw+T7sDJhJfDakN+6Jbv720Sq+VFk6Lwk/Fifw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YX1uzar1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YX1uzar1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D490FC19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783211913;
	bh=H5xsXhct1VAXWDs1YR6ZhcieUb91bdKMdWNhzOEDHcw=;
	h=To:Subject:From:Date:From;
	b=YX1uzar1PU4Y3zKZVD4MJyQdTO/N0/FDWhl8Sp65kSKu+oFm04zFu2k74jrxYFgph
	 du+Kra0fQTZ8a17ReXoEKtCSw0VXXWEaHVfFvVk7PddcRHv2ja9YEL77CaoLX8kqNm
	 BCbwWrBeQQXNAt9te8E5hAXRvP4+Homp+pAhIV64WVlfSIjM0CNNgEfR3t/M56Ob74
	 P102VBEh4eeIlXG6+ifpbBOx0oazaaxz8yh7bqc0T4d09xDATY6DbLsuGvHLLA/Zqd
	 hfl3DKjeIP0rFZzsxyGrurHnFYETsnvMLL4Hxm+eTFBvjyN/OB+bQ8eeSm4iN28VKw
	 4IVW7R/Y3T2RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2238C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321191369.10360.17065588994867161808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4fd5de1de3b5dc816bc2cd30430f03a8f04e00dabd298781dc45343661e507
Date: Sun, 05 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783211913
