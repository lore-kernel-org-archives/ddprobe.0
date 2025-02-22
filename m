Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD7E1EEA33
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 10:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740218934; cv=none; b=Ujj7uVqRYkglsfq3/RdSOLixVZG2wiPmgAKYrjjFWEIgpLtcK8ev7S9DEizni6t7KWcgqlWeAMsuzNivtBq+xSY/7lv9k741GsoAjyqC2Prb1L85hXb1htrE7tmIktz3k9QeKrPBsg83iRLvyrKv937ofkKRM6uk+Z0BbiWG6/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740218934; c=relaxed/simple;
	bh=h96JzXPa4mR/CsfeSLUJfJJ3NMrIE/MvBL75aAuTKgg=;
	h=To:Subject:From:Message-Id:Date; b=Kigxj4PVQsBvbVNTgu/RMks98XTKb+KWASZyrTqef84LgKK3jVP9/nk8l2x/KGfIUEz3Exm6ZIwj69BM7MVfTm0N1C1CjkCHcixdpR7yHPkggklG1MZA00EF0iztLLvfZbaf4qVs+uVgbDKQKvba6dYiZXlzzAgBQUDszMWR++Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAkilRz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAkilRz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D3AC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 10:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740218933;
	bh=h96JzXPa4mR/CsfeSLUJfJJ3NMrIE/MvBL75aAuTKgg=;
	h=To:Subject:From:Date:From;
	b=kAkilRz9WQf8XsaPRJngjLaxW/HFx58sg6dLvbDAw16lliESWpKi3OTWSxLBHM1Oy
	 uVUGiF06Owks5huIKNyJ2o1+WOUosa/o1P0wpeyM5Ytik7WS0/bAgImFusgW5oFxTz
	 FlKKKlXegbVpjl+3PP43fAmJdQuBSbwAvfOx5TOGXKfp4B7O7Pe5npFumQuF6eJUfj
	 41g3pAWNOfVkpRQEIC0Qa/NS4Nh4MUNbmo0V3WZBir+l4ra1n348TEvMxJZO9J1syB
	 9Ayd76CAs41eIrg9GL3lTOHG2NcLomcX1Um3XG3Ps6ouQDQhZU8Qu4f2tWXxovJp6p
	 Crvv1CvQ1d9Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D622C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 10:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174021893361.29603.15902125816442902793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b753473527fac9e9ea4bfd0e6002c41ea4fccc2a3f5b00bf6b61112b91e476f9
Date: Sat, 22 Feb 2025 10:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740218933
