Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486BE1B947
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 15:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716996263; cv=none; b=WHuWzoURxGn7Iw8DtOY5Urb0PFgV2APuN0/63S7Wd7z81UNEcpKHSPWrf7EpDDksca9yhADjhiUA7k/cnKbU/KFIWhokrIWzyjO0LFwSF+CIW0ky1YsRa0JjEDUiNCGqs15ppTJYOuHloN8t8QfjY9t3LmK50VNXfiFb6isdYs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716996263; c=relaxed/simple;
	bh=qHCFDGFrUPsjTWAtRWJ71hWiluZh6i41Eq1gAd4hjzo=;
	h=To:Subject:From:Message-Id:Date; b=jpd2vcbk1mt1XLy5yJI2hVbhLwg48czZozx0LxtYubmBjVFDznJ7Qt1Sk3uBf7hCKKTw+8U96EMSGRMvI1+BacDVWcMj8Rcbzajuk+zI2OtkfylfSZLfL9SmwvuPDmmRzWFN7OXkvFTmaaZ9zXl6uLUMkzVSCs5jxwd3/TYM/3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOW0NRe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOW0NRe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C00C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 15:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716996262;
	bh=qHCFDGFrUPsjTWAtRWJ71hWiluZh6i41Eq1gAd4hjzo=;
	h=To:Subject:From:Date:From;
	b=dOW0NRe3J24aDz0sKypsza28xm6mt+qz6yC1JvQK6V5MAcdlYF/fUkkDZoIFsLq/9
	 ov4lp+M5xYDLwmoejXWQs8Hp3JBwnAX1SkS4aTl0AEREA4TD4L+SV1Yw7Mk0ZZ+wWT
	 BVBSVe7a9bxbpSLyatLnHfd6hjxZNHom8MI3M0LYA2fLOTSrhOU4KJl5O9msDVbxNN
	 qjiCAo3UmEQ86yfaVgo9dOnEgR9ul8OPJPTiGdG9aUwC7laHpZZyUMi4HuX/iVNFE0
	 BG3sIuqVP5FRJCuS5/gMLJy4vFcNwZHYkAQEN2q8Vx9FLZaQ5ciJKRQafPHT8yWANV
	 VCLEXvbuoiNSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BD5C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 15:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171699626277.13829.6165690733704451861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ba333e1c2a541af96c0f58ea27824aeb65c6df3c6ed2e4fb02188140b2578cd
Date: Wed, 29 May 2024 15:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716996262
