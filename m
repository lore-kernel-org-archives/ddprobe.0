Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7ED54F81
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754238594; cv=none; b=avPCMULxHfhU4als5DdcIQBSedBi3mvzZQ4+1kXaGhNajOOa2eiLKed5VS1s9IwHZCIiocYwRrSraifRCNNgp7YdI4MnGreANdSZz15wdTg4MvXTidwUpvNcm6FCty+qJaQPYhbg7eWZg2awmkLYKgUsPpmsYZNARxgfUiDMTA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754238594; c=relaxed/simple;
	bh=JUGXzArUK5Tg1CDCn+zYACFE9Gety4g7Y9Y3EpkANEA=;
	h=To:Subject:From:Message-Id:Date; b=btQkl+Ny2pjAQxUb377D5iBrWDI9edrW1bPqcK7stEX1jHsWeaffE9v9qUXj7RFmujFz28IJknwV18igh4lXtZA14D85LhQYWVKorlM9ZM9n2GtYVss92HwvqvBoE4qWeht4RI+3rkT3qSOAdXf/zCbOVlXnuYaeWgupTxq+vV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTc1HICp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTc1HICp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8392C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754238593;
	bh=JUGXzArUK5Tg1CDCn+zYACFE9Gety4g7Y9Y3EpkANEA=;
	h=To:Subject:From:Date:From;
	b=lTc1HICp5BgANiGDDbIaiP8iPcNizc5/K5OPY0T4LcoOC4bNO5ew9cuOIq7qAJjtX
	 eHu3ZFdFu/EIAjsbQL1CJo365HIl6NCiYiqTNXvBEjnhYgnnXI8fplDeRLQEWllGET
	 fDvWtw9GwjDWxtOpQS103uXM8v84kgrmF9lcwNIko0p1iKujF1rJq0gf5uDmLo4dyb
	 4u/+EJdu9lgoNJ0494YrpEotwpgbfPNyB8cPKlplvjgfVfAt8MXVfCRRg4HpSBGCQ1
	 fdbim7/ig5ld/AsfF0q26O5braGqOwakabBc0B0vVhKgEcG8jl83N3qjx+71zipT2p
	 uJlAPNc0cvuig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95691C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423859358.27525.4532129202611989756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64253984824930d8b2653e1fbf1b667be812cc1be9b56548d63eb43f6b9d4d9
Date: Sun, 03 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754238593
