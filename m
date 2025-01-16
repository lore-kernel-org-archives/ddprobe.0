Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC62208A7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737027954; cv=none; b=KA2LvDd7XRAag4cW/k9a/eDt2Buvts2Glpc9Nxi17XjArOk55PXYk6owW0s4O2Ed/XByZaxqwCPcVYQENG18Wqc4eJlxxvNsOccEyVAnCD/oPsWGDghDE6qbE0DAqgrW5N0BsZJLA1G62rpjTqNjcSVGfdGpVsG+bEujyPCAw+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737027954; c=relaxed/simple;
	bh=YDZKV+zfi+QEUFqm/N0GtGGoxnuj9C+TxZSUtKREUEo=;
	h=To:Subject:From:Message-Id:Date; b=IfaZSHDD9vH8E0ooqlh+Ah3hlWlInHHoWTjRpbd8a5bkXaw8fxjE20B+SEjg74tbFwMnwprBzpPBiEB7NdWQu0n1+wT1H0lFDNeHmSc1os7Zv/KlKNYw7G0HkoNzFFlxD0+wdjnKAtSu/sdN7LZAKvaHeAeq55oTsWPj1qVb0vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhRbg5PK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhRbg5PK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9780C4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737027953;
	bh=YDZKV+zfi+QEUFqm/N0GtGGoxnuj9C+TxZSUtKREUEo=;
	h=To:Subject:From:Date:From;
	b=AhRbg5PKrL/llB/HveoXhr2RYoYvr8fa3+tXKaRG6EIOGdv1DHTgEejaqdpfVBK+M
	 KKJEYS4tso+jhqwYZ+GhEkXB+uGEznuo57NEcosJ+iFbiRmZWVJvKF5b2dTaCNWCq2
	 6tBdMa5Q0v5LU+U96ofhANk4P76tmz6IJZejom6nacznS8lYGqSvlGGTzaDC0aQL2b
	 skXAag1an946VjGbGa6zOWrbSqH+e3ZtckemMR6lnst66bE4pNBab07yQuRfmL3xvb
	 hYVy4r++VUF+v7axwJUpzq0DpC2PmwW3Ws/EMSJHl+aL5aYre4pxptMisTB/PIoNav
	 idivGOScReMFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A568C02187
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173702795362.2657.17626267470683927136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8e286e6ff5f8ba806ab4a69ce02d352300af178268e6d852bca60cd71e8bab
Date: Thu, 16 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737027953
