Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFAB21767D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769980434; cv=none; b=psHorq0aD3VFMiSNs/AgFuIbtc4B9Y6km1Il4PBeB4qj/j/bipXaLwkAu909ooYPJf3relV4t5JXD1ZtmyzjQxBqoo8Z1uIDXiHSRm33QOR6Iqg50FlQ0OyGsBHYlZow0e6UvU+IYT8a+5R38xARPB8HLiur+QapjruHaJZcGZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769980434; c=relaxed/simple;
	bh=39k7Woklx7clc+Des4nupciKWJtCQesy19Z03aHH6ag=;
	h=To:Subject:From:Message-Id:Date; b=Vg+rw0n4toe/zcl1+7WlvdjGkZhbODY/wzzShe2pjXKvR83Qkn17nR+DcJ1HkI/+Xdk0YTyhv2ms+G5ClvdJ7s1UQurYvv6rYu1inkDKHdKkTYzG0Zd/D2DwXPIk6oAHb91364D2Hrw/mSnuRYpoI4ZxnndxN3LzXxNAYbjw8o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCNdTHGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCNdTHGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07DBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769980433;
	bh=39k7Woklx7clc+Des4nupciKWJtCQesy19Z03aHH6ag=;
	h=To:Subject:From:Date:From;
	b=qCNdTHGKaPUgua26tBnPjLpygpMnUgS/9XS6GQ+p4iMAmSgAmjZflpuh+9vOSmzIy
	 hfflJEDyKZQms4nxXGAGWaKMKsjEEkgmWYiI7/BrRoflHhhEvrAL1Y/Xa+a10FYSa+
	 85NkPz25QD9RZSUSdt/C/1NuaLBWUj1QYaZv7uiLHtUnulrwKKqjL1glKHB8kzwUMb
	 bETEk8DUVxBYHQl9r/Lr2429mEC5OmrJq9YmY+DBLCRrr3plOwoe7S9LoZmRChe7AT
	 uPXsKqgbCbx/3IL/h01pNvpMA0JBcLHxVGbdji6dTv4bYwfmo7uYNZ+z5w47b5TmCb
	 uc3Kwp+1CTnnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C03BE6526B
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176998043361.19328.8157823345256935511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 044204161f421c85b2c1e76d8eb94f7d87ecbe779a6a14ad55f54f9359b610ab
Date: Sun, 01 Feb 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769980433
