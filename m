Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140833EBF23
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770094434; cv=none; b=Yd44jdLpGP3mVqOYv4wAhSTZARQwVChJHtV1GhUjlLLp//TqE72qUW5ajibUlZvcCVWqG/EiQLneu6PFsIFh1U04NzQHA6NLJeaxfb5SP80GTtixNYPvjysxIqWM/fYGKn/zpE3OXrV/LNRwMqvcn/aczc4we6YJMnEEcFq6bjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770094434; c=relaxed/simple;
	bh=WIe3C/VV0aZ9l6f3fjxWm9Lzh+xNS8eD6Yp5qEGphzE=;
	h=To:Subject:From:Message-Id:Date; b=P0t79sC1XzUXwchGeXcLiAoRKpwRroS+jY4axT9Zta1Z044o1/kKJXwx6DMg1h/wLXbve0KcGWFtM0yTSKw4chB1KqaEBrvQKKBmjs5RagcaPCQotHNVM98otVdwJ8C0RofGSb6YkkGB/HkgE0CITSoeJgixxSCG8oqSrr2jluQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWzrPT2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWzrPT2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF307C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770094433;
	bh=WIe3C/VV0aZ9l6f3fjxWm9Lzh+xNS8eD6Yp5qEGphzE=;
	h=To:Subject:From:Date:From;
	b=rWzrPT2Uvv+R3R4fg6z56QL4pysTOePvBEqOyIvjOmhgwA/30auSBpiWeQbZfpAjZ
	 7tzZUbxey/XzEXhRmYSeNk5T5Q0QtxiZYeEbQXC2V6U6e/k05KfS3nmP4IZ/iE9fs8
	 BJr4WccLGkXiVVKuigMTgFYH1mDedDGvWYlFtb+UmaV9uEjtGpwY21eNaTanhc5VEQ
	 Sr0RHyyE9yNOGQSPwsyXVf7Pc7vaEm28eIwGPVaQH4NiRYEMAxdX14szE0P+04y855
	 fKIdbB/0BpUgQBymMgZ8CVsKvnh/CWoIA9vUe3jAxtmDb+NIc7KXr9hD4kFKlOajeX
	 Vm2urCFc81kRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CD3E83050
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009443359.12352.7169207444999465197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af4da10abeda9aa8975641c835c8cd6c04fce2aed060ea724589dd042f0ce1a
Date: Tue, 03 Feb 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770094433
