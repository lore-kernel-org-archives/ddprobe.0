Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190212BD583
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755226194; cv=none; b=rBNZCdhaGs63oozDqcGqOasJ6189wF4dEOmdKC2nmNtkq7U28QOeGaozJsOY3gE/5Xc9Pu80nCbjjoxEq0+a4EOIeUnO9C8bx5uBlX3VskXJWKbZ1pkxAUODhuaJ4QFFdrBLMW5X09bB5wrPMsbexSCi1A88qRxTcf+Ey53C/6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755226194; c=relaxed/simple;
	bh=PMPpwLXJNPNZ8kaV6JBz4cdg0RhW2cQPgu0yOjMlBxk=;
	h=To:Subject:From:Message-Id:Date; b=qqb4jKSIA7k2lmXU3KSfOFFk++bvPc0AIlyNI3jl+HGm+lCj0iZOdzKvgu2nkRrbmpBeXA2HeQ7gVTXT80lFYx5YaqqcOWw3hKAWiZSX/cISwcLN8/uD06G76PTxNWWsv0o99PgnZVxDTsluIAwXozWlZGCOHfyuzkuyWjukJBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLUjsfUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLUjsfUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D629C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755226193;
	bh=PMPpwLXJNPNZ8kaV6JBz4cdg0RhW2cQPgu0yOjMlBxk=;
	h=To:Subject:From:Date:From;
	b=eLUjsfUfcciqBDaEowmol6RgfAB9iBTNsh/CP8ayiDuTrAa6+WY9y08ubgQT29cql
	 pWH9A+VzGoARL3Yql+IK9m8q1DoRPM1ToyuvFq6pUU76/mUsiSFwGtsfZE2Ugq1Ycl
	 E4jrVIaZSyjqGxWpmGw0wVnFHybRsTZmcAwo3KLeBJ6d+z5F1vovUMg1VqodYDAvec
	 6p9XDQJWmUf76uLJllauxrHWlgNZae7kcaZ+TII6c7Gx3NDrkS65s2ons4COyjI/ED
	 YQWNR/DDYIXdM3F/g9y91jEUkqS5ar+4HO7t8xWmJeWvcLEFqdsCO3ZcR5LP59ckn3
	 aZbSNyKIRZemA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91167CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522619357.13602.10111410390392476851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86c4658cdc6d54e07a82d3136cbbe8d08319c939cae829c2602043fc89dd8e4
Date: Fri, 15 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755226193
