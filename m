Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A98D1F4615
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763190594; cv=none; b=A52h6NYjk5+SpKEcm+JtdhC7ANDkXifsObIXgyxpceOyhrS4ErNgAbduV4lGkzCytj/NlBzAV39vA/Kli956FfRKwODbtirwA6Zhni6Lje5cU8D1uWmGscf46DRYDJHs0wQlgP1ZsUFdFUA8ShNVU+kK+jgDGRfPRuI9fp5xKbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763190594; c=relaxed/simple;
	bh=7lwBHGLj/B0p/x3FdDxtlYgx7zgTMP8jLqS0gTswZMc=;
	h=To:Subject:From:Message-Id:Date; b=gJbNXQmpe/d7XOrdd6ttEKeljF4NcXbowanGUsnJ8H30UAAf4y3XHV26IJSZXQUMrHoDsRB9UqYMGuFQiHKF/ZvLLskzF/eIzLsbAUTo5yI9yJhDjeL1TzbeelTUDS1gPbKBz1OVhShogHMa9GHkZ5G3vD6sIXaGy9AN/DBoXLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXzOv6TO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXzOv6TO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1626C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763190593;
	bh=7lwBHGLj/B0p/x3FdDxtlYgx7zgTMP8jLqS0gTswZMc=;
	h=To:Subject:From:Date:From;
	b=oXzOv6TOmy0r+Yso/pKIyoFn9ZqG3Cuh28M+W4fw7tb9tpE2p9qT95A2dqDYQ4FDD
	 yIfxAbAYxkmLmw+Bxkxt49UbAwK+7XcgT7KoDtGPFmYJBYo8ylebCQs+FaCshd85y1
	 d8OQ4aGBP3psuA0yKPZZ1nweR1sccLZkPF0Cif14LS+y2Z449yrRvzJVwR6ac2zDGr
	 TJURCr+elb1hlmkVkm/JgzXFc8jekguYjPKeDXFfhZjc2N4ziQIChut6X3qzULnt4/
	 epfRFoxJXrdWqR9E7V+8umAwf95+hfiFiRQeqKKIAYATsLlQcZF3zoUdg2n6e26x20
	 UbBIhUf5aPbig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E6DCEACFC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176319059357.15791.10089020293600212849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d79bb0a4090be62d90224f096aacbb5e05c907499ea12c85b1ef3ffe35ed92c3
Date: Sat, 15 Nov 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763190593
