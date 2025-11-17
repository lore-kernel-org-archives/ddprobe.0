Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB2F3324B3D
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763414514; cv=none; b=lDfw58EruVjxsaPRvWSRj5Sz2PtwTAhw5W+fP/o+nnRr3pAzlI9+nzEWPYW75bylp6+aWWrZqlCEZuO4FwuduZ1sxHo/KsDvLuhcxBdRLkLnyq4sVnbq7xtIdWfndyGz0xBrmJEyVeRSw3Tv+9u5g7Xcwna2g4F8xKvZB0rmOpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763414514; c=relaxed/simple;
	bh=3K4uP2w3ZChIeyryy42FDrYa5MNdBKj2btpvteCrPGI=;
	h=To:Subject:From:Message-Id:Date; b=IPi0qyLQlw4gm56ZODvTkP0tsKnaA9G79+4dshr2k/IufPffU52OFBejr6SiYkbIBARPRJoYbwJklaCdKzH3SjWfLl/LBgj8s9sd49kmqY8ZKboa+5dFyUirwpTGMxP/gOue57rv/OOzsiYXigmTfNBxZiFyoAikTT4WQ132RjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BiCLDG3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BiCLDG3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFAA5C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763414514;
	bh=3K4uP2w3ZChIeyryy42FDrYa5MNdBKj2btpvteCrPGI=;
	h=To:Subject:From:Date:From;
	b=BiCLDG3lZiG6kHf929aq3oljycAvNFWiNprxr6YtJ+G7jasXaNTcQnGEVXIQbezIf
	 xzSkzBElFMtSOpb6XlBktbVILoRXArqBYbtrqGp0uwMk7Lj8qNqFooDgBTshuGjS43
	 tObYaBqfRaKDPokPiDJgRj61os15TrLG5kLQQu9GPHGgdkFI3DTVUapi4geTUxTzJY
	 bqAI7DERRvjjpETc/cxzD4/yz1Uh4OaSbSshVsgtEBiSBnmo5eUNgZNNb6qXVHYB2d
	 A3t9bNazuoQ70s9/PIdpcxyJ/05mC8oSaYzxMT3UaZ1n7Z4unwRp++9UVWOO51ggTa
	 CTQcGpRCD8NVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D0CCE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341451358.23347.10471229410635912616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4b07f9a19d37cbcf3e341fc234c6f2ecf39ffd9c2d09ffd90632bee91addd1
Date: Mon, 17 Nov 2025 21:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763414513
