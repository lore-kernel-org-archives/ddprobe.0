Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA4A22069E
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758399594; cv=none; b=dxpwOYgHIZqmzI5S1fwvDozjrOs5tsTPVNW8EVBIWp5BdttcdLbrs14SXz8/Ppqa134u2UZgSPWqTaKHuZzb2C1MlDqMShZtPp9Uro2m6qPO3OWp1Bc7X1XZp7VHvKlQ76IHpiB8mv4y/zW3Y8NFyCwAra2HB2vIE18cDOwomq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758399594; c=relaxed/simple;
	bh=mhoUlSzf6xUE3u9gKPY8tFlxHy+hWr/lmVIiFn2SUNI=;
	h=To:Subject:From:Message-Id:Date; b=Szo367KsNiL8hL5+cuLwHoDWMlqfdqNbMGLaX8NyunbnCJdZrEafO5Xo+E3iVZ4ayMH6FglKAo++CW+7cOGVzaeHAIBog2Gl8sNmNiBuA8x/peIOvpdLWE/f5a/ZDPpsmtXnYT4GIzLYJP53C+IxpOkUz4s9wP3+15xwbZ5FBIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHwgrfa+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHwgrfa+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D18C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758399593;
	bh=mhoUlSzf6xUE3u9gKPY8tFlxHy+hWr/lmVIiFn2SUNI=;
	h=To:Subject:From:Date:From;
	b=fHwgrfa+sRAJu02Dr5tkEundzzXB36NGlTJDdIpYRjhESjLxj6+eA7Erg6xcWmCHQ
	 bSh8DWwJMJYJtsw4CuaayEy895QVFDfwA5Lbg25AeknzfdN48CTDRqG9nAb4G11QM3
	 TX8DQG1p5aKJ630+had881wGQad12Y5TJXwcaBEdWc5jD2y6Qn5NZNgAXVnMPj/AB5
	 C+IqKNzp7qHS1kq/uwbmNAD/s+cFoATJp71Zxoko9c0fbScgaK1IdJAcj9AH2uQgcN
	 GijGbJIGqzZmMi0FULt9TaPZYonzGiuuDb7p1TCIqDNo8bhbImy036llt3MhySICQ2
	 mhU30CT2RZZZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92571CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175839959357.31985.6064015369570788503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac51ea97186ee505eb0b70e84c95dab4fdfe71bb8a244042bb9a03617da15887
Date: Sat, 20 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758399593
