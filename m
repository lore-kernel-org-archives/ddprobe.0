Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2325A10F4
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728865554; cv=none; b=tZq27X7koc+9a4xbH6IW96foc4aHyrZ3dkvqT6HbEiekDDnTEn0SP2dy9rTSuurYW80h1WyMosGi9NAyrZhSa2AC4f73hOgVt4OTpaepp7/wB+yFP+kzNTQqS8cMMjvTi2Xdan9DILsGHIKmyWRs2XKFPFkwq9/jytk5XLUuRBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728865554; c=relaxed/simple;
	bh=1a0H97RcT7Ihi3iZOfQAn0yjz3G3lCzIpXHS0r7G91M=;
	h=To:Subject:From:Message-Id:Date; b=gKn3hTvKqDEYHAj4f5bDsMgTcvf+/u7rx+7xzI2Ds244uAaj4Iy+CltORZzEYnxsrNp/xXNUHq8KCD9ZxSkMAdq9dsHQDr9GgVTcf9IPyxIWn/FqOb0MV1lyJYi2TtLW6aReRZmRK5WX0OWNcTg+puqiaTO92ZqrTm3Ue/oNsk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dugm4hBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dugm4hBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA343C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728865553;
	bh=1a0H97RcT7Ihi3iZOfQAn0yjz3G3lCzIpXHS0r7G91M=;
	h=To:Subject:From:Date:From;
	b=dugm4hBswX9WzGNJ3eU2Xg32yCPuWKQYVK9ZgqUe2YycVd034aaKa6z7BJmAq2V8K
	 LqqEkw6UM+d8/Mq7mn/GHCDpgP4Jps9HeGJh7jmtGUJYd7cRPwGhSKsgrcalqP4f7Z
	 1K1M6oCbugFo/B3BT86ts4+yKQG4qXhhbPBp2AmQ5+3MG1TpuM88fWovCq3TQzp3Z6
	 YcrSfNXvuQH4e8CTKcb/5R7vLMTRMozGYL2VtmITrNKR2vbT55ndgFxf3sX1Gc8W+I
	 u+eLdXk/ccWe2dpGNQszfifafqao3ERBts3YK+FIo+e6TxheZYo2aaBHapXYCjMnn8
	 DFKnsc9FuiwgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99150CF258E
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172886555359.17126.17524730640527116887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a5f042bcd3f24d1e4d4c81c945d82cd17f0cadb55be371f5ecca219d950ecf
Date: Mon, 14 Oct 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728865553
