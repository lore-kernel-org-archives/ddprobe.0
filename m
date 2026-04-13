Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD1A309DB5
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776104254; cv=none; b=CT2nPiNuZ5FZnRgeDj9dH9EsU7cESjpmYVnPifzikvhC1V+m0um+KlheXD6w7Nt4CilLcEQZbGIGKWX8CyCU6IuW9YzSzWPCzKPIV4XCXw7YeqEw+XmJgCF0LOC2MrSwj/4riGoTCs5QngtFBXDdd6qI/K5MXIQOJctgjG2O4Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776104254; c=relaxed/simple;
	bh=St6jB3h/vMLNjbHuFXdKcQRL3/guJi5S8fwN1vPsWMc=;
	h=To:Subject:From:Message-Id:Date; b=n9h+P2NNk1iR74oIbyHsX/aPN2jeR4ppMamPbH5EN8lPL6QHqxP0Zyswbgje1PQmtlWKtxo5Zh+mlrt14/X30AIgF6+db/mlLVHL0jav03gL0OE52vCcXTGA0kNRBBPjs5DSk91b45Ef4KWHXCa6703r0tk7ffYV0I8WQIMRI0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlBO2WdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlBO2WdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5F7C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776104253;
	bh=St6jB3h/vMLNjbHuFXdKcQRL3/guJi5S8fwN1vPsWMc=;
	h=To:Subject:From:Date:From;
	b=OlBO2WdJxYpEmAnHI3427UTCD5P0tSb0wXvBBZonLMkhhEeJDOV5R0T2T0nsmfC5e
	 IZVjmuu7Yw9hE4MBV3b5up8DzmLgvFrcYse747MA3YTUB9AIZM7mYoNKLBptRDTEX2
	 mQPs5h4Gn3tgBQSpnJTjnxgEODHr0bS/yvatPDrAyHInYDI280CzN5m7lDldRHl/sb
	 kETKa1Xuv4elfUamiSZ7EJKtqiEqMGpy4hKJelwvYYUC7maisFQktH/4IVbrln+1VE
	 oNe4zIONPqrK9zHmBieLTlnchmy1GM2hVSSBz1P3jlDNJzvmM/X8dJhF141oDOE4YS
	 /Xs8yyux2bWiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC394F531C1
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610425369.27209.81907324484064706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e320094ca03f862fca7ae15eccde57d6c1c7efd2655d3cc147bbfe319cb2f0c2
Date: Mon, 13 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776104253
