Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6947A3A3E80
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773906294; cv=none; b=iUYjHIOTeF4K9RCYRm6hgi179UIutAwhqx9dtNB5AyDabIzGaGCbnTxOuze0CccxVKNb2uI1qUU+kQW/D4vEtL9iOFvUmQ+GnjUpJlZ/l1+Kpty8xkDiPTllTbFy60NrHPC1Zz8F5DI/EbdMjW8OfUm8h6IDEOEL668aoZwU7RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773906294; c=relaxed/simple;
	bh=RZ5GnjZ9BD9KLVm7wguioZiw3ZgD13tctmRsDAM5bR0=;
	h=To:Subject:From:Message-Id:Date; b=LXw40LLJbD7uyOBNOCBHgkCNBkm9bW0J02HziOXO6SdSyZQ12iVmKH+7PIEdyXzOyp7yvfTbGDlL1L2MvgSyReIezkyXFKmF2y3xwImTg26PJf/PovDXRdcZ+ee2fgfam2nVjrLbM9h4Hc/G9qdrEouFuSlmUkdkDddjtvcpuUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETNOQFQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETNOQFQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5BBC19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773906293;
	bh=RZ5GnjZ9BD9KLVm7wguioZiw3ZgD13tctmRsDAM5bR0=;
	h=To:Subject:From:Date:From;
	b=ETNOQFQdP/j1uPlocgD9BNTtvSHuGlHeDH0CDynjkDYPZWyeziC5l/ObP6TkbpBhQ
	 SnZDY/uf7ho5xP9HvvepGuM4F2tK6o/HETPMiUy3vc0LXklXsTYqqaPKQL86w4EK/E
	 hJGkA3n1ZY1jo78cL3LV2saQ+lazrXu+jE+RQ7FXJHIyB34j0i5K+nJw5XlXvYxU6D
	 r37ou6XwDyFmXaZEVH/LsbBtHhCA6hx+zwWNnQXVdEnRSLwWcU6DkfYwwqDDBo3ESB
	 +fq+3y/wr8jdrA9u7EMFF8sR6BCPpoLyg2rX3TcwI14ZPGpKWpwWVgoLRRODrr+JnH
	 cmIe7CnaxNrZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9209F107526F
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390629358.9921.13804015789367975568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81649b18da825bf2033fe1bdc1faf68960e641249cadadefc634658d9799643e
Date: Thu, 19 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773906293
