Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB5B2DFA48
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765013574; cv=none; b=ZShQmbR0sZF92pTXczzuJwtkppJcVXKcu94tpIHlfED6eJgXjUnGiT9vuVl4B6fipxJhK9R1G9nR4GywwYYhwFIqrNDQXv9kAFmLvA031h6sbEJ0SXSfaCCRIKrwuQ/FGYhqzlg84UWUVSm52wuATE4JJqPcv+GMT3k53V1nKV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765013574; c=relaxed/simple;
	bh=2+3sx1sQe2uv58aGSUQmHaW0B5o5JAit1eQN1D1sQM0=;
	h=To:Subject:From:Message-Id:Date; b=TGq32T6Gm7mZdpgbLWiuM61HpaBb1H3qgb7iLOvqmgZ604Y65tvGDFC3sD7cLs47YkwfYSr3Nc6bQ/GmWnhWuAFOzIM0SFMVeoLp3y2ZJ3ALMOskL5AY8r4z3nxQu4R6cRLzCB14gVOUkgykjjQ0ciQ9S4JCp4X9TTp1aWyF9Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcV7HOKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcV7HOKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95DEC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765013573;
	bh=2+3sx1sQe2uv58aGSUQmHaW0B5o5JAit1eQN1D1sQM0=;
	h=To:Subject:From:Date:From;
	b=GcV7HOKL9Kg016089Rh1q8en6yLjyE70jtrIHh/2QOwVHgEWNyWkzQJlliehxgpnb
	 f3ysDmFFGuxuG1WYsIJUv35NAGAEszyDyOhy3XmAs/xPBZrNz2blpR8gLohsxGl8/f
	 gNCSf9gxBg2Ump32mHe/3MdYQZfVNchDHY8IpGPHBZxgYTb4KWPKoVFh7hHOr/eLUg
	 r3+QXa3edSezLxPkP0iyQFcfob22R7wSCu5pHHwBupK88PliWaYnLI9Pw4VcXfHJUr
	 VT7tJ/VDUWi93X9r0t6xVm3nDzko1fNBiRVf5Nrrn1UnpjsNZqUmCx2G4CDWN3e+wN
	 //JH7LUOkgW3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933A5D3ABF4
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176501357358.7701.6000963614164247410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a95793cb3e9c87778e1734d621793703f0886c3eec87240578522ee4b2902a9
Date: Sat, 06 Dec 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765013573
