Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7142951CA
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745620794; cv=none; b=InsQZAi5z8QWpU0XlWLP+9vOfayDV0f7wbHnlEVmDvqbSHj9Ucl3hpUhYr1n2FBup/IdoZeNf5t7S376yJ3L/aK1HnSiLoXE16PUYuEYcdsduLleKFJjfkTY8hvt1Krp8PrUXLbaHSp/eXms9hSm70j5i9wrd3r9pZwjjVnIpHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745620794; c=relaxed/simple;
	bh=ee8orM3Kw96MjE6ZrMSqtQQs411z5OVhxnezQg13k4s=;
	h=To:Subject:From:Message-Id:Date; b=pm9bZD8nPpUo5ZC8QhLdxLN7TqcV7gHBbncc5gxN5UzW375EmJr5ZCnFZ6S77uz6vVk6QkoLPjdmjqCMPD7l2nROiDMCowB6+20dQR11qOL754IziTR8exPKvHXVwMrnbeHnjr4UVChk1ljcFb9VZANzVyj34i/RO1v6LQjt2Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRaz3FX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRaz3FX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EE2C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745620793;
	bh=ee8orM3Kw96MjE6ZrMSqtQQs411z5OVhxnezQg13k4s=;
	h=To:Subject:From:Date:From;
	b=BRaz3FX6LOqiV3DPeaY7AwPCazmcT3xuxg/a1OmVNSlLloHPmtPTjXFWu64rrTAw6
	 fZ2waLNGmJD2asFarAqWUt0ogRUpWs8zvkZN+Zs2EaAjPYhU0nwj+GIpEf7yfvHDE0
	 zMoRwcVO6Jjfll4stBmNHoetmGF7yc3M1oE4840VgilS2BouoRVv26zfuJLen331Uo
	 incqkbUxRT41E04GBfTIfmccmAahE65Jet3B1+Wvt0YeG499vd/oBaIEC58OjaCMl/
	 S7jDBcOlKJNK7zVYioGuDN2sn2x+fDGN5Y5fdWbwJz6MFTDgoq9Xa8WCMdoJcJ6gDI
	 GNUSVYMHR/jYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC6C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562079357.13220.2042393016756434973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e53cf9efae16d982450864b99ed72a2b0832c7c43da537eeb4c4b267213148
Date: Fri, 25 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745620793
