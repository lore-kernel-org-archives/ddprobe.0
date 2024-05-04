Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5674B57CB8
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 05:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714799543; cv=none; b=hmIys/qh1g0OWqL6lrN3KhddF0JqCWiG3JeV6Rynnsz5KJbP+Gs8M4cvWlQZtxhWqW+PpYYLtjQt+nNdxS+9Uxb/YXnQ6atW4nRGWsh1LLc0ljJhtNpfrSGiRDOr6o4i/T0BCuvKhz71j1Y433bdkdNW5e9VKDK8r3/53myEezk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714799543; c=relaxed/simple;
	bh=YDZJqSePvLL0I9L1pfyzuMPZamFY7YbRihvccF8oPA4=;
	h=To:Subject:From:Message-Id:Date; b=EZBEurHuXN3SBG0GQvId4HlUYU6ldzwfqwaSuva4IJ44YQxU8Fjbk48KJl/CIgikTvhvXRPlHNNiLZ5nyT6vsE3x6EsS0lUr816Gms55DgaA/sDwNbCZlMZ9CVyXeA7C7dZgNvFdalpPT+UV/OGwIUi/ToM6y4JBLoQEW3w6rJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GA9fAoTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GA9fAoTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04F8C4AF18
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 05:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714799542;
	bh=YDZJqSePvLL0I9L1pfyzuMPZamFY7YbRihvccF8oPA4=;
	h=To:Subject:From:Date:From;
	b=GA9fAoTTcqb4/elNl6SPxFu/QBEn8SUy7JHBlGcP+vFSz6SjchQBi0VzG+D8aRW0i
	 SS2zs3ib1Nx3faL1NNMy969LqTXRtFjF195BSh+FVB0hdXzqTUZwP5D8juwScHj1Ss
	 maz8PZUaxX/G8Zk2Loz2ZWTKrB4yxntxyeVMo3S+A4dBQjDjMI23py/0llfKURGoR/
	 PQOJwH+fQZrCGg556GX1AxSR/fs909u7ufl/5fA/8Ysp6VzW1hA8k9T5XcjwYb+HOC
	 tQlplvJUHKa1Q3zQhDQ9zeU2ul/Ka7ge1GUEwvp3ehhVdD+itrcskmSqf60OWmhYD2
	 80sAHOYv+Kcjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE76AC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 05:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171479954276.21539.12219815845696319685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba52279347a60ecb77ccb4e23d54062d22a32893ce3513fc529afc03d2f5140a
Date: Sat, 04 May 2024 05:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714799542
