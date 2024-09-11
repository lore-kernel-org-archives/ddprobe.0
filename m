Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8528F6D
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726092954; cv=none; b=FwPXKFNtrFwXG5ZiDMElbbemxYihK5RKhtPMzmxo55YLCvuo4llCwB0pxeIjnemDNEv0P5ps+3+sH4cdvGpBMfoopgkVyHN27lr5nIctCOwcvhYNjVYrSpuKOvDoJuIeN9gB98kx+xRbZfSMYdxvUWH9pXPc03PUtZj71hMO7uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726092954; c=relaxed/simple;
	bh=s9a74wIfNjOAmAZSN0Xt/lvcOfqFYkQSlhjefVuX6ZI=;
	h=To:Subject:From:Message-Id:Date; b=AF3eKJyhIMgxDS8KPwLVFjuso05s5Ph1pIIrNfui9gtsmttW6BDtE6C/Zdv6cxI1MsbRDDwmwEjYhuNySi79rm2tGXIlAw+rabPa8pqvrua99f4CUWX/7Kg+pPVpirCvXDgG5lAWLSsFCK9II88rzy4MOR9IXCdCQEE9BU4Vy6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqEOl7Pw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqEOl7Pw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A746AC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726092953;
	bh=s9a74wIfNjOAmAZSN0Xt/lvcOfqFYkQSlhjefVuX6ZI=;
	h=To:Subject:From:Date:From;
	b=nqEOl7PwM7Gd+zJF6rpSoe/EpHoIykzb3j9HFIY8BicbSDT7uUoVAFH/iw2rz40gi
	 9Uucqp6/kCnvyaAGOe5FgrSCkSi/rtF45iBFTub8VCfXBKhCYnTXWK6SZUKQd0bgvy
	 GnbyiQ+SDOntibXAVP4ob/vrzhxe8R0lXYyxG+xxvt2HY/yFUqmh2ondNq6zyPSGVp
	 G9QfG9oz09ghZrAgLHFyK27YEBLMBZxXreZFpq2EDX4uRN4xF3BmxDyUb0Wiu679J0
	 8fErp4Cjxho168w6qQS8b1y7f0n+bIMh2o+o3sNnZK/DOCmn9naVyh6d7Mbpv2N0Cy
	 AsCyt59NguQAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9199CEE57D7
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172609295358.17353.12245792712988500215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3024fb4301e917e05ab1875f66612d4c91e11e4787b3db0b1d6eaf10ad0cc95a
Date: Wed, 11 Sep 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726092953
