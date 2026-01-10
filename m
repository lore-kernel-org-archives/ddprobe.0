Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BFD21D00A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768065234; cv=none; b=D7JfiBGHfpCZ2sZkTt+dRP0DlDDe8A/p9NFynU7fmmnLfNM6j+KSK41KpSrdkinRVAdyxJUW9h2AZKDvz1rX8mofgpbLlZoGBayW+p20odMTmgWKcki+gkz97ed0HATooYpsA0M4qtVboqXu2pF8DpU+3kAD5bXDCylRU+7g8qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768065234; c=relaxed/simple;
	bh=LaUOirPtn4S00nGwi4D4R1eLncTGZ6K7I15RtZdEoaQ=;
	h=To:Subject:From:Message-Id:Date; b=prGW1rG/xV0hsFpdSxzn0EjjDaCseg/ovBKqUUFEE22vlC5uxCak8iOF7/dWGn/O6YeMqwM9MVOQpEiTW85Z28FH/pYhlMelCi9+bp7L2Z3Zx7cyWlzteFxdIzWojdPFOc6sdgDIDEdiUhxgEfzdk9/3uuuXaCi9u2kvai6nkRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/DL3Fww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/DL3Fww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E5EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768065233;
	bh=LaUOirPtn4S00nGwi4D4R1eLncTGZ6K7I15RtZdEoaQ=;
	h=To:Subject:From:Date:From;
	b=A/DL3FwwYN7jF0oTUXaZ8bOwC38gEk9jwiP5WtJmAANSBph0vMcJFJjG/ehFwogSV
	 uo6eOi+OUFAeVQ3ivA8UOjCXq2K2hqhWFHji3IhgwfGlQBuHgI3s07RqKnJKNZ84jK
	 sRi8DJL0cn0VKu3aqEM+A2HaPptbbYrAOaIR4IDCaM6KhSvMakqm7F8AehbRYEJmAC
	 hv103UakH3lAsRkv79TU7K/onkwlJGCOOuhYW58jBzHhqg/qf1ylDuOgzw5clPuedQ
	 qaczFVM/mmIxm0K2SVKs3rTHYf2oogQ5mqI8ZEkH02rrt+xJxwOcryTEtPYv1fS6sA
	 OjwiVAPFtSKcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95090D277F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176806523357.28310.1248401745631862346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62dcc44f31197dd716cad8f7f9ff06298e52223e4ab3d0238f81514dc1673d8
Date: Sat, 10 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768065233
