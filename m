Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496D39460
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787034634; cv=none; b=MamYZGoay2cieB8XpQ3aBaHNI2i+fVDVFw27vpYuG/AKWBeAGE6+u7VHJHZIF2CSiMi3JJDzCcpuWlLNWK95T5PDd1sWWxdH04grS2pg0qUMvvSCz1FnN7u9BDjaqNKP/4+Pxm06k1tbD88bh8epED8OGOnm0YrTPhZB/vYHViA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787034634; c=relaxed/simple;
	bh=f6OdlwHlxcnFCZIDitofq3jVMd9hN/GO+Wezb8irAiI=;
	h=To:Subject:From:Message-Id:Date; b=lb0oTljqcnBpNGMqlF1h9nWvKE/eA0utlucBhmsUJ566Zx+U2qjVauizwP8x3MjAcYEmjNbtXKoGHzghkuzGQh4QfC2rselyDSrvIS+cdVnxjcXRhsrkfC2XFfG0C6aB32pE3uKFgRB0r4h24DDAaLjySt5uzkQ8t0I84ud8ec8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkWwzoeh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkWwzoeh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA27C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787034633;
	bh=f6OdlwHlxcnFCZIDitofq3jVMd9hN/GO+Wezb8irAiI=;
	h=To:Subject:From:Date:From;
	b=EkWwzoehztig3YMKirphc12oMmd7UgjXMUIqLzJClpjbidb2f7oszteWGPG7nyW1K
	 cEkfDt09Y1yIn/4x+JNvo5k27wwQXJVYBiVz/74NsNwDhwD+5cWWa5eG8CIL5pudt4
	 hMH+UKZEIhGZu9zIxuegvqZx4SYw7bxbScYjaK4aPbVYfIlrNDB96NnBUvUlOYxh7F
	 U2urq8FAF0tXQoW0kwhYRsbfwQDezMcSIZiopmlrfIAjnAmAFlgXpBB/wyItvVIxZL
	 LicrfYSqAddXeLsTjvIeh5MQ+qivGWIlGR6P7qtDHIr6ZK2BPo3NMkN0BYjDfrb3Bm
	 7PiQ4sa3x9HhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3FCC5DF67
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178703463368.28144.8691624790879852423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed1749c4623c90e9b356607505aba7f31c70da7148195ce111b8882ec957176
Date: Tue, 18 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787034633
