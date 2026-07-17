Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604C231E85C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784302715; cv=none; b=eo9j1ptbBFIdxE/znNxn5TKGAAyw885RZBxyRzIj6vJdkaxPBvEgH+7esYgjHt+lgi/sVB3THOKX6uIZDGj7Bdkan0UhzFJhb4kbiaH8K2LQjTdIl/5hnJfK2nXFi5r+wsj39UFIbYMlsK4T1QCKH0Zam//GGjImju3q7h2lxyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784302715; c=relaxed/simple;
	bh=pCgmf8RZzDo+evJAgSrsMOIaONL9MTNhxgh6U6IF+6M=;
	h=To:Subject:From:Message-Id:Date; b=g2I1s10yFY0QndY58IMn8zydss5zU8VoxWCcpeL+LSYai1dQseAqRBvmHN2Te769nyznYfrXwQ6htIWZyRHBYpFjaLeon3MV3jafuPY6JyP1ft22y0JKlbZvuyjmQVS/GS1qQAGPcN+6gtZMWQx2r/o8vbEWJchutAah4IkopQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgiAzAW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgiAzAW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB524C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784302713;
	bh=pCgmf8RZzDo+evJAgSrsMOIaONL9MTNhxgh6U6IF+6M=;
	h=To:Subject:From:Date:From;
	b=lgiAzAW0pxFnPPNbqeY+bQlyFw5HqGo9obsZ3wFe07Obf8iIM9WRP5jf6eN8+h6R5
	 AYQ3qubIgdDnkpKj49nahc7VEx1b5+j1H+NXkWa322des5jY4qrAa6sVNLmmwh2Sd5
	 B9daICIHJdTfD/K+1Pn4o3567JYL/ziDLW6De7OB/538gJ3Lq/fFbIBeXJkpVcHvth
	 Ecx3Dt/8Ko+AmH7SS7A1TBOQc0yVz7dy++/TXs7zz9wAUBexNvZfUHB4O6y5JmBTvH
	 c7oxnhgkexY3ZqmFtNhERj34o7aNemD8jQEsfjk5fmgT/HYIhvg4aMIeJxKj2QocMV
	 qDvXsdvGdiTcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA799C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430271368.19452.16191648784972267667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602281b9054dcee8b8c12dd154421ba3b5c97941677e8e3a24f79c30d53f80f8
Date: Fri, 17 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784302713
