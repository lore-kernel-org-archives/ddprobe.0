Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A794157E6B
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728158154; cv=none; b=rXaoxVD5s3n5di5B0Z/3JmViN4hf1fdPnB8cZx2vkCMlLFYmfufAcpFiHh5Mah61geiS7tvMnRSkWRi05koerPgFoKFaiFqtY4FlqQzN8PotVa0l26hIIiEYQTThH0fSAArzUwkZK4t9ziwgHDAoqlu9sqnKqQcXCTdaNH8iUhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728158154; c=relaxed/simple;
	bh=Tuq84OcHRnh9GEaAhTFFv9WcylI3fsoRbwbWuHXBXwQ=;
	h=To:Subject:From:Message-Id:Date; b=VPQJXWKoD0zovja3g0aTT0gPU8e5z/kOXb6gODH3A6rT5f0pGExSSxoaqEssEHcIL8ONjrM14rhmQ/Nj1mT5p2O2K+KeYXcUVMYwdJzjSxvJ2T2adiZb83ReXyQbLDQr4JwASkUgXZA0P+52gicBs8FdnUYKspcr4i4IqRYXXkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vp684LpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vp684LpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A53C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728158153;
	bh=Tuq84OcHRnh9GEaAhTFFv9WcylI3fsoRbwbWuHXBXwQ=;
	h=To:Subject:From:Date:From;
	b=Vp684LpCsKozXkdqOhDC4N8nqvc74SASGRCGD1tK1z1ip4XUR/Pe1DmAkxaabrkLO
	 N6G9KEQNPVvJ6tjth6us9o9WcfMa+wmqV1OtmfuUPG7hUGMiH6xWP5nX4y8t/eMtw6
	 DZxaSGASJWhpcL1oRB+TnA+EvTefxM5uWtp+kYIuzxH5Vnoceu9AGgVEvUQ2RZSjCz
	 Z61y2X2hlthcaNXxjj71LY2U69X92J+mLgH/FoUdJYbee7IjNP4DiGV23CMprQUZwr
	 hYrBYhU82oLtceDrF+LU4aVt1WmQk/TindXOImvaEgaf6pImzzrE3JyR7K2LmmqcAB
	 CM4fO+U0SU4Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E74CFB42C
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172815815361.19194.12526899892280211241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cee960200f31124c09cac6c68791b245daa2baa32dfea3065758c5dac24efbd
Date: Sat, 05 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728158153
