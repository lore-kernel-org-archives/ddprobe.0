Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3177672616
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747405194; cv=none; b=PCrp90obOwKY+LQfJsHM/NkaipwPQ2ReiYztH2rjChDe/iltYElWqmIKH6IQJyIcTFaYd3JX3450U/BZLsokhmClIrCFMA6Jog06swzQj/WsTspfdh2KN0d99mThsxUt8K8jOecbR9+gSCFy7OCenDsSDdxa3nqc8Z/vupwe9pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747405194; c=relaxed/simple;
	bh=2/2KYcclJhv49ierN2vHiXSA7e2c2EdTVMmOIUHTlwQ=;
	h=To:Subject:From:Message-Id:Date; b=Khw2yOjBJA+1mRPGmNd8m7q+DRFZ5DQajJ3e+NswdRXATu9cjeFhI8NGam5SG/JGBiF9usBWO1g9O+MVhJh7IeUc+3R/BLMbUijH30dIXY6Uh1mVihdjNHO+Hnpwhc6R6I9GkSXnf4NGblCM1hwBZEzartllHTOcXRgSzfF/L5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZ7RfrvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZ7RfrvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F89EC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747405193;
	bh=2/2KYcclJhv49ierN2vHiXSA7e2c2EdTVMmOIUHTlwQ=;
	h=To:Subject:From:Date:From;
	b=dZ7RfrvY/az4mOfhCbLtkRsNXQ9hs6OI7YCOygH79Dl0Z70X2a/bnr6k9zUUncyMg
	 bDLn+pt3XrJk0h1ixiznBYWIqvrfXDoXaUdu956hmy2TOczdvVNww+gmLO3m2Bx0GN
	 x44wcNoQOzMUGUQAxSsqPYuqVqPyZVko/zHrHgXX02df4mD1Zf2NO/AXGUDcnwCe+H
	 YNKPcZ0RcJGVdKltNTM9nyiV9RPYrbW9CKpdhxrigKc632BZYRvUE5iol39fREtbHx
	 7P4nwDsMoiED6bAFFJp+CC8v4AN2yblGvdxodtKUqQ+GZQJAe6ZhCFirwTiSZwW//6
	 UfgNTsDcytAOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB14C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740519357.18674.4186977420105207767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e1ed6a2a9c199ff23baf14f06bb527494e99e0c93dbbbec36b147cba6caac9
Date: Fri, 16 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747405193
