Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141C927381E
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757530194; cv=none; b=GbbbIp1C3M9ghIaMKvmm6aOlrUQq5d5njj2XcfrQjgx7w9jDggPDP0f2Kq7TPTt1AedxjHlyFKO409OD5+kUtzcxLK94vhgIDeVVD2f0U8SJRV2r15XZkc8LU94buUxdxszp0M11dFhrDslrGvQFZ90V2spuBJMQDbOd86RUuco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757530194; c=relaxed/simple;
	bh=nwKP3qo334wAWvDTZ9Qy+jNMPEFNb1AXdRbZGSm2SgM=;
	h=To:Subject:From:Message-Id:Date; b=TFuc2sdsV3uHPD2dDGJ5KHPgHBftE/z6p1BptEYC0ASuYXnsj3oDvY2+EY0rVIpudB1dGHYVvnvwTKE9D08AF7NXOI57lxxn/rr0ykXu/1UNACEzZ6Src2ORGvzMCyTTniMzlPpKL7oSyAgclAblUKU7vWpYUHo4bVRV8RSyepo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbumB32l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbumB32l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DF2C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757530193;
	bh=nwKP3qo334wAWvDTZ9Qy+jNMPEFNb1AXdRbZGSm2SgM=;
	h=To:Subject:From:Date:From;
	b=AbumB32lJv1rZONAcmit35bBaW4mU9N7DxDTn1SBeLqW0CZPN/YLSMCxHs2CU6GIh
	 SaOD1lfz7jX1h9qGyyyi8Xw8E/que8euDDI/4RAdqb0vxXRm218dYib+wwJzZrjDdh
	 fj9VFI2kUU08Rk01HDAJ00AfRyfN2oG5E/dLpDws4eBPp2ulATPpcCR2I+uTQusZzl
	 BgqJpOFRgDyV5nmXdJKtmuClJ+BekfvMlNSk9aHFNmDMvmTmJqcXwKTdVQcHYvoo7C
	 uKHdhq5QMwAR6ez6MMZwkPkwg/P+EMoJsK0EoR47XvQBXHAey7/B5jPjbzgMg0qOxi
	 pTx/y1p+DNeHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FB1CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753019357.9772.9572790574231543290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06ad5763437cb1563382b6c8bca2167c3e3961a7a92caa4ff4887ea88c54adc
Date: Wed, 10 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757530193
