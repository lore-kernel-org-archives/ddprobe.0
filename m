Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCCF7262E
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769249634; cv=none; b=EPiBRQvybvvrtGhoHDqQWX+cbhEidbl0lWpsf2rO4le/5cQCBbbV906F1n9vdlcuQ3dZ5CycyKjuYJ+K28kShH8llpSXe2ybiwzL7Hl8gys2hHo88Ks+f+H9ZM+QpqN/VJ7ejVJCZqy9HTwusnzE+xilIFAr0zUgUtKLwgFJuSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769249634; c=relaxed/simple;
	bh=UhkZHo+130bXk9nPdCptjPYuMDkWiV2RrrmIIq3rdoE=;
	h=To:Subject:From:Message-Id:Date; b=NZJqo3GSHfts2ouwPvqhCwynGqm+rJr9AQDQS5TIdu4WNm5HDJLj1IvmLusvU3C/NXW4buZKNVnohyJf1h8MZFFPvXDvoxuFu8itjK8w1WlFnh9+emhcl2fDKFNLiepcdU1GhzuapYUMpN1Pgk/jXsiSglQaMy+AhjHUiZM1CeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtQOh9Sx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtQOh9Sx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6F8C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769249633;
	bh=UhkZHo+130bXk9nPdCptjPYuMDkWiV2RrrmIIq3rdoE=;
	h=To:Subject:From:Date:From;
	b=QtQOh9SxdMPPiVlbBbzMwtT7f8S3Wu4FLU+RP/QojYiQxwt+QXT/woc69mCo2T6aS
	 V3Z1zt3p7FaO7DcTw1yTvZXGHAbjqiuG8BhCtwVpSIyVxqgM4fzJAd1egrm41mfHVO
	 yEgJo4AXvYxTDC9FsvFGA3Zva2qViLu5D8XMqpcmUjZemanPR1+j57hP8zYx7pulte
	 I+HuokBDYHGs5baF0hpdbHe38pAQ+v3x0KBUYOZk0mPgkm2lqZmkWu/rcTt65cAo78
	 4rcfLeiW10I9Jyhqi1pmSNUGsTGsDc+OBaT45shiQxUu5c1hkeDzSk5c10YGI5Je0K
	 lhgoJK+C6XiIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BA9D715DB
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924963358.1494.3074596009027433899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c858e197003fae2bb32e38004a21615f3e6a4ec7ac4539993382052dd498dc7
Date: Sat, 24 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769249633
