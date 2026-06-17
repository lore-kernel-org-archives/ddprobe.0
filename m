Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334E02BEC5F
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781740594; cv=none; b=QwIUhcvmbptsJ/kXdZA0RUS+xulI1Q1+ded1yQEHywbK5N2I1139M5DzJ6LvTnxBclQrtCrzgTrfOKjAx1Q5L5DSv5V1uSy/k8vDMUP1UpISkokDBaIOJHOOFZymtT0AzkZo5+mnNkpcOWowJG8giJRnZryNPG6cauctEORLmy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781740594; c=relaxed/simple;
	bh=VNgbw8AHH+7eQRcsK1GMz/vEokhJN7WHEZ9+5VSKKVY=;
	h=To:Subject:From:Message-Id:Date; b=G8yqNbGmUQTiElXhif+aHxPL/aDpAqbw04tIPnod4LiT82bqpCY4VI9pZkfTwK3IHearYWzZgsU+oy0perRBjDdb9yf8qSkxsji+YCh8wSQnruDshutpA9pwZ8e7843xnvZxj+CQvxLMSa66GiSEZXOXBDVU5Zk2i7P8vuAw2EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAHOf3D2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAHOf3D2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D036AC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781740593;
	bh=VNgbw8AHH+7eQRcsK1GMz/vEokhJN7WHEZ9+5VSKKVY=;
	h=To:Subject:From:Date:From;
	b=fAHOf3D2OFTLUCtBj18UvQXIkBrfA2LXkwwkH27CHpcPI0L9WbSeXZkFSykWO0ZDj
	 gaZUGYoWtlmtxcQVzn0RVyXq9QNBK98NMJzlT8bhjeTg+zLmn1fHqT1w0H1DuW1L3q
	 6YuseuO/treSFE3cUIdhDtoURsHPM7tAq9TVaHS2UX9USVi0Nq16CE+R8szW4FiF7Z
	 emMKjeDROOcxc+Hv/9SF88ckyCtVvLO3jjuZpLMkA1839qao9/nDjz7gmet2M3Chld
	 VALeoK4RYn9OaKVNfof18ee7h6kQuGAu4/ISzQhTTV7GSsdyI8H9qgxNdLaOsmLhRO
	 RMyr2bTURZaLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A3ACD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 23:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178174059369.11219.18311270744634593714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a08bcf1bafe873f9048a896a510b17a014e04565dede69475c6ac3522958d0
Date: Wed, 17 Jun 2026 23:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781740593
