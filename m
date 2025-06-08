Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DFD7483
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749358194; cv=none; b=nbAwUGAprkGmCsW+N4BhC8t6nN636VYJ4RH86QoOpMHCNSEu/WRO0B993MomTTqKhXsSxQbS2ve5wyYMtzisjzNjYBFT7//zCSOA1WwpUA1R0ZBtYyNH1ARDUcvgGZeCC1vZA2KF8BbuURLx6eGpYP/MsR5qhRcPFwn7QCXkWGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749358194; c=relaxed/simple;
	bh=2E/Iyq32IwzHKsJGa12T7ffQUnUj+DUW9FlIf+c1tDk=;
	h=To:Subject:From:Message-Id:Date; b=utaBSoG9AcrQlYl/9PcVAY1lP5yBbzCu9y8jn1raRKfEVzvl+MS0nfPeFtkjfi/kjVEBhASgGKTKAIsGyvJbwtwJaYoKSCx7ANHBq25E0Wus2ReXKQaSk3yx/q4M8anfMjf1Pu+1sA98hR7PxYrx5bcSnoHxfMd0Pum24TdcOtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=su6C6ZRg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="su6C6ZRg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85C7C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749358193;
	bh=2E/Iyq32IwzHKsJGa12T7ffQUnUj+DUW9FlIf+c1tDk=;
	h=To:Subject:From:Date:From;
	b=su6C6ZRgaCfXmauSRDR/I7JOm4Mp32y8CBJVcVlJ0ySVkYUjJTC0cS2Y0JW107YKQ
	 +8rbtfDuuCHRCddoajQHvBP6E0H671t/Qad8bsRIBL0UJOAPBUziBt88tXi8O7md98
	 hK1+y6SA/tNFznWlZqWgbO7O3w532+0ur0wRVdCkzrNfUy7v7PjNlL3pdFloZiPKLR
	 qkhudVAWTA/cJPK/ajsnkd9VPy3Fh2/PSpOm5AN8CbxzFmbPid+d3GwyyO6YiPcg5y
	 lqw5hVoTkb9Zc47LkAiVt+07nX7h3Xl8Xx6ihos+fjOGZk/I53ddtJOg7jqqQpAB1I
	 mWSU6KFFtaPcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95953C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935819358.6961.4824609266856370484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6945d0bc93234f0dc32d698be8069e5b713053affc6de71cff38ef95f112aabd
Date: Sun, 08 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749358193
