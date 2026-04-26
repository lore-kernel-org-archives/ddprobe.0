Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216E2224F3
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777228054; cv=none; b=NgoVP1Ld7zMCi20nvc5hrVrVy+Iz72roPm6a9OKKhQ1pHpEqOj2EB7fcdfrd6Idw5cDvz6ag1qufjwDSmeKq0PlamLF3H2FCwsbyBHnoA29+oj+ETVowW7lAqEcoauf480UZDPiCPjO/oLXv/WbHiqiQpoMST7D/aSehdurQXZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777228054; c=relaxed/simple;
	bh=1mjFI881vlRQYSQEThMiruggGbclgENKW9AIJ4J6Hs4=;
	h=To:Subject:From:Message-Id:Date; b=om4D0/tzJt1qsWU84RU+LTt/ilKGEW3T6PJkm4a54KVhD8DDm7gG/77k2Q89mpqSZlwgRMqnK9j5gbWrHwP6xJUTW/AiULCr2GWpPQqO6kSb3Ds8RV+gbrAEEebWYrE9F5lBqbspHLCrjFwYV6uffF24oluWt43rzFvxENDISV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ray2kdwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ray2kdwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DC6C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777228053;
	bh=1mjFI881vlRQYSQEThMiruggGbclgENKW9AIJ4J6Hs4=;
	h=To:Subject:From:Date:From;
	b=Ray2kdwT3BzypixO1sOjgNwpUGFxeHntvqhFtt73zH1Co6VAlr6hzqHXCZoJnUi+y
	 P2FWylmiWg7WLuM8m/a3rqpvf8Re3AR+qxxUwLcETTjxuTLvlTBNpC74wvB8w6RUed
	 FAFovnawaRMtm9stF1YwA+Ses5CbnXbZ8qJC7d5Wk4ButC3+2qz4pBLG70hoxTIdaC
	 eqUKuYzAphXBGpt7F5izC4QjZ896b0TVMxCeOcDlkqus7E8jQepoz7KZmI6h84tSbv
	 3orFQ0aP7xeIe/AZFDdIYsmjSDvga7gc926E14z91QNCUVoFKDk/KLyierHeXshsam
	 IAA8FPvDI8qiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02BAFF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722805369.6803.1263316615728858208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026c1a997c0deb84e67f42f41a6f40ec4f32379c8a2ae54661c42751340161bd
Date: Sun, 26 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777228053
