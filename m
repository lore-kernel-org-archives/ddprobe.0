Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEF41AA1F4
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769400834; cv=none; b=tBGrrj7Hyx/ExOizNBM43m/OtxzPURxCbpRX0rITzc4Wj192aNu8e0tPWA59JjWrTLwYbsoWqAi0mdTAq6JXMcnOVHRklVxoW0Q6iiZTza7KS+A8YmgF+xabfb1dMNXGuk8bFV87OndPsv4Daa4qrF1+eYeZ2RkFUhH8xbka9iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769400834; c=relaxed/simple;
	bh=lxwZ5+yHW/RL9Y0FZcdUHMK5znmv3R+t1gOyE16EzOQ=;
	h=To:Subject:From:Message-Id:Date; b=iKclYSmSF2MLT4waxQV/3C0h9ZvzRFsuJxVvBMZQg6n46N/iFq2jfXW2UVM3WUvtYUipckQCJMwsI5u2NWMg/9MKX/QL82+uWliDYFsW8jzlUVS15OFVEpvHjF2gxz9yOzD6OGIxX9YTD90JQ8k1bDBM1ib+k4YT42XL+4EYbZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYnkibQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYnkibQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DB0C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769400833;
	bh=lxwZ5+yHW/RL9Y0FZcdUHMK5znmv3R+t1gOyE16EzOQ=;
	h=To:Subject:From:Date:From;
	b=IYnkibQIjFTq2zJFckEQwP8PAE2UOVWj16DGLCfbFVQB5/+oFFl1m2PsNp7qMsMXW
	 GkkfEWW4X+NYWvHy91c6jgjMVr4tMiUV5pgsj5N5Kn7buwnvEg2TgAsJdqQOPeuSWo
	 Zl2Obqvl0MU2GikGZ1aO+cf5MOc5RctM1URkj4t9i9+8FUmQlOk1MUy+7VmixWIWk1
	 ocm9n0b01iGk2696AKjCqsA93FBMPRwCVSb/n/zZBAn1ux481rpXJp0V/LR+twbT4c
	 UFqyuj3etf9qAJBgh7Poyh0muZwjbTFnz0lYdTyMpIpNhAkchGtjxG+9l78czLrQbi
	 ZTtDjaS3+xpAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C2FC88E47
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940083358.22680.7724204116539813399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0b959ff345daf2f3be0a71bea751968bd125b42890f1a002b9a383e6663cc2
Date: Mon, 26 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769400833
