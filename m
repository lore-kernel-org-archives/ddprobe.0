Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175BE2F22
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749947394; cv=none; b=swdtUdCq5nYdUsT9TTbyID0mWkWAv1XncKMpOD6hhBPW19qIEyjJXf5X62EwKkcAKkzXz/1jJYUEh1YmLkX+MS1sgezXVROJKcHxbHSdwjjiXIG79jrgp5NhVbWhg8pbZsoT27FH8DVEG+pzg6GoUg372kN6PyJhlbwcJbh1ja8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749947394; c=relaxed/simple;
	bh=OJeHHRiKZ4xBFkmlj0zRO97pNCgYatG8ol1vUN5tYPs=;
	h=To:Subject:From:Message-Id:Date; b=Yg/mpbSKwSvco2fNL9wGrLJBeKUDpQpkBdj4PnfyWkhGYR04W8XWBAT9Ll3GrwmNFM8FlNagXLMubQZn5az/jQiHyYlSM5bBYeiqbbeNcAEaG83zgIfN//8LKv0fT9ZjSJg1L7tdvtNTbOtaUdy5EiLDZkawgV9+KcpfyG5PXcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvK4NVgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvK4NVgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5330C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749947393;
	bh=OJeHHRiKZ4xBFkmlj0zRO97pNCgYatG8ol1vUN5tYPs=;
	h=To:Subject:From:Date:From;
	b=YvK4NVgwICE99U3eQu1kDiY2/Z2RtEutMb0cMaPrKd1aEXHYAsOfZVIIoDzslbD/6
	 CneFyDKvo79ayGJuH2Mua4b91yznl3gLnsfCnF2hCsAQxd0dn2VZ9uQCF8ZNlgR2Sx
	 gXweHQ8io1seK3nnk2F32ZWxMqIrjy3EsR+xb7TOfahZyhYGAM/b8bVgEfgJYrV2Kz
	 Ii19LHAQNOsX2KJkfFAiQPFSM3Twcpyezy0EFnNgHWy91OE0PcZKZ/Ornjns28rkgs
	 /LkW+mi9H3MGF4MPlTmeamwbTO4cMP/x3qb/QWUb0UcLnEiEYO19LxjYALLeFb6s8R
	 KFmaFUNL/EWag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90593C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994739358.11482.6782614525411814714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 858d61390bf6e24a1161044dc1b18312717f5dd4e620887d1b94119e1fdee0de
Date: Sun, 15 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749947393
