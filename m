Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2DE189BAC
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746847795; cv=none; b=hTYVeQhNT7ELZuLco2jvQ6kPswgmG6Z4bVq/d8jNc4z/3/LLkXGQdZ790L97z8hl3mN+M/mCY3HPO8vbnE/5pTTFNjcI0xjKOHCqA6ekSeuPduX8+QrPU9gmrfvioJPL+zsvsxZpR7Vn7cVaRd9Nnj3z4RD9VJhk5uTWif0VfyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746847795; c=relaxed/simple;
	bh=+BPvhR0SZSoGCcsi17pFXB23AX3VC3OAj/Km19iX4cA=;
	h=To:Subject:From:Message-Id:Date; b=eM98KM54Lht5ksmS4TeAnCf/m6886nwvtBdHf4RX2P04ICa4h0IY90Xdhk/Yk3UCPzwEOvHEuvYXk6KNXt0oUnFtYyGCKVC/LYEj9LqX6/yPu+825SaT0u+IW12jfVVk0Cxo0jwBjQyCm7SWl1CuGbMXc91lg9EK211BDtiq5qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8qs2vX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8qs2vX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3148C4CEEE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746847793;
	bh=+BPvhR0SZSoGCcsi17pFXB23AX3VC3OAj/Km19iX4cA=;
	h=To:Subject:From:Date:From;
	b=b8qs2vX5iT213pTaBxN3FyFKrt0V/CVQu6p8rKNs7RAQonXP4Uc07HGNHZBBd08Q8
	 ZTPTqHOUholjS4mPOjd2E8w7wblJOhzJdeCtP7k/POs7e6hO8on+YmsnzWvemVrDdn
	 QyDQWffRc1aDn/T3ThrpsPfK3gNGoSg5BIRuYSKIfFgr/n6N/SncEfbmhQ8Ma9TNb1
	 HQB48zKfsSlO1q7OhAjVEns8oNdwr4SipLK0FkBBPOj/3/iOhN5jlWJCwPEnqVQagA
	 q334pmqJph0qvYA9w8Wrg3BYR6PB3Um9phfZc2m5bpP0lFR2IJH/uMsOydzjiqhu4x
	 SE+2EiOIAN3NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58FC3ABBC
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174684779357.18050.8754088968011814028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f935f93e7322bda5c7bab8229a86c3de9c40c019675d2a2da32bd2a2e8b01773
Date: Sat, 10 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746847793
