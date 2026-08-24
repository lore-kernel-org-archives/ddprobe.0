Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486051E2614
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787562034; cv=none; b=BkE28Rcq0pdeicadNO3yRwvRefj39nWCqtW3Nw4jo3twUomfOa8rHP6vBdxGoCjlgMx5+2qSmLqK4E+hOV9ZJx/uGvrJ/t8oGWNpS0iyX6ux4rklGhvjgfdbU7g/i/ZN9vf1zMkEkCuIsqF6G6JnHwTU0VWx1euttbTdt4eS3LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787562034; c=relaxed/simple;
	bh=27YslQfHDHKXIBN0xQ5JZ5m5fyhC5/KiXfCqapVwmFA=;
	h=To:Subject:From:Message-Id:Date; b=rerSFls6W15WHmebMLVLLNIHKzGlPpnWkp5xptQoRT2aVnAYtJUeOm2bpwMm0j7tze/Kg9K2ZLmJBaKt8+sVsGKOJMAQ5u7chJKmEEVHhEY+9lXDVYK80UO7eTrPG0EuEfeZ0VGNlAZrRGcW8s2FHHhytiT1XquekcN2nh+hhpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttNzxjqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttNzxjqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F7BC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787562033;
	bh=27YslQfHDHKXIBN0xQ5JZ5m5fyhC5/KiXfCqapVwmFA=;
	h=To:Subject:From:Date:From;
	b=ttNzxjqdlxzjIIFufHR8o7DVpqVOBoMwGDazMbSpMfs/ncHbabSGSpPDlqQOUzYQp
	 2/ediT2yl1Kng1YjnZlMX0DnjVBojjygh++JTtith5/fPxkIiTBRflr1s/rzxrtP8J
	 b1039fr/dC9U+s7AKXPabmYdYOuv3FH4THs030flmCX6JZ0YZnGXmmcEpuoQqAG9j+
	 0Bw7jJq1urE9feI48Zn5Lz7qKKdUpWKwEz6I0rcs0I/A6h73UdPdyYu7Yo9Np52jT0
	 ZtT8fBPfBYIShZZQfON98WNX4cUZ2dv4Qk4lDK1dRdlVrwnbtMy4ZXUZ6eE60ltTUu
	 IgOZdRHuz6YRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF15DC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756203369.13302.847133295713438981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c6a083c065f35a7962aecd63cc98956a21f9dde7623bb118c8bbb103b3b555
Date: Mon, 24 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787562033
