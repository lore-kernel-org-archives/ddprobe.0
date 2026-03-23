Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E6D308F1D
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774292694; cv=none; b=QB7lZZ7qcweHyOXgmFXK+R0mwxy+tO8ACm8fRwwlnROyzE4TLK33xsQzvcLl3Bu+jSn2/JMSxf7lWJM7NT3Ioc9mGpdZxoBV41HC2ve5jT0gx/S8fQfDZw4NrFtu89ZZCWPm4XzQ8Ew200gzUk5AYiiYu4MXeeTEJvcYSQuGC70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774292694; c=relaxed/simple;
	bh=K4KDXKcK838bZYDK975xq7+D9TP7JjYokVDqNZdPSOc=;
	h=To:Subject:From:Message-Id:Date; b=GS3au8tpbASMAsWbggy0zsLkY+K2qJTO3uUYSII8uBfoa4wSFJ00yQTv65ibutIbjrbS7zscrzn4XdJn2AWMdr10A8gP3lBpI2/xD7eDO3SVzf/KOwmJHlta5pQEZ4dnnn6U0xJBDnLJZeq089XwCvOK+PHrkXwTBxp/RvPhqR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1RD51Zo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1RD51Zo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A093FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774292693;
	bh=K4KDXKcK838bZYDK975xq7+D9TP7JjYokVDqNZdPSOc=;
	h=To:Subject:From:Date:From;
	b=N1RD51Zo2UvbzIJCy8HgEABg7prcNOP2frklWm5i2iOCUxyN+jKy7I2Mo4dEFVPIr
	 pvfAxBu3y1lDdLb6mdudjFPRZO5xUV0OI6qiaWAJgMBCxoHlKkWtDTbbhKe2qy4Lus
	 OXF2CyE6KKomwQ31IqepKYqJPqimEXD+4F8aEbMyxFBPumVZshO2SiVcp33IUMweF1
	 xLRPYh6v4Tr3QHlme6VV6Iv6ABCImHgdVNaR11Hs4qTytn0418DiWDBlKAu+ICeit4
	 j8jwWTts/JOkFDRsZACLVZdCc3ZPO9jj5ARFaCleH8AVsRcePeXEY2M6/htLR2g0Zw
	 GJ6OKP9JSvlBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C89F483E3
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429269358.3721.9761937077464182754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e2667dbe9ddecd211786c7760506ee59bbc8313660e6de2bacf41a7eaf9503
Date: Mon, 23 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774292693
