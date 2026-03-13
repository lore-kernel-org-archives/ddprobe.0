Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E25140DFB7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773440694; cv=none; b=p15cObPS7vJsf/zgDyon5JfhZQKlk5riFJLWDGySMH95BdsAidjF9R0fm4Oe1iCA/kO7/PyoS0NNrngGnn/DAC2e4YlesekpXvW1cZECl1D7BsTk+7xWYJ8SHbtZ3CzBZEvaFqJLNHXGAJAAt3p8XNbHqLqpr83IbicKlHPTgsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773440694; c=relaxed/simple;
	bh=xkkCOiC895f3kXfqtx4nrpUr9ANDlb9CzEqZ68NnHYI=;
	h=To:Subject:From:Message-Id:Date; b=u+LIpct/MCPbIzM9S2RPCkrKJBFRhimdrt3eAHzdZJvyorOdFkH8dY6BB7W4/9S5OO0QYtV39w0M8yHMXHF/pr3afS8eyrOHUd0LaThfkfFcNiu1+FSb+YQltWTVNU+7enmI8YGVIOFMRcCer/VCuXsbPchmBOXi3ePl+XJHc4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTZTO4rJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTZTO4rJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB9FC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773440693;
	bh=xkkCOiC895f3kXfqtx4nrpUr9ANDlb9CzEqZ68NnHYI=;
	h=To:Subject:From:Date:From;
	b=jTZTO4rJHk4WYC43jGD1Jpqx+i9QDZL0s2WqzIYzoQYdH3ehUxhQOEZxNeIGCRvCV
	 gUcCyk+/GFwiupo9b7friCFF/HWIHSHKj5AiMXUFcWS2ZoD9b4DCsVnIsLf8LdYQYD
	 ZmxMUzcgDfQrJUp6gFn2teTg7xp9ZhHtbBEHxLf5Ghd+4cflKGVL6Q52Dpefs6JpSX
	 878pzTef6J0TABT1eRNInPEdJTxMkrG6UUvvr4jo2IOZivSWKD2hCJIfOePfMFQgTL
	 v+6AibMA8+Q4Fs+YUxmWMOlT3rlKZkDK4O2S4qR/vYMSgswALWLb6c8fBWMZij7648
	 /jWQCqkaRwC+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EA5107BCE8
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344069360.705.1057536604089621236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c51a2edfc8681d898413cb000d245169aa0e4677b44a83e6d2c1eff270db91f7
Date: Fri, 13 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773440693
