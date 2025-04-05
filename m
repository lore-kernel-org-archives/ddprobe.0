Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DFC1A3AB8
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743847195; cv=none; b=QRAXAmxM+RzRLPV8iHToQ6m3borIzjmkDiW7b10JGtr8AuNzW7hrzc+0lBDuwm5WiuP0FOBAxdzt5a78dzZtaNEI3sUd2I2jwanv2FJKSWAv8ALcx4LEXV7lpk3YFD5x8gv8YL3NINhzQOHmZVDy4hR/B4NKZeKbFR3yRj6yJQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743847195; c=relaxed/simple;
	bh=rWTXk6I/y35jL5jl+WOAbpUukdg0JMOU24ggp8SsbxI=;
	h=To:Subject:From:Message-Id:Date; b=Z7UU9qMzHnZJPhS7yf632CTOqZccklK9SkfMiq1Opy/2zhW1SNWrniAT3tglvpi5AnD4PJKo9LNGuePrwS8dZ6pnbYR7IvKOMWXjUqIx7SuglDZkbfSKBLnFfqtcNPM121c+XIed+xUfUsrTzGfxRJW5bjiOPIPLMHvdkrPYonE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSu3VgeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSu3VgeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EF5C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743847193;
	bh=rWTXk6I/y35jL5jl+WOAbpUukdg0JMOU24ggp8SsbxI=;
	h=To:Subject:From:Date:From;
	b=OSu3VgeZCwRROWMRHSEr8ZL/FDpbcjFvpKIepWuhynFGH3m9PEEoTNaYJzolDds8q
	 RHdC4sp0NXxKUWxeVeTzEONCbGIdlkIFCVUHT8wPJqpvEd2qIdPyRyV2QjLJkrUXmk
	 q06tRIH76CEQcgoLnTIZM5s708JuKRo+4KPvzivvF1gNMjvWirx+UsM03IzXS0Dpu5
	 gcA1iTw5tPEApQmGt5ZF9x68/bdxWaTNmZzhzzwpDiftnG/HJ7U+iXNZzMlUFKhT7j
	 fBtepXl89Tlllf+8ZgkLFgv1Q8vKH+xzz2LmCl2jnYLjfsMeI0Uf37kpgKdephEz3j
	 /LySI3Lzcz3QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96064C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174384719357.11230.1443482905318727916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf80855187561b4a7b50fd36f9298131daeca6395a74e1773ae5cfd24d741387
Date: Sat, 05 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743847193
