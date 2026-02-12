Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316C01400C
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770909294; cv=none; b=IzZXvBVvuuAm65v8HwFLjHXTUMIG5zVxtel49dtuDKDkFZjDbZTudM9/XP68KBoyY9cJi5j/Gp5Qnwrm9bV3N6H3zIoNGfhMirn0uVUo6ggPGtxInzBgpnEMyz5p+i5yw3e/MpiCkIFj9zuJCcZykN53/IhI83xPBFDNTmXwRqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770909294; c=relaxed/simple;
	bh=t9lOiQXLe+MUdaAhzgoahtBcyndZfjIZKJ+P54OXUXM=;
	h=To:Subject:From:Message-Id:Date; b=o8vOS7ZKnZEYeicbJ0z+tXqj/Sh+a47d4Fmw2aSjfdHzyXu1Nx5fdWeLQq6tYIStsoJdy3OHt/uxKSpGnEaONw2LxC/ERG3pfzEVKckkUei5s/6xLx2BN1D/dIFWz8yPJH6IEYO4UNU99M6CfTDwbuAKiucdXx2AcSyIo/pSmBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzMMDkEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzMMDkEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA31C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770909293;
	bh=t9lOiQXLe+MUdaAhzgoahtBcyndZfjIZKJ+P54OXUXM=;
	h=To:Subject:From:Date:From;
	b=pzMMDkEOXwt1m4SGxFDFTH/xCTOKAujoQriHSDlnMMuXv1CFadX7ai0QrpQ+L5/VA
	 zrxTWe0Ee/i7NHSo9aVDI082CzL7YTdrWR6LEYU5RPDXeDSmT2HPIfGYgEEjZ2Pn/3
	 21NuZNO8ED1WGd2zN1ci9m3V334wiXiHIum03eZLx/f1cpLUGIGSHRugTJD7xxkdzS
	 pDNrz284FD9BqymlijIF9B6Nu730HExSubRhouFp0F4I3xBhisl9r2yIF6B0vzkjXy
	 ykRoDodciK30d0+mVPTQvXwtpfxlyX2l3d216eZn1ko2Z9NGqQ4SVRU1399q7RU42r
	 jDwYzn63je8ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F392EE368C
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090929363.5735.4762402149260355068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99026ebcec3e96be27462f069b6bb3421e8c9cb975bf0769c212011c49e9e6a
Date: Thu, 12 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770909293
