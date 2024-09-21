Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177BCF9E6
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726940154; cv=none; b=SxKbTgG7srxURgL9pRZtsRFyox6BRwLLDNi8ardEsYgoldUJc7P7vYevMh7GHgPlPlP10FaJrnTiblg8JB9302uf5IQhsmCl06NNY5Ad2Rf1bvbJPvK5/tXSX9kexNqeYRvmmUiiXpbnH3+Sx9+s5XYjwLXvWRYMTasrPaqfokI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726940154; c=relaxed/simple;
	bh=6WewMr9IPXhInK21eafqEIDZU2BjUopzqY6XVSNBMoU=;
	h=To:Subject:From:Message-Id:Date; b=js9CEsX1tFLVyb72GIRhAdfMlsZXF3vsEWfrQ2zQxJBsxPkpJ1gyGLe+M1lGx4auAYPKgjojTS82Swc8EDV9KjMl3d4mw7PZ30JLK0yTpSwSdJCcPvLmCiQmLNElem2txj8kYZvXLK+9gTM9bPrn4v4W+mevoLbaB9P9YT7NSS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtbaPKBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtbaPKBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E34C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726940153;
	bh=6WewMr9IPXhInK21eafqEIDZU2BjUopzqY6XVSNBMoU=;
	h=To:Subject:From:Date:From;
	b=KtbaPKBOhde+Fnn5cYHI3owyn6HRG8iu3NxMmrxJgs182D1/64HbfC5AKaq08IaKG
	 YOtQ2v4bJYKrDbF0bU1t64bmhrqnDHBOrRmd7eEjSHVgCBN2BUDMnCFF0DrsKOf/jw
	 xvXLX2KPR6cRONKHEJYKjG2a7GgGWtuxnD8ikPUxEkklXEBGLz7WFk8018Cq+3m8KO
	 z1SZpr6/PhCiZGzI6qfNR12LoTFeTy7HuA+qjsKakoqzP/swzmFUs47KcUujdFtceM
	 Vep5uRxFQQL2q3NLYAaEJRl/AoRGt11kCRv/L2PvfhMZrPoWBpjyS/5NRnQvuSc8OM
	 MApEGY0q7YWAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E5ECF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172694015357.16858.14056960125034938885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a79083a47f469f9977d596219946db919d9f3382574b67fe78b6ea57439fd1
Date: Sat, 21 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726940153
