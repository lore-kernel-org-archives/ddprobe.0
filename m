Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EE91E1A3B
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755519594; cv=none; b=MQH/ejsvLIHsgLO4ryz7i0MKu2/qvdMDnsQcVyzv4/E5jdaeQBVo9znVn5Fn1hBG9/5kRga2xd/3wB1X91ZICdUO7c+Tzg9bZY7DKC5cGSIXSplFfngsIlSmaOxnPW+3OVTA5BhHbmDmMPx6BB2bMcGG7UEnVM4cWYd6d4j5Szw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755519594; c=relaxed/simple;
	bh=vuapNAJMDEDBD2+pAyejS46d+6Zh9EY2H4Lospg/odI=;
	h=To:Subject:From:Message-Id:Date; b=mypaCICkypuDzvvW6APhp4frZsF6WkZGITdbONgV0khzrWLEDNNduxZrdkBrTCZhvFYvwBhogtzUccLsR/ncsB61jPso3m5p7KNSEOiy7Xa/D7mxsUSBDaU1dVl2247zMPaY/A7gKPt1rF/33p1vwo4CZBTnbKbbYxdwuXtCM64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayAAPVXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayAAPVXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F79C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755519593;
	bh=vuapNAJMDEDBD2+pAyejS46d+6Zh9EY2H4Lospg/odI=;
	h=To:Subject:From:Date:From;
	b=ayAAPVXFZOYxMJMjxF7YX/isa9zlf0Y25epBHMeE3wUNZQi61p9SBuNhXoFI/Q0Jb
	 eyRwTbxnlvsbxrs8T2vmKhMKMDIqYpGgJmEo9rZxiuFPgmWb5LhqXGS0wf1Pj5Yd7f
	 sVC7t6uEgYxKojRQW/o3kJv+1cy1QRFt6jHsN62K5k9WheHcCoXXceKSkxg7R3Qvjs
	 P/6MBqEZlKsu2CsQ1OiNx5hTKzESMiQi6sXXaNe+FnS/TaGVkF5XxAPfBUdQ+Q6duE
	 x/+6neymnQdDlA7QRVIm2/L41U/xvUq3IQO556gSNC60snH+2f2JAF4KRbnqbzS39F
	 8v+x91Dnh945Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CD8CA0EC0
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175551959358.1679.801810294910092649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c476110885f747e47440464b07e299be496358a2cc21e43e9bfc71e8ffc31e19
Date: Mon, 18 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755519593
