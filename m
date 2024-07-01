Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A7517BBB
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 22:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719872123; cv=none; b=SEHJMQkAbSzEOBagYVQ9RUK5Uy9bRwUSx3/JlFgVfFyy+qNyiQZZS1ZiPYCOi7U+gAa2m0Ssr4izbXC5c2Bn6m6kFrxFSa7z6io00BaYu7J7P+vsftB5gZ5FXE3FV41yKaKXJTkTAZ2/2HpKaNRLwKoUhmZ/BurkQ5Bj4wgNNj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719872123; c=relaxed/simple;
	bh=CIDHutq5gpA5sMz16KTxBCZXT1/aUFNg+9Zicv9AOks=;
	h=To:Subject:From:Message-Id:Date; b=Ywyl+6il+nbUVqkSWwEH5S7k0uG5RQw/LPx2Y3Nbtg1yUWcZJbU8/NeOwPd99TBkMMPH6O1s/mDYHSUURgPh+DDf7dBRqQ7CDaEViS9zTVLVyip7EjS9L6r8B3vlxxS957x6gMhguMv0NxoK9fBWGPQiB4w7SB9r4I6hs1yeu9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ac8pTsAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ac8pTsAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF659C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 22:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719872123;
	bh=CIDHutq5gpA5sMz16KTxBCZXT1/aUFNg+9Zicv9AOks=;
	h=To:Subject:From:Date:From;
	b=ac8pTsAb8BXmUSmEnxHfZqbrGXfIfiHH1kxDV810yB3CqJq7NnPtTZZvPpztWUUhV
	 NRgbFHwiJZZ0tXSL9/+7as2JOCnntNBIkKb5tmYdchwTiMBZh42kKVNG+zmSOCzlP1
	 6njpo2n68eFnCQjiTA42DC0TblRyoBM1Jidjlvq5NpaSbWs8l+AIE/4Wkfxpnz12r+
	 gOGsb32Wm3531iIQAeXQSUPtKX8UgMvTquZh9yeLDVsdIMF9FXMEVrWoaj0jCM95pL
	 khGVG8QvJ7Ix60T9Zsdv/RRHw4lVOP6nxnd3oDfbqcbb//NOyQE2zOllXD+lv8yM8b
	 9FneJQoXjrnJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D762BC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 22:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171987212284.11402.9072312303940351915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d44974269baadb5b6721a1acdb42c4748425eca3a9a7f8ad6d60bc786b95ad
Date: Mon, 01 Jul 2024 22:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719872122
