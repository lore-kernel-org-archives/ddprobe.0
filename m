Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BC226D4F6
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747647594; cv=none; b=Fl4KjBTFLi3KcfkBjJ2258wWa7b2pIfadmJFfV2lZyK5uz5dyZyWGds4sDOUX60T1+uypYzPDeLl0igzg1ygNRhVgATwAqxNHUAwMXRvaa/5Y7jiYMiD5CCQOEURhnobzx2E+AVqAq9JECH3GRSqf4/JVr3mc+BLj3Gffip51ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747647594; c=relaxed/simple;
	bh=dPZRl8/7BfJ2ONoi0acvx3soAaD0XBnxYgXngKnHb18=;
	h=To:Subject:From:Message-Id:Date; b=NhhtjifSEtFoyGh8L6/uK+yQ4rZtXuQHsKjb+qx4tA8pTC1yqL5qWak5ta7VLIWVF6VU1ysUbkgxnKn59EiZJv6KjKMfXe09U8HE/hpk20N4n4wLvkdUBF+xo7v7SRvj/HFqDmq0okl6Ol9GESu28OqfsjcMLEtKEp5yLHDD0RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRI6uuV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRI6uuV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65CCC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747647593;
	bh=dPZRl8/7BfJ2ONoi0acvx3soAaD0XBnxYgXngKnHb18=;
	h=To:Subject:From:Date:From;
	b=sRI6uuV/vhn1T2wuAjaL5Wn0bTFhKjbKsSvHXp36BPZ5P5Ukbt+NfZwvvHjcybL8z
	 YFvBVNL1WsOwOusa1aKgzagd4lMx/jfsflzJZ7oTWeRmk+th+Qb2Ri+OpTifWG4DhX
	 oy0e5fYwCJncHIqBYj0pxwdu4k5g/lR1NazAAwxFqSZw9v+hr9DQQHESs0JhZX1cPJ
	 qKKomjTL61kcGgyP9o+dM13A429kUflMPsr4pvlGjIBDSp28JtoXnKozom9QDhWlDe
	 nGAtzFqNGWby/4r1guttlf6DCSW4s2xm7FPbyTAkzGXXj7HteCfWMzvM+GRH1ix6W6
	 rkIiqPd93Kz/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9568FC3DA6D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174764759358.4829.99594485142869745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2084d316b0ef63f0ab505d6ba4d487ddb0a27c4fe1d3ef2fd1274266334f1126
Date: Mon, 19 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747647593
