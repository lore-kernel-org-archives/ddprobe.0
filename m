Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F365856B7C
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707455297; cv=none; b=YoONVRWRyBZcy8gnbNv3+4dkp5XvKGY2bXsaS8SKXAXYse91y8rH6O4Rn9ZoqrQa7vvl5O28AOORx/ERFX3/loDniszUmZR/rFY94Wd4ExCFgpO7Es/Na6VbNUblI/RNvVMDKkIiJD8DAd9CchvUKySEEW4mTGtnC5QwCU0VwV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707455297; c=relaxed/simple;
	bh=ruJAqMJGPbee5mla4EfThpoh+bkxMprqDAyotJvIMiA=;
	h=To:Subject:From:Message-Id:Date; b=eBnT1NAgd0nmtXperPo4ye/sq7jOOuW+1wZz3/Odvq3INU+de4ghairJqRTC1/aeOiClF+sexHwNQOtiF+9BrY6e8D0AIuFzlVToij6G2iRusXdTjsWX/mIV/m4+Fg0mx94dyy7JJXIw5W4LasgX4h4R9/nQt68QW9oy1t3v3qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dceZR57T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dceZR57T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91527C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707455296;
	bh=ruJAqMJGPbee5mla4EfThpoh+bkxMprqDAyotJvIMiA=;
	h=To:Subject:From:Date:From;
	b=dceZR57Tb4t5TsG4TvkR+TJCLJj9YQmZZ/WPGE3LrW5Vz6GU9OueK0hmQNsrZws0W
	 mVtUabidHwLSZGFUX5dln4WSxJOiyGdvMVskiGv6cKlsp/xjha1gFmilNt3ZaZOSID
	 6D7VexlyOM25Y91ZpxDaP+wodf1o9LfhgOUNnGzJwD8rTn5kxHdJ/JqJ2rRtOwQeH9
	 cHkwHkQUQD80BNvQwkCa/6oMhD3xaIdwA0x2kqCCBYDde3uQVKtQvfPcF7GHf+1dvq
	 l17EVR7/u3qhWCYZFB7ql2yvFssh7I/bVqK4Bc426WfSQFtOgOVeSeaQghnflFlOGe
	 Uo4nAlCTq7rCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EE6EC48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170745529643.4150.9955717331480893756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef069960dc5b1cac33ad521a52bd2a70a07493833ae5c4bf5887170335548d55
Date: Fri, 09 Feb 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707455296
