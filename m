Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C93B283FFB
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783546714; cv=none; b=V+m2EXAyeWy2qBHxJH8ZfzOk1oZCnXbcUT2qCgwn10tuIEL03pIVTXeyBiRPrSAB0fpj0DKGJnUl8gE9DxGTcSjMB2Sv4+UByAUW8+cGMmVYCJc+1Ja3cDNWVUtW5EyFidSQHPBItsKHt7Uw95gpHeql8OH9DMHZJlYQ7KSUFpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783546714; c=relaxed/simple;
	bh=69MGnFnN4+mWIKCDTwv45ilz/vPHgukgS/t4s8n1QO8=;
	h=To:Subject:From:Message-Id:Date; b=uRUuqkEIdD1wO9l190eP310Q85qxfxBDqujgMzMR08Q7uOEMICOIJyGet4ercykx/Yz1vTP/DOqJckV9J9hPfQwEXaVPWZ/ddpqM2bUBLH38p7gTidUwUcGHJ+rtHFMipwiF1z/5zT5XXN9E7SbDTloi2zOKtGNJVRfHQ70akPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+t+whCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+t+whCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1DAC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783546713;
	bh=69MGnFnN4+mWIKCDTwv45ilz/vPHgukgS/t4s8n1QO8=;
	h=To:Subject:From:Date:From;
	b=Y+t+whCCdtOGwQ4XN88+qi7HaCAeSFcH6V+0f83AgpKea56WZoCpYNnqwGoeOtdC1
	 aZsV8+sHob8gQ1RJX01JphxNu6ByAfx51dk7Umenp7IVGM9KEvr0fID/PVTDO6xYzL
	 udT9bspW/Ww8vojVkHqRNz6le1qw+QK5Y3y5/ILTaRGcSq+EYkb4VSpygbDkhaaiUK
	 VpRJe7eJnhXS1fa/1GaXLSQ90YXIOvD3jo3VocPoFfuLb/JyKscaW2RvC5pE+gkOxs
	 67uWPBAQazefkAvL+UZ+sfPUXEVlfcjEXbeKWHn7SdAOPTYla2I2tptwlBpvsjZ0Lv
	 IxkoQ2ABfBCAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99B8C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354671368.24499.5439284648092594534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4edda75e5b0d241d421d8e19f4447bbd52a8841d79bbe29a133c8c8f09e93b0
Date: Wed, 08 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783546713
