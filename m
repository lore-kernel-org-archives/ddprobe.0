Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560AE2E622
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 18:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715798543; cv=none; b=oBQgMbW5KFe1AkUiIA8B3YEDQR7cuiNrGz3X6ELTWvhaFH+SjBrQTHE66OMYLw21PGGLVWJOnJSIc6aRvjSD1mX1p5nTqCaddLynWATCGCtsf1xzcFZCNCnHlZ5JXeHr1SfJGTwDl9T4ph9LSvLYXl7f76k5K0kGDRZjnYVyr9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715798543; c=relaxed/simple;
	bh=hOx9dVlg3xe+Es4+pAoTpqg228yqjE2H+MHcgg0b4lI=;
	h=To:Subject:From:Message-Id:Date; b=u9FEdEKXuXVGcnBOhnYURjEBigVYxioQCC2UL7B432mjCTwlyckWZd7pa7B0VGCUrBF0RpsVBTgS/WX+yXY3aEvLSjA8YyAza1NephdKNsO9Sb7RMBDkwwD8E8XaO2OKdVumdJjDOGa/bFSTI7MqXp4Hr8sm9paRqep1gZ1wenQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBvuc0mN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBvuc0mN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96BBC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715798542;
	bh=hOx9dVlg3xe+Es4+pAoTpqg228yqjE2H+MHcgg0b4lI=;
	h=To:Subject:From:Date:From;
	b=QBvuc0mN+kcjUGUln5aIeN0OtI55JvGG8iwCVteMW4Dn2PZ057iar7rULKec0w2WJ
	 uWgT3HASfVsUk1oHlymUC8I9htMfoMJWmxv72hRBLnmkLadGvQPhDWpBljg2frfrCS
	 Bvpr4G3JGuiGfwQpHJQTnaWuIuApV/j7M9T8nv1Y3UetrqW04svluNKOA6wLUyXuDt
	 JKJ8KVRwEgytusZD8dUkKSX2mOlYB0zh8Lz+TUGP2+0pg2NIgHLtLlaxx9i/StOKab
	 9mpLzmaHf4hhbspw5v2kMG/107E6YqecGr9Gv84ldVauf1/M3QwP/0Z6Kxywg4fGBk
	 729ZfY8Cb+X8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7706C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171579854280.3777.12694418250087807895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9512b6eef8924cd1126d8de35826971bf8ad9872b46db92fa750ce892397652
Date: Wed, 15 May 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715798542
