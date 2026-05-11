Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EAB244665
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778500834; cv=none; b=mnR2navgcy4pbbhHlc+sOymSmW/rRDVr44KYyg2DTEnyYtrpNuzB1D8gvuh8GEOZWraa4/7cshx9ztogt4YqaSyDiStIggTaujA+9LT4sHaRk0QKgjv7AANxtiuV2J/0n2FmlfIQ++qlromDBtaJFg/LIkUjM5uozjrGve5Js8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778500834; c=relaxed/simple;
	bh=gbfkJeFm4mhHmpKtia3+jjv7/w9q/mWqyJ8ui6KHB/0=;
	h=To:Subject:From:Message-Id:Date; b=UuV3F8BO20h/2OyrdJSGkI6RHt9YSRNjz5Wea3WqJXOQUSAdUYTVwgFT3YuoF7gwOergHVk7ctUdzFcEOF3dIubUxPUbZGXNKvW14tZU7NeJ/lvd2jL9pt7Zha6wuasCJmXR1kl6UGeuUIxz4CgRn/c26NdxRUV4T/smEvcAQIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5e4BClQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5e4BClQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B845EC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778500833;
	bh=gbfkJeFm4mhHmpKtia3+jjv7/w9q/mWqyJ8ui6KHB/0=;
	h=To:Subject:From:Date:From;
	b=N5e4BClQer06Aa+piYAx/MYi8pwHTsTpOCeRK6i8eBUdfFo1nfzEPL6yq8HypmCee
	 ckSqXKX6N1ntq+IDURaaDkT4ZW6cVfXnQlTsr3mJKiUvm7bs42PMeBGiDdRQ00VSRi
	 8+AR1gEcyek/lQ75EGRul/V/XUntHRPFOdtesA9vX3KIfkbiKe4VyOp133SgN1kaYA
	 rb2/snbz+xrHjkrvVLkEm7dKTrf+WDqSZBmYeo4+dmJ7gycXOgy404H1TS2QB2Fage
	 mgtwCUw9b65F71QMW48h3OASARnOsP7oX7TYx7lxEzp/cCS2sRptcmOkVHPTaJpbR9
	 3Krid1zp3ratw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FEDCD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850083368.8308.17570924367650082932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b320b7762b2a3172b6b34405755d205e01d692c491af68dba42a92cd9aeee98
Date: Mon, 11 May 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778500833
