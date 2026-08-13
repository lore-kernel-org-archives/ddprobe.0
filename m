Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8CC46A60C
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786620634; cv=none; b=RR06zNAlNEslukOFEMxaBPlDGiTrVOGUcZvk+5QtmY9hsC5aROyBaTEZgECUDGwj+cAwykBT4Cpcreuq7h5C6cs4rHYQSbvx3P7swIbCRJ9AhsehoYYD4MJpym7rIY4OEQAnqgQOBO+sMy7z7bZRzwAjNBXwCa80jaKj+qEWCLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786620634; c=relaxed/simple;
	bh=5CknydNwvIVst+mdIMz9iHu0HTNlAh2frFYO8Fd8u8s=;
	h=To:Subject:From:Message-Id:Date; b=p7Wgqob/ckaOu+pAqon84U1XvfAbtqLsLYVuMMrTh9fasy7p8B12t9lSNc1rYAR5Od1HhsPmKNph7Xu505Uu3Ph4aE92C9jUC8+zrYO3hvR5E56MdfpndTVyAWVakYuzCjm3op/HX3dH1z8239BqYyoPBbzwZKVOjjVwnOrKNDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2ICsRdW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2ICsRdW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADE2C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786620633;
	bh=5CknydNwvIVst+mdIMz9iHu0HTNlAh2frFYO8Fd8u8s=;
	h=To:Subject:From:Date:From;
	b=R2ICsRdWscFc6ej5CQ1TCCPcvSPmAz+E9ra94+JSFyAFjieAljtsmkfTIoaV4AlQh
	 x9/cqbebdDYmgcgcL498N9XTfbU3pvgpdWpQrgAbsCiftNUXrfN6TFQg53tcYJW64U
	 e+1UHxGY9RNKNppahgfn5O+1aEQBeCeO99YfFK+bFKlvNlL+HilA5wOPPeCr9csdJG
	 cE79Jy9rIm13RDUF53D7oDU/RxJW9BdY8/cICwcZKhpQJpsIolOrkkjueqpUaXGL4w
	 4WBRBH6WDbkeQKCG2EeOunUXKStY9muA4Cci3WuJiSJOhZPlSUgKD3DBuvtlNIF0Jy
	 h/hNFUiv3TZ8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EA1C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662063368.10709.13320675918411582705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e875a51e8743326034f04d8d7afe63ca4507b70bda45205614c59d6e23b4d4
Date: Thu, 13 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786620633
