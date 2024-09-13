Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67C734CD8
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726259753; cv=none; b=PNF3M5dXMJ4qRu1wMB40YPcrYQ5bQw/9qafi062wGvi+1ULwoUE8AfhLvdCuPi7YWwQqpyjrA4541wfTZG0AsPY2/cx9tfJvpUmZ5bLgiRzc02fyHp8TmRboKwlFnL56KrJq0mTBl8WQGpjo2mjqPl+3xx9MXVUJA95uD9dMiC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726259753; c=relaxed/simple;
	bh=0JtEr/Jn5ibHIp8+rHsgfCd7NR4EDsb12CVlqtJ2rvk=;
	h=To:Subject:From:Message-Id:Date; b=L5znBEH148NZygVsOrdaOuX4OBXqkpuJn5dsWjBqmgU/fkK2UorHcjCRxsvjDKqnEPFENCzbX9U09pQ5oyQKX54nuJPXTxOKKzvc4R4CZGE4BwEL4wwi3XU+Oglxdpoih++U6JMsXbyzNNjlMbjIXkfDAsvAu8P7ZoTYkwWRu40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FyKw+Tjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FyKw+Tjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5606C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726259753;
	bh=0JtEr/Jn5ibHIp8+rHsgfCd7NR4EDsb12CVlqtJ2rvk=;
	h=To:Subject:From:Date:From;
	b=FyKw+TjxWCQ5DFu4Z1x2zHfRXKt6hDeuaOuRt+O2RjUE4cdjozewPLZEG5f8/1bzG
	 fyC1OMunsBoE1TS5KsRsLKA/SQUVhg7y4ImOSB03sBbBGScsHiJ1FNzklMPCXyw7VN
	 n25pgZ51wp3PXXvxr7ZuOTahVZYJRTSEuBMOwSDG3LRkWL0fjGapo+dpLnscc95ghD
	 KfpMZVRyuBxxd8uHrzYepJditC2s2O8rhYV2QzxSAKllVzk2C574ZoMsRGjBSryQTu
	 F2d9oTsIE+xJI/ClF1rI4BjN+EWgJL6f3GvoWJjcpq7qATiJ0AYdT5BMd0wRg+X90e
	 L+LvtPrIG9bAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1561FA3725
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172625975363.20279.731663866531076711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12444fadb0140f5b565a84c73f1609476550e522ee89523122937ad3d31a6f0a
Date: Fri, 13 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726259753
