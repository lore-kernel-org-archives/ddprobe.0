Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C839385517
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773782694; cv=none; b=WnWbLeIeFCiInlmmpCv2Y/p0vVzmn0VYx61u7LbbjutWdpzeUhGr7oTXko5OuGsjcMkZ+vTLW8SjCuNPZE+VktNxDZp0eKMR7QZPFdJoz6QOGsXz6Or5OXD08hYFkAMz4Mw35hVYp+2bAHLuxIdguJPaGM+QYuxBH3pxxIUv0Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773782694; c=relaxed/simple;
	bh=hszFyRXWviFGF9uwEqAVfQSDwKshTp+Odhjqk8c+0hc=;
	h=To:Subject:From:Message-Id:Date; b=X+v66volOrC17l6eyAfOoLiNpADx5afldUd+CHjrX2skzLxl8P+HPNIyMvHNd50hfoeOTYKJJkWp2PfiTHjied5lRM4gjLGRFILBrcqYrdNDJ9a1hpnOQmmEWMGarFc1MRr3m0GdoMmfb0gNPBF1iplEjxL+JJsfwJR4sD1Jk4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpHsDSBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpHsDSBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7FDC2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773782693;
	bh=hszFyRXWviFGF9uwEqAVfQSDwKshTp+Odhjqk8c+0hc=;
	h=To:Subject:From:Date:From;
	b=hpHsDSBkcrpQCizvUnakZiajWoF65ddggqUKJFaAvMpaK3jgm63TqR7sHhIgayzb9
	 iRyP6Zkr595I+SgRqy8Q9cUPPIx6wOgW6i9e1w29i2uIr2/zmxE9qt3KKiOjMV9tM9
	 rCYZ1yL8o9j2OASlCziS4JySN/+n8jcuUFIJ6bSjaUjAMJYe6bCbH6BqHCZOc0TuIE
	 p7qSnHGfOrAy4Ay6aqqYvfQO4n9pHjO0bblYbeC5aoVdo3qI8CtbGfkqjkcbBBgEtn
	 sOCpdwuNK5kTqu6T5ShOfh0ozZe1Zgl13JzuPDnvbSLjstOOXO4P3AaJ3IfrfJk1Ge
	 XIaM/s13oNgvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD1AFF6E85
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378269362.15188.9827871704523048418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4607c03e00c2833f8151a9499f9cd7fb9db2325fa2d4be7452587ae60b20c8e
Date: Tue, 17 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773782693
