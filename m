Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278AE192B90
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749398394; cv=none; b=cZ+nyNNgRAMl/7eTmU7x2A5UdMOmhU5j1iwo9MdaxRhMgEazgDd1muibBALK0ZoG8+yAqoVZJfezBELd/2UY3UqNzqQy4guv794VlJVZdVrrGmVsjUwANSs/mC4uYZ9NMlehYTsqR2IPbxjKJftgKJ9vziZIrS76o1YzIoadnPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749398394; c=relaxed/simple;
	bh=T50VRE9IANKoineCfz2xYSgiYTiFbd8bLYqSGwVmSTg=;
	h=To:Subject:From:Message-Id:Date; b=ev+3D5QjrQiIm/vCzWlnDbg1LgKafmHgp27Jnmui+kjBUJoWC8oIzxhzvFeKRCJv4czBwr3D/yTg0muQ1y7ai4t0X0JrGopIJ2TUCIezJL57LOEJC8Lw6fN8JAJy2LgzewLa2pfd5k2yr1xFlyGm+V/zE0wnM91bXiYWaxdSJuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwdovTVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwdovTVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6433C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749398393;
	bh=T50VRE9IANKoineCfz2xYSgiYTiFbd8bLYqSGwVmSTg=;
	h=To:Subject:From:Date:From;
	b=DwdovTVObj5e4SUpcwz35LSuqE8Znmxx3ngxaJdW5eEb6s7W24Q5Uc2I3Bu3kdCNY
	 h++Vy4kqcP2rdSJ1QAwKivP0A8HH8nHaK7zfhd2pXlmuhTPdicfSpZbjeAYuMjQxMd
	 Hltvv/SVln8BEyoqIXoVznTJ+AHqIxBOzJVLFqYk3SjtACtUSk/DqbnP1L19W6Fob4
	 4rvI4Grz2e6nJjq0jAroZoKLN8q2SPeBln0aQOL+i3+hx8BLKlcShO/bTrIoe//Cy4
	 W7ZZqY2cREnhrsVnh/C3AyxMpGTR++nBLozp99MAm5gGQyC1ZTZIGbxl5tikjY/byo
	 1/JXVqA9vTQrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9153BC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174939839357.30260.10522768815259091743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f4bfb5828bd17aac577988edf2eb5306962f2e6d32d27d92be1d39b2577717
Date: Sun, 08 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749398393
