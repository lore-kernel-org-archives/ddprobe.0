Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20CC47A0AB
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778685634; cv=none; b=YTh/vk5K7CKAhmh0hj/dywBwan1b3AB57AC4RfSoFmEftThvPXrzUHx2RM7L5QUj3cYDPpPF0t6imWawkdCHLCnvavt/suQk5JtGOnK0Ht9291AV51FZOm+O08lbbFGMeP35NY3zMPT0WQx63OiXTvCDNvtVwgzQg3LerxOR2kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778685634; c=relaxed/simple;
	bh=KtIZiCPw5ovCBhfSBUQV5q4kDke5ekSaYXNgxKg25vE=;
	h=To:Subject:From:Message-Id:Date; b=Z1L5YamplJA0fhqFyUjSjmTt9uSRbNre6c8FIa7NMJ5zREhhTbwUN7IT9plxC1i2L19bQCmIXh1GwAg8EWK0M1Nb4p/T2cYEce5LkdL8RhiAH+az9VXIB4t+d5AgZIt5KWmIbMD01VBAsTSpmZsRY1vcJSvvC8oeK5k5XFzWKWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Efrrv9In; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Efrrv9In"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1458C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778685633;
	bh=KtIZiCPw5ovCBhfSBUQV5q4kDke5ekSaYXNgxKg25vE=;
	h=To:Subject:From:Date:From;
	b=Efrrv9Inj+5TybKrXCmXSsEXhrWMMkiU/1HAlKsNYzTOcpNTVIcBwosUsku7rL9e1
	 qkocaXygscp4sYyLG4BdVR/9YZSmCDUQratsWuHEYiGNwnoEIeoweXlGvb6QsXA+ic
	 FejzhReekU/UZ9ipMs5OOU9sMcyyo5KwciLNSNhwM7lsZsA91kZQdESMZZ7Rb0QIcY
	 mMsyLG4BqdFBVTDaroxqaknM2MGY0TCH5Pm5lyb0n2F9aGHgJheAo+XuKtCnhdQaJT
	 VdAaDSgSi8EYpYxjpnzzvoUFb7HkWlk/Yti7dAoJLjme8rTpYU1DEaNkX46q9/l5Ew
	 vy7p1ZQeIj6cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7E4CD4F24
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868563368.17242.18446705025074112659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf84964de05e6280ed7d1cdfefbe3b5052ade3331084d44ee18273e34259aa39
Date: Wed, 13 May 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778685633
