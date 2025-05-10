Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287032747B
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746836394; cv=none; b=RB5YJuRKRJHzb3l8RsOdcP62Bu4j7tV989HFjP9ScwQUms2bYLzi1F7Fhs3pCydvOkLWGbwmtcj+z7FEI2UlznaA7sa5zMccb0VSl0pvmJ0jFSQzaIKlpKycdApbOjwLYTIZy3My5+eTM9eYKLTO99IHi+M8hM+/11YFO3nY678=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746836394; c=relaxed/simple;
	bh=b50CXpV0lZVpUTB4AtEmXxJw7gx6MAyfumfxkhROtgU=;
	h=To:Subject:From:Message-Id:Date; b=VG9p3x9M7b2++aduxzx1Yq18y1WsaDOGVwl0LsV50UrU3++cUj0Xmv2kuF4us8iYdUSBKgaklkbYNSk344/X5KyQ1g2USjAdTMVkOuYGmIHyWUN8t/EFzhlk+PZ04DnyeWKxXlH1CbJODCnpJwhNGlNkqpFVSzukP2P8eF7DOjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EShku4YS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EShku4YS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19E4C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746836393;
	bh=b50CXpV0lZVpUTB4AtEmXxJw7gx6MAyfumfxkhROtgU=;
	h=To:Subject:From:Date:From;
	b=EShku4YS+ia3uOgEpf3TiTu0K0bS2ymquhlW+c+ukKo4yQKDFYblWBIVF+TLH2GnH
	 Uw5gPwUdIvsJcn+hzCAJJfnVm3lvze9IBVOaPOMwxNyN9qg5TPT33jvt1QHj7vkZQg
	 I7u7EW2pGqFIdXm+OOTWVT+TuLlTeN45weLGOBIxdHJYi+umxCYKPyq2eF1BL5mI1a
	 UDY/oisP3UlVG87D/e0jQ4Q/vAntApzCikvmHB1Tc3TxhX5HUxdfmI/jYL9ST3tqwf
	 CEb9drTnRVZsr/bdTor/oQpZkrS4IV0Cu48mjISztU0bvIM7B/0uSaUBjYFeh8tm/r
	 RFShjMm3+65BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E997C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683639357.30146.16774061955843086979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b4a33ad684694aedc052d8e32ba282e21c4c5bbaf052e0fc2fcfab294ad888
Date: Sat, 10 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746836393
