Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2916D194A54
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736157954; cv=none; b=LR/52SgNxXwkGvb2dk2G347fh//1pyNKBxZOWyVbaa003jHhlxLfoJRVsOTXCfLWHwDubQMubXFyYeqWI5v+4frpPmZc07KCgxaSCpqzh7lywATCYRSEQwTgvyr5M8JGjUZDuc4ubcUDuiYtlfK/R2wWk+03rA/yjOkbR2tIOq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736157954; c=relaxed/simple;
	bh=cKjWKRvj7NbetbwcqTGjCYN7V1HdE0eCS/KMoUEw0mc=;
	h=To:Subject:From:Message-Id:Date; b=VvDy9Sz+fPGeH0kMY02BGxIlzZ72PqbzibZwdFiJ1qsMEPw3kFXKV2Ah56VBFqREXpFKCxJ64/l+GEkeipwS42Yl5qGpJCVckfE4UuvSnFLv/g1Y9n7ur4bT+wR87B5KOZVUR9YQircWJnuFBcYA2aBR8kyRP6S0Cj9MRkeC7oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEjiAnXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEjiAnXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E38C4CEE1
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736157953;
	bh=cKjWKRvj7NbetbwcqTGjCYN7V1HdE0eCS/KMoUEw0mc=;
	h=To:Subject:From:Date:From;
	b=MEjiAnXxURneW/5XSgCO419iuTU7z4V7MchIMwF43THjYLwK2YQC3FA6tbS+h1s0i
	 FfTXmjkSIy9pqyQmtnL3R0Yu3tJfsdSOzy6Op2OVwCddzKc0LP/7D5jKGhOY7RzoFt
	 Mh4ecEYVZqBkRyiCOhgBGrBRvEP/GZyixGSBZPhHz9SkDBUNQ2rYFm+PkmFedU3CGD
	 RJltOvL/UOty1Tr7bp0X8HK3rhyNsWpASM9w4ksMqwlQew31AyctXSUrm+JRL5Ogiu
	 VzYiiwNDlCXRh/EkAsD1INI3adW3RvhstfN7hNYjZL1x0pgMUeCbf+wCZ5fthYnJFQ
	 bkoTvSEJX4i+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91357E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173615795358.22839.2024714904241656076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2862420b7ae64e770eb68f03815cf9ae5c84f9b823df5edc3a9e2f5e8fd785f5
Date: Mon, 06 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736157953
