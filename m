Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207A12DFF04
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783525114; cv=none; b=mz8xt12FlHEUB58FzbqHJ0PkZNgRsLEpGZ08lLGihAvIhjUnqZ6NM/jE39LTZN3CFNq6vWvdxZn3LNhAEBHYwkmmngKbWeppg0pgTT44lexZ7ledfnUBD/YWopLM+e0g3ofP3a0764j7RL7IzazPmtu9ba5n2x5IGQ8jneDGsEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783525114; c=relaxed/simple;
	bh=IoCU+51a8Z1C4Dee7GVGzp3HJFG5B5nmvt7bkGKBC5U=;
	h=To:Subject:From:Message-Id:Date; b=K7Y9qIvDoDU+l1YrzR+WSV7ZcO6CizamEkwx32ipG4gcxaJR5SAnEsOMgQz8K6QLtIBG0CqnTITRRPYwBWDkBTlQq50F2/FGbgkjHusllTHgwgQTYY8FauWaJMlES2/Ke/Pew5bllK/RUhp1FqY75sUu2+agp07uMF3gqIsVcIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0rxSZkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0rxSZkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8E4C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783525113;
	bh=IoCU+51a8Z1C4Dee7GVGzp3HJFG5B5nmvt7bkGKBC5U=;
	h=To:Subject:From:Date:From;
	b=l0rxSZkD44ssHIj2aiyUkOK+mU/JTjImVYHEr3IxwVwLq0D6DB88CCF0M3Zjuk/DY
	 7jgPq+BbNUHZ7yejlrZPnzZCT50p6Z+yd356+euqbGiO8qgSJLovMzlVkC2SF22YPE
	 fBdnFDI+pGgdC0wS84plfGdNxHKTsRfTDIXyQfS8aZ+kZgWrXTMeSJ6Z6jDElE3Y07
	 V7Denai3aFBPZvcUk9Lf6GkbFhYVnxAwwhTYXYcEPZ4hSmiGTWclDfO5ru6BrHl6Gk
	 0Kb6ujWXJAHDupLxDJHIQ7ckJywKiwYLr1BFUeAOcdWJT53vYieHQO7Gwv7FLFl20Z
	 2cDgjk0Y3VgCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA171C43602
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352511368.14022.483340228698937861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f964ac3b95ba822e68e1e03367ce7a7c06b91444b8f7f4619dbc956ac4c41a
Date: Wed, 08 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783525113
