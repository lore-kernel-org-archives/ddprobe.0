Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F8B2C17A0
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746047995; cv=none; b=UtxR+4qlqIslKl8VesZHrMR/wU33ptmZqKWYEUuy9RxWxgxRsTrIbbHQA1a+SKZVoMyyjKcVXDCGf6pcPK8DMxy3R/ZaEaq5zSNV6IPCUA2hUyQF6GrULHnT2/lchBlYSfFuql23oHh/pdkkCzasiTxzMq/Qhsril3ojCeksac8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746047995; c=relaxed/simple;
	bh=Mrnt+uydD6qOY8mBtn8KxCa0FvQwIE6RrhzK9MBaMw8=;
	h=To:Subject:From:Message-Id:Date; b=au3nXaFu8+/DWIToQxS5bqsMgfw5+ZaIbdJCARD7Dbdmu9CFK5xmzLoGy7u99yPdurwOpOyM1Ad34tF8bMgjjrtzfLaLCx8BI/5FPRk6sFxOK9dzOqYg9wnPje3vmz/cBR8yo0rP/j6ITkay2K9BZBW36/ksjtp1UcV8IqV/MyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOSIndlo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOSIndlo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CB4C4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746047993;
	bh=Mrnt+uydD6qOY8mBtn8KxCa0FvQwIE6RrhzK9MBaMw8=;
	h=To:Subject:From:Date:From;
	b=mOSIndloouXt2XpbiO734ywV0CMwNDMkHyUdiV7pY2zHAznkAxzYnnCk1nNTiJDWf
	 ifTN/7tGXt2Pg2FbwUmGQkpWhDat9+592XTqjobdGwgQcXwccjD+GYcFDjh2fwcG0M
	 1N/kPQjNL80l/kJO4cbMHgDUkTlaYqdWVdcMD141hs7VyZlyRwWrO7ZqF2f3RZhruN
	 xYkGVAM2Z2KLAhx1pgmnJyGW5UsNCEmP7zbOjRxC/iUm8dW3Tk9E7/PtwNTgZyw45r
	 JafGsvcvpqlXTGXFwe3lK5tyobRxpF98IfeRJoWnR7pQgvGWVS105rGLuTlOHxU2q3
	 GuHvLs0qpXySQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91741C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174604799357.29417.9398869020767656457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d4558b7e2136d61fd48265e433e898e603f63ada44b0c54c3066cbc3a54e33
Date: Wed, 30 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746047993
