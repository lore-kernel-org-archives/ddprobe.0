Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587781849
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 01:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714095143; cv=none; b=cWcbI7Q3Vv4e9xjkVwHyj+/U11FGGHr9lKu0ZIFqQQvGT6yK7Z/gMF+Tb85Gj2qFVEN8HRvUoKRFxYEGD4pFlnhUecedVHMhxST2Mr42T2jkjH9OmgiiRoA0GsXOjixIpkN4Y309bALMOxZChg+eV/6WWzMN24bq96Q8eR4RIic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714095143; c=relaxed/simple;
	bh=U4bDaXMfr1/H4MREzqhVkmObZ2uYZRwsEXnjcgfEM3g=;
	h=To:Subject:From:Message-Id:Date; b=oBo5BXbkDp/BLotsoVSgdlVODrhTAObNjZsOkxi5wu63N+DBtQohWNmAnKR9Bk51DwJStsCKFyFbOS8dIkprNCpVykorif8k6bhtyzduH97q2JUvvZX1kk4mjSfiaDu6EaBBuOOn9vupqwd24ZnePOpAoY2/4LxRNCwDS1muuUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRRehC5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRRehC5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB066C113CC
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714095142;
	bh=U4bDaXMfr1/H4MREzqhVkmObZ2uYZRwsEXnjcgfEM3g=;
	h=To:Subject:From:Date:From;
	b=qRRehC5PEFiZs4Xv/KWIKOtmKDeEypOajlvAfbKZ3gHXqvdV8kgYQKYQiFkQrRyNY
	 RE5Sh3pEJpk0UAcD5o6Bm1Q/ePGh/M/2Fgyu3quFqkKvsMMFH0PAvs8Kkcxc5Z1/6C
	 qERCiDbHIROHSn2CY+zlezIiAmf+eaIdQyMUnmh4xUZb5M3CQvs8lDI0CYnjLCxdde
	 pvxUjeFGgzT31elciTGyOdNCHNR2wCtjKAKgWk39KfQ7S07ILCgocg4cR4E1rgKhCe
	 EP6u8e1qqRQSJrhBbnQ8TJsxlr/mxoNi/ka/LtCgu2Z45qnaaFqW1a5nuFp74EcjDt
	 tbB/92/lOFLjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09BCC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171409514276.16952.6889378947966652305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8786045cd6c58a4ffe6fe138c1e84cf8ff70600c14126d2eda02d0d0fbb118c0
Date: Fri, 26 Apr 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714095142
