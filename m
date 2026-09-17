Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5514B1CF8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789688434; cv=none; b=Tjfj4ogW/0odZ724UeFCatIpZjySRX+ar96r4OxV2X45nVMUZZ+/96+UCVqvOeizOlM01ila46v9a9OCVnzlJatCnqlavfSkTbm5tjtw48qp8xgeRPz3PCWi2rHJEu5o0TYeL8jEiKtVn/znJrcZd0Sr9+jOIO1blM6udOHRDYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789688434; c=relaxed/simple;
	bh=segkD4cGgEjm34+suY6YQ7TAF7lnG2Jl37YZHDvC0e0=;
	h=To:Subject:From:Message-Id:Date; b=GuUz1Sr7xDqohOUwDFe0OKKmrjqyr2ap4zXc+5GjsTJ0gc6cWQhl6OeDUXpqMaB5u40qDE+Q7FruC/ZP7x6yjz34xNDn+Q4HYiN3dDPkF+7bKMI+yLk9Weow2BhHph8cqFenn9eoD+4UsQBoSb4UyjDYeLkxCIrWzmR+PgK7a0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxMNS2oN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxMNS2oN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14A1C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789688433;
	bh=segkD4cGgEjm34+suY6YQ7TAF7lnG2Jl37YZHDvC0e0=;
	h=To:Subject:From:Date:From;
	b=hxMNS2oNdQY4PgxVXRdtRsWvGIo/KbyoDvlBTRWRPGAdb/1E/2cT/4NEoVgzbsDPm
	 Ev4BLeogvzMvHD6i9s7iWN7d26R2mQcWfnIKjOPWu3gFsMZYF0KznYEdn363H95aYy
	 YalZtzKQ8XZknuANDpc/ZLpCli5h23Xzj5ajN1C2qiMKVPzYV7zcWh/Fp8dFzzPurL
	 beztbXIxTYfQUSygI//4TcssUAjWy2hFWkisdyphZ7M+YZOkVWl8HSyqr0BoKpofGM
	 SOjOEFfcEuv/tOFjlBIM284GFNVU3Ci+imlgaSq4XKG0HQufYCj5a/DmCOYjunfIV6
	 EioFgl9L7xrLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6368C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968843373.19225.5066698644908936804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f61606b0380063b95c20f61744e07bcedc2f00dd37fd06c51587bb17adefe0
Date: Thu, 17 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789688433
