Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147572F0C79
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772880894; cv=none; b=oW7Rh26Gx1xWtfh5KmE7RVdjyqgt6v4E0o3ZGvQB1AWKKY7Nb11d3LBbEVzfXxtfJ4ayaRvqhQcfoUngrvOZaa4fklJ1jQaoeksEyrEmQxzxwm7/bMaemsMEggVQTyuIkKngn2CZOctg3TRvGMoskhxBct4qp2agOGyG03Hx68U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772880894; c=relaxed/simple;
	bh=ONfxovf06X35381S3fo3AcNEiC5BNsW1dK4QXxsoEIE=;
	h=To:Subject:From:Message-Id:Date; b=ZU6TnVGqAFa2KAQ2YGDSj7VTUIEmObdy6RHPIBb+tz5KlztVzcE+e1s1yNVqgDzFHkRuJq+wdCH0k1HrmJ9CJy5Enws76fa71Cfa9uli8U+0fDLVA0NeLtROn+3CzWSOG9VzQ0LEoPnQeAXLwYnAwKeLqaiT4m6/2I2+Jt2wb00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFvIgeDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFvIgeDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAD8C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772880893;
	bh=ONfxovf06X35381S3fo3AcNEiC5BNsW1dK4QXxsoEIE=;
	h=To:Subject:From:Date:From;
	b=TFvIgeDH3PxXhaXf2rpX/1otD0T9I1QrElECPb25V+WmMAgHcs4uyp22msBPLMGZz
	 Ek4t/gp/sOGtGIL8WL2Ga1ymmit0jTvxgbPLqGTnYSl42Ton/3wbkJ6v08ByEeYiYf
	 O9uHqSaIEcMw4NPUZs81ajmuyVmu+/xrVcemt20BqtM7awe97THm2j1WubUUssljT4
	 nyt6cGyECAQa9pNJ4rsTSPfibnLZaYUVzADdH/w48HZ1dlqFDFXOL3TpAIbswHWyS3
	 M/iz9k3dgTnoBCbcwS2Vow8WQvtJ4UQ2J6zmFMLM3o+kqUvtQdc6B611z8jBJzZA5N
	 dMl7tx7SO9Ufw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE4FC9EF8
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288089360.26684.2192789798529602664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e50afeef569991b1429b76e7bcc85401e77ea334d984ecf33cea59e6edb43d
Date: Sat, 07 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772880893
