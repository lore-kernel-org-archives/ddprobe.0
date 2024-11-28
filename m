Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41632211C
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732814154; cv=none; b=KZFUtP/XExfglIwi4M2HQ62AOl57GQlFwB1VT7FMxFXCojMsWUoJHvOykAhBIKGTlzrqAmKl/hVZirwMJfOykqauFYgHih2uB0vV0H4GBiULEoxq972Eo3amjn+8aKmejhfa1UZaB8k0078aPdFOvvpIDQanW9lxnobbU1vuwHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732814154; c=relaxed/simple;
	bh=jsHS1HoFn19A2zo0z7V2tAPmvb4I8DicRx5WtaLXW1M=;
	h=To:Subject:From:Message-Id:Date; b=L6VuPxPqOYSSC3NSf7b0F7PJWbbsmzLFByCrJ6A2xCqJL617yRbkdcUXtQH975p6DXHRQoGvK+JV6MmKgnc7poakSWTMGvFFw3LojHtrMZPaPmfEozVNkR3ox+y2p8lDCrjPefYeNPbzm3iWwipSJuMpmGGGp6aiLRM0d97NoP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9Om16Z4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9Om16Z4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B72C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732814153;
	bh=jsHS1HoFn19A2zo0z7V2tAPmvb4I8DicRx5WtaLXW1M=;
	h=To:Subject:From:Date:From;
	b=V9Om16Z4XCNNZF9PGS0PcZWrDJ7yx6gt2wOsVG+ag2LbwgXOrhcEZLaoPz/S5CyCn
	 EzJEUJkk2igUKM78Ta47HI2y9nOjQzd8Z8mqm34gVWVq71FmKWfTFuON9hPRGU2f+P
	 diIzceOYMj4TGF75pXoudEOXAliTADd43/L/UpvwZbZA8Fbb4reMKpzvKGq6augUEG
	 Ar4kiweuBIsPhwKM9PlSDq1MmD+ZresBiDWXNQNyziFwtC+u2MLoY4bN+I4CsqVKjw
	 7kFs6UJkpifLtZqKlbQtDJSe2miNSyD2zWdNV4+xkvQPSjVcIwlEnQwe84dJMpGRU4
	 8sldAKtVY4EuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951C7D70DE7
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173281415360.26491.132178544410696161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1555101ae8dce71c9bb98c2620bc3dfc62a09eccd7cac774f87ef8547dcee3ff
Date: Thu, 28 Nov 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732814153
