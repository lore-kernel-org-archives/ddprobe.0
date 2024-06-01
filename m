Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DB3208A4
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717239263; cv=none; b=HP1QGROsdryDkSzbdc53OCYP6ZLmN6ZBsQps2/ZVoDIc/0+Lf/2auFNSJReOAj579rs4LGR48+8KKh/NVnwTeBOp8ZHN5YnqbaN2l2LXiVCo+qTCNfx4Kuqw+3p5rqX5o/LDgJ4WPc5HExbr5RtNIs4Ijx8zKmOLZHLNvT7l2Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717239263; c=relaxed/simple;
	bh=w7yGqm+9LZZAPrEiLSqWBsL+fOPU20qaGJjTPh6PA90=;
	h=To:Subject:From:Message-Id:Date; b=a3AnRfJdtORfEzxwqHGZl0sX5hrJdjVbEuFQuxWgLQoLfdKOQE7p0U0CuPg1SrDVvajxxE1uRGLpr4LU2UWkSj596Y4muwiqRVljLifmuNqM9yrfQ7+Gsy80xtv/B3f/1gXMw8ber2FLdjjy7KmJUVO5Hcq9/f0E2wglRQqhlhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N++MvMFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N++MvMFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E45ABC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717239262;
	bh=w7yGqm+9LZZAPrEiLSqWBsL+fOPU20qaGJjTPh6PA90=;
	h=To:Subject:From:Date:From;
	b=N++MvMFGFSRs3P5HKjt/hprtJD+FzJa5LUwiugafzORd+KTWxwtTlGxw5zcFlWyPW
	 144nEwDXuKo/aOiMypx/AKTbfqgQifvrMKefmozM9AmeZIiDre5XU3OJdvrSBsP0iX
	 P/vdHKt5Ctkby1GngHA8wRK3+9x0/ZhkPuQ88fXM5/Z4dDNycxEOjBl2aUUuT1/Q48
	 MMqXlmdf0W7hEQ5fr3u0Bt81Ss4vc8pUeB0AsVJmabLNQ3Qtad2IEIlYKrpt6e5oui
	 84tj5yJh3yXzjG2JWYqNT0X/snn3KI+j1z3hi3fmkoaoaVLauq36bLluxYRpo7WCtt
	 qaZ+XjetqM5TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB00C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171723926279.28160.7245046886055740232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41decd7d0da5e2d15a345d30b3b3b814d913304a202842b7fc804785bc027e49
Date: Sat, 01 Jun 2024 10:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717239262
