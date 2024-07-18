Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6031529CFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 03:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721273723; cv=none; b=JXWzBdYvdRlY4kU8veI6wr3Frs0annjvGjpjzw75DlFscy6u0o74TdqSEDDjQRdgN7LYNex9vlCqL1TxXxcbcQEw1cmF3U03L4V4NtDFANNW4KQopQrBOqBhPQ/UlTob/ZMnXz5RRz5KRCUK9lZMt39djCZJ27kYyyYgAyF/qag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721273723; c=relaxed/simple;
	bh=deqTUoz5Etd+r9nJv9ZNdn6wuHkGYP8aH25u7O/4bvU=;
	h=To:Subject:From:Message-Id:Date; b=aexaj+lj8al8+jLfXn9/E5s6SdHMAsLjIH9MIvouKgh2mj0JvoQ3tB5tyRy4pHamQfZji9MgTPaAWzGFTdsRyUe8CX9XwUnPtH8UpDHk9NZV+hEPPzqHDvusIxkttPcrYTlLqtEVIwHNI1inzkJ1GOOK0Pa8jEsFN2uZO1tqfro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5OPzOwn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5OPzOwn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00C8C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 03:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721273722;
	bh=deqTUoz5Etd+r9nJv9ZNdn6wuHkGYP8aH25u7O/4bvU=;
	h=To:Subject:From:Date:From;
	b=g5OPzOwnBoIH4N+2tx65qQIJvAJ0I7qbDky8hQJY7uoSfuegjidJgL/gMD9DDB6yj
	 tqymdY/8+QCB5SduFfENdQw2MrlOm1zlnJXjqQYLpVMmT6dQLQ5pAWwE+ecfi/9s1j
	 Mwd3/EvEfQ7WrzCnr3ewiV9W2pQmJm6mJQTyKFfkMiYtriI623mU63m5y6sr/anoK2
	 qU2iP5A/qloofgRd6m3apfzeg54aE2GADJ+0l8zJbUUOa1/L6/AfjadR+n8nasZJVc
	 S5wEffPqXcD0xEr1ACxt5V1RKmd3dNpvDnV1Kh0MI6+soj6TPgZ+hE4QPT5Ww+R6VE
	 LxFb0W5mjBNMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B44C3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 03:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172127372279.20713.7092510438359399410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd716cb49ecdd4399f0f625dc300a3036e019d15ca9773308e5c8bbdc3c87ab0
Date: Thu, 18 Jul 2024 03:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721273722
