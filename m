Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC0241D655
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784887834; cv=none; b=VTGyXxcHgx5m7YLgvWRfts+u027MvrcJvjo/CwPqpzm+JxkDgm3b3bLb5rekQB/fx7YpgBiQBV8tURG6FTKqpFOaO5NiZvSUbVcMZLU5Ta9GUY4llAowAHer48iiZLZAAl3emYArotwlNafNs4vk+9AkoM9f5QOJRl/a0J2UzRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784887834; c=relaxed/simple;
	bh=Pi840+rAffoD2+qVUf2ryYpQ1n9gRMagwOZFWKpSung=;
	h=To:Subject:From:Message-Id:Date; b=lsJRsQikvRdpRZ6qsUQ/SCa3MdUvVnkMHJHsciKCx6u2XHS4q7nSl9MTbXHCNoBqAII5oQdt3HB9I6e4PNBcnu9HnbDInz430JNyGhytZBNPuIDEiggpucIPC2WBYcv0/ChMZdbruSY3cdXcpcSQ4SL6I9ygZt+mqVsQurrAjfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ec+/19dR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ec+/19dR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE351C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784887833;
	bh=Pi840+rAffoD2+qVUf2ryYpQ1n9gRMagwOZFWKpSung=;
	h=To:Subject:From:Date:From;
	b=Ec+/19dRXinAdAb8huoUhfANZOifxDwFsl6YPTl9XotyCxha1JCARdRliw69r4Vve
	 5D+RUjHzg3/Lh+YmR7mQNITNpMNngbRN77gWJSOkR4pl5WhGZGbxTJIaL+drp9xy29
	 wM6Q9l1kDnqJ4KONUnVILfTBTeNnZsUZ2xxFKiZm6ArJEExxbntwPtx6qTbNBrBrdy
	 5okt+1r15bkxBZYorC0NXMpfHOjTgMtBrudA0OXx2PLsWgFJBZzdiX0SHQoaH/zMGX
	 3Dtp59u6ADEd0z878nYh1sHHsF40vQW/aY3JGnT5vSc7si7JbZB15TRDsOCja08pHG
	 Kt5j9tSoSbGKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E68C531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488783368.5893.15342439640836452467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909def2384726473c9d095dcc70d65074fb04ed46e08a619ae9fcd2f6cbe87f7
Date: Fri, 24 Jul 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784887833
