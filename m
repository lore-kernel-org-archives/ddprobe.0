Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAD5BA34
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777703854; cv=none; b=dGCOpE4JjXt9hMVzhvvOCtxlItBE6sbZeVfd7dQcFUFxNB9dxf7dhxVHUaaQYzFnm78GZCoTnUUpQdIvvJeQeOaiddlK4oqEtKwTCsEKrGB9PE9n8V8Q5AuRuhRFvH4Ay9iwrQIrH0H8Um44OMXnl4a//0L6G5y2aAwpb7LCo/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777703854; c=relaxed/simple;
	bh=iGaEc+gVEeAYYNpP4oCedoyISHQW5M3rK+ZFFTzZd2A=;
	h=To:Subject:From:Message-Id:Date; b=LgWdyymvGketzaYWkjdFuzWy1Jf2B4SOpe4Rd4s4OaoaBC9q7JsCQvlv+JcpO77JhrsR1dzrkRko40H2QtCgCWlBoUmcQgTxs6VfSoH3OY+QYDLnfhTm69KK2Ld50QnytMxEzy4nWiMh8KPSjxuzBnnfwTNlSySVWluGn0ma/xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLS/3zN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLS/3zN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD30C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777703853;
	bh=iGaEc+gVEeAYYNpP4oCedoyISHQW5M3rK+ZFFTzZd2A=;
	h=To:Subject:From:Date:From;
	b=OLS/3zN2E2Mag0vG05aydvP4OW8Ggk2YS5xfc7R/mM9woqocH7buSrk6yaA8LyXtW
	 iNCXLUQOYSetfzyPSzgnboziWZ5Q1XNN1Q2NOCnbMpDP6KSxC8qd+CrZ3ZivE4Ybin
	 NOe8jrt3Hx80ShJLe8jwWw5OQGRGpYiwm3zT0Sy/VBW/y/V7q5CigoVI3R2iC2AUrs
	 nWzyOxDglHWwWPv9UHIa9Dx1WkSZgpldCY3ZJ+gFW/Qr/BkWpKyTDWNyEkjBfdX8+d
	 1XVe2WS+kK2MrzArjUgVTsCNSqNdgoEgj7KbHkCglM1uQiIy5jbxYzXk/kKzuSb5bW
	 iMh4/udne56IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC226CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177770385368.6382.3083916753498934980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d6c61386f8205ba5d264b8ef3fdc1a00c32e15d7596a466708a3db609abd67
Date: Sat, 02 May 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777703853
