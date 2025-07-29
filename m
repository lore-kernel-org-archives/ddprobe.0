Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD6D286A9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753759194; cv=none; b=ZJL/HoY7UQ3NOtGySeZvk7UqwOZhkiYZVkm78HNnkqPoMlxorCjt1rFtdstGW8bLdWc8O4tjU+/WcokuboZBN7k6SIGyweVf6KoYqQ9VBUkDaX6p7/X0T3FxD9ioQ0D3XmgbtVi7NaJZR6+87OgI+VCSWJb/vraC+ARkffOtqk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753759194; c=relaxed/simple;
	bh=VYOKtedLDNxAXqghTFy7oDxRV6B70u9setL7CCuCsAU=;
	h=To:Subject:From:Message-Id:Date; b=sRRb5E1QvUBE5aJtqatd71MXBb5G78OohCZRVbouQEJ2u6G532v4ErINr12GTolou8qF6tvNNcJpvHfiSroAzkF4DgT+5ymablPkJmmO1ihds0An000s1K4G2UnOdt3s9AolvFuJAvLVnlgrg76nHf6Ma8wpL4o4IOya/InyqQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOuCXvU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOuCXvU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10EBC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753759193;
	bh=VYOKtedLDNxAXqghTFy7oDxRV6B70u9setL7CCuCsAU=;
	h=To:Subject:From:Date:From;
	b=KOuCXvU0C7q9U+MyeuDZYV0oZ5gIi6FISF6r6d8iMMDR7RQ4dq8gBnxBjok+bFUI7
	 E/wRuV8U5oOhfZtzZYKGj0I8YOSwTicctQBxezUiRQE3ka9gQDUCDzcjLqMkN0NarG
	 4aDEXi/02vvr0mRANMwiaGivs7vs4zWBTs9Y5JvuDe+Hk4eu5Y7yV6QmHv/ssmLYiM
	 W0h+asj9YtFEEA35p6mV9PSPKjFqy2BoB08k1G00H+QuJXWgy2PAknxd3fNdig8Ryy
	 boZKAPseadaMEO9sae/jlZtiUqbmyq5TtNGJjZs9ik+pbKWVtgPYk732qBCfzDGRmL
	 XdNCikQiRercg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE70C83F17
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375919357.28183.9705694039068261723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e31f17d202e203953e1416d959f2f61d557eeffd27bdb1e37ee3bef0a20aebd
Date: Tue, 29 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753759193
