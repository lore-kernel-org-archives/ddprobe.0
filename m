Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436A114A90
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 11:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715253743; cv=none; b=PCWzWguGUGWvXUy0BPEisdIVmyn9iCDcfvk0mOpnu0ubigQZl1ue72vSDLYUv0OpM3NEva2DTgaoZuEx9k/4laLKtK+zFPr20Plwo89iCTPfSYFxGGjqHKaWZ776vU+QzDbGQ7Hg9flBCTPDcukLga7HFqchAFY+TkNN4Py3Th0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715253743; c=relaxed/simple;
	bh=0FfTR6OT4M4DdQqgbWVah6hxgDMrog+2UQ5AUCIQ/mM=;
	h=To:Subject:From:Message-Id:Date; b=SBHzC6qCk1l/IGsLvEZXy7WlZ2VADnaWTEaauZ6edN9fb3Bl8mbo3AuVhushyGXMTRsBXhdvscPgBXsrQ6XU0AMks71EQX4J9wlwRm0Jz3Ncz/H9dJstUPcQW3/cXkEDm9jW48uZlkCPHluCCTDmL+A+BR8BLqAr2Oyq8dCKFXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hi5TUNx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hi5TUNx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF5F1C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 11:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715253742;
	bh=0FfTR6OT4M4DdQqgbWVah6hxgDMrog+2UQ5AUCIQ/mM=;
	h=To:Subject:From:Date:From;
	b=hi5TUNx854JxLzGkGEifIsuBhQz2Mjhg40vQv6jKFYudH6OHY1hO6P1HcJyqFXAmc
	 TpHpL6FLKT1WXO60bI00OFjRQ5zguM5/1nPa2zvNqUeGNuIN7RZMy1j/m6xQqSEg0O
	 SiZxFufi4sRDz+ZV4gzSEY1Xxb6zqC0KNF7/nDhY+qwS3kZ48PKiPSnUy3hPbvDhJp
	 LTUTaueTmgKcOLpQ1MFV60iY+T3OPWH0gv+KQ/Zezi5DuQlz83mKNBK5IDSTgV3PRk
	 Iuaczah/UmcRZr9g1de+GzSuTI7MR1yQJ30s62pLqJ4voKsCOgCR8UZD01JN+SoIFl
	 xZTySPLVZiwKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D5BC10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 11:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171525374280.22837.15858823850585805369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed0048eceab9d63552bb8f3053b12f3d994462089bc8c6a6ba1ede449b759710
Date: Thu, 09 May 2024 11:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715253742
