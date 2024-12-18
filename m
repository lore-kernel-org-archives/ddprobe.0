Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2901B15E5D4
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734516954; cv=none; b=Ndf1BHsS4Q15J20nbz6QfVgphrikoCExZxoF52EarjSJwySrVV1ZLL6GucwA3ooymZA2xfihDW2cTKgcDH/qJNE+klSiiEy6Yo3LFPSD2BcszTzDO2G3gF0yVb0DCcY5UyO/DAG2Zs0WjqE41JIqeDTsSVnsFR0gYahHCWh0+z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734516954; c=relaxed/simple;
	bh=+s2GCT+YpfA6fWTL15crlDqufCfLQ1Pc5mp24ys9Olw=;
	h=To:Subject:From:Message-Id:Date; b=c6oLQNYNDh5OfZgXAJLoUdIu/vEVs50YBwWVZFUVzbp0bIxoTf2coMNnAIqMWiYW4seSigMNHWV32yQuhI4x8jol72S8Ii/ipx3AOAhrdtY5NsE/0+yId94sspri4gn4SVEKwv2s7dx6TeyclpiADpfBphQxFbsJBgoOWwHt1D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ko3e6lYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ko3e6lYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA277C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734516953;
	bh=+s2GCT+YpfA6fWTL15crlDqufCfLQ1Pc5mp24ys9Olw=;
	h=To:Subject:From:Date:From;
	b=Ko3e6lYEokjgQF+m5rpH62L10W9Km/tD15oCQ2YNBssTgTOgSCCJTefx9sV9p6Bix
	 45QbLul8isdYFNlUkXBJyxnELWsy6Zf2E6gIQZ1l5Pbzo3nrn4iwtGMJRheWysZLOa
	 5I3hQrxJLATqjX7f2l+cb3hFdfLBagWWWqMXVAiwOQfrrJayeSI8xncfD4e5dlvsiu
	 r0kj7BgeDGwt2KhQV6+NGJ80mMgF5iPSOJQHFnXbvJGtYXLr5Mj3iaE5ZT0g3wxKt+
	 HgJXjlq543ZwRJCdMcHyMrZPcwSidVMm32OWU6OW27xZ6kUsFhGfzULVPlLpfdcWer
	 r4kpEcysQs2+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99233E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173451695361.25292.5552273609965909722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a784a2acc0859ef910da750c0f68b9948d04cf57b101917f6d16cdead827d939
Date: Wed, 18 Dec 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734516953
