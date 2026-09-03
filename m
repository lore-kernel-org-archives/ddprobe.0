Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548D94E140A
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788449434; cv=none; b=ILhDUZD2AsuNg4YrtP2+0LJVsH58fbHT3dBdC046mBrQm6PcBtl+Je7r/YMNpagNq/HRUK+kPuVnJPkGLzPq7XTzAepnKzki2aDniVU7HYmTelynBpUr9qSC7nubMkmrb6t+bWu0FHSbGWOk/8TJAmFXt5NyhW7uCklB/aJC8aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788449434; c=relaxed/simple;
	bh=p0vM5WdkHjglwpM3vYIWdjbYGjuT8th4Xqqnkg8vpxc=;
	h=To:Subject:From:Message-Id:Date; b=XTfnBcxtdqF3sFemg5CDeIWUkP7ODKxFUTFCALtEB3VZe+ZxoANu17ZZf9FZakD0aA/eeRbFdwV9/f5MiITgz/yMBgaiiu0QE4GiiLCC73gXkjBhFu9dn7F6C9hrXlQ4h+8mEBRzKXFpc0AfPi5tfC4+RuwMEC7/VvirBYPWAaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMQGgbYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMQGgbYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE35BC2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788449433;
	bh=p0vM5WdkHjglwpM3vYIWdjbYGjuT8th4Xqqnkg8vpxc=;
	h=To:Subject:From:Date:From;
	b=uMQGgbYOTmmzms28KzvJl5M/EdC9GmUt7IL2v5Bpkc5y4+34xCydkJOBta97mwj4i
	 9d0gfVPnxJqat3nR82MmBaGujXxGfxAly8FNpuBjWhSqvli8la6H8Ls5JOHV0RwSrS
	 VbTxnoFrXH0VlFT421Ni/vfhwIw5L4lrBpB5rKejsu0TyApTSE1lcNPAFuIDViOfvq
	 gxZZFOcbNJH6S4yhRDwRZ4yiTDP4T26zPJbbAPyctnVjAHWTcYcSr+GBJb3QHDwH5y
	 XkK36M8yUXy1SJAPNl6AcpSkRaCayS0sOGhbUAzNfsYr4wY4izKhTtMoFkR2wZv4Xj
	 +CzynEf1/cEag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB743C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178844943369.15818.8283175976979385561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217af6c1bcb49e00c1159f3578e443808612f5f2ae1737fcfa6cb9e238180bad
Date: Thu, 03 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788449433
