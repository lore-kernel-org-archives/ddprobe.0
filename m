Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8621BDD3
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 19:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720984823; cv=none; b=tnia1xLMsby2C3FuhZzWYhkaGA100F73fIUGvPh3n66fCmE8iwMFkNmT3WC0FRGjLPChKxf02pK6FxX+iX9gIiCtylrvB8BywND+IQQOm4Qubxft1BsTXxwkizUIzW9rQFbSFPChPaj43//ePavrJuyeuNINOaSFs0krxgq4KEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720984823; c=relaxed/simple;
	bh=jaBB91XVk3x1HBYh/vwxzFK/kZTNj+pWZdTrypIFa1k=;
	h=To:Subject:From:Message-Id:Date; b=DnThp7WPKf6SpUkvTQg2TWhFPqpDFP11w5+5PjOJ0PgIYY6YhXgt1oQuac8iuf7gzIPo+LuIS4sLGkr4uQv+Ar7SI/R0ql6XrBu3Eu9J1y+h3d3unVkWaqVessHt64Ga9oQuXdDz+zTjCNOMmD3XS9w760ommH+tjK1k9ezaR3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmakKqrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmakKqrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E035CC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 19:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720984822;
	bh=jaBB91XVk3x1HBYh/vwxzFK/kZTNj+pWZdTrypIFa1k=;
	h=To:Subject:From:Date:From;
	b=NmakKqrBWueg/m9XfY2a/XoddalEEmIorjFQgaIvp7h3ilUIw7340xMPk8vNVMabO
	 fISB0JnNiZlINtihVwSRT9weYeJzUQ2VNNcRmFRo7AYU/kFHWeH6eBWx5nEV7HKsRG
	 UkawBqGbaj+OGblV6myrM+EnKD81Ykh5wLG0Wj2w9WkeREdd7KBriPsweU0lys+R33
	 ntB0/0SfRAArySDx7cH/GdjYfg7Jp7i9isUR/eiHYsH+0W2vYkljRHgf3KzPpA1J4P
	 CEtOJmmHqzP+zoYakXzsIUCR2HmRtGBfUvgFHjRx6vIj9n82VeJT+Ur7jiyZX/p7kQ
	 DI40CxNGXlWaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB12C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 19:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172098482279.22231.4469255235148151364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4b56b5a5fe2fb16eef590ff68710f34cf42ba1f52f20f1de6b3b7940fa80e2
Date: Sun, 14 Jul 2024 19:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720984822
