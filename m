Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B879175A66
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776468454; cv=none; b=AseCCVoDdcjGB6MrRTt0rJunymZEkf45JsYQlvtUe0R2sQTG8DTkJK0GXRdsY3oErXiQFB+y/eYftkTFjZV5FvTKub3gu5GdamBJJ/AlrDVg8iC77jZzx2tPrUZ161kvRfAxzU0SKWUixVcxBCxrEeBK8aPvvm/YcPpmWgLchgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776468454; c=relaxed/simple;
	bh=U2p/EY882di/N7lIdeedn42DNyOQXjEvC5ZY26YfN+o=;
	h=To:Subject:From:Message-Id:Date; b=RhPDIKnExw5TbenlrHfc/7dKZ+FBA4XnfTzPcBRQOgQqHlQRq1tMLAWPGwHBvqS3I5m+xmYsINOEJt74DNcBkat5YUl2LJjBo2dfVNEY85+8z1yr6gOPdunvb/KFluG1AhdG6skkuP/CEc2quA1I/5WcnHnogv83anCwFLQattY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Izrjzk9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Izrjzk9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0134C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776468453;
	bh=U2p/EY882di/N7lIdeedn42DNyOQXjEvC5ZY26YfN+o=;
	h=To:Subject:From:Date:From;
	b=Izrjzk9MGnY1zK9mDC2SWVICfLKnFGlnyExhdXOOjR7qssD3JX3FJATf+Z2O9gV23
	 LbfdMmiIU0Ey2ZwhucZZ+FtLHQbeKtq0ujhOaGBIe/qq2KecLGSaXlwsFlrqS/1eHK
	 w6u0MWq1fb3I1hLGx3a+90J+2Na0KDpDRZc7PNbB5okSrKc4AuCM78hVpiBnN/82C7
	 OEdKooXt3NOPjcFudhyRtEkCO8czIIIxD9K0UIRK6RVe+s+4W/0l95IMKB4JAMqKdi
	 Mshrmmw7u3HlPKqxQOuC7eDuYdQBf7EX744H9F3WsJgBRPJcUgQt1NLqS4328iPWNj
	 p3toZj9irbFuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD12BF99C6B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646845368.585.5268823524804461725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a22709fd60274bb15e6aea93b94460f48b53a0c39fd65b085e205949fc053ff
Date: Fri, 17 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776468453
