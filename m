Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED612741DA
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761344394; cv=none; b=Sr+yIC9Mz7/pamnttMMNGgwm0Z/YvUV0O3xF+BWHxAvryQqVg+ZgqvmTKQBtnYv1Eig65rQKIb/wSUF/kd/bV87imlOkYHehNivilDAU7goovpY14mma0abjpHwf97JpZZxQUFqAZeHoyh/Q5SQCCtO2LCT63ak1/U8OJRDmJ8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761344394; c=relaxed/simple;
	bh=5jjYRIw2Rji9Epygiuh/PNGkLZ8PeWayJqnSCvaFKJY=;
	h=To:Subject:From:Message-Id:Date; b=msgDICjQ1vK0ooSHwhNMEp1PwyizEa0AZ2YfiXeqr387S3DRYfRUQIkOwE8XFQVkxrbAMyUTsAOIJg5tvynz/2B/0uAOBGRZsnLqf+lSz9ozCgiv03Ty3ixmu0C2i6zuKP87DM2NLvAudtttIVmMCydfy/6RnNQn/af5ADLyYug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpzwOnFO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpzwOnFO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2332C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761344393;
	bh=5jjYRIw2Rji9Epygiuh/PNGkLZ8PeWayJqnSCvaFKJY=;
	h=To:Subject:From:Date:From;
	b=cpzwOnFO8mDnpkaVyEU0/w5ZV2qn3qawQFfhUIazIVtRJWcAAyyYzyiyuk3XXZEAc
	 6lJXujcRnejQc87N9V19ueTgF9HLqZ3J68EiRf1qRQvBihxx53kZS1v+0dsicvP4RY
	 oeB+v+SuA1Z/WalzvBS+yxXnuSaLB5l34jyBjSGZ13iTxBoAZ3+vvwvBJeZZ5psOPB
	 oBvahDmHBDDNusNDQfRpKuWahhNODSwQHpH4p3VpmYXCZ4KxSxmOv2RXgvTBUqEOPD
	 5CdqRevZp87VHDdjEB4yNtZGQNjbkfME7jXmSS8DCR4ti5hgmlWVvYTFxo7px3KJQ7
	 ozzbUaBTgrF1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909BFCCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134439358.31321.15278607062470771161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e50c6a0faa40aceec2bf695efaf7f0dddd294153ed58d13d9dec1f997c1bf870
Date: Fri, 24 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761344393
