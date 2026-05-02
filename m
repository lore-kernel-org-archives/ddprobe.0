Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDE4E54B
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777705654; cv=none; b=UW5+UgSSz5TMk4Wy1gD5hs6zs5r0K9Y6fI8x7yrpHWdTFRnv1QH5XgNDgyMRiSPMIy1PHr2UsZ0F4cEsVH+K/Eeh3EOIyME3unUZPuSTlG4IxDV/M0+C/y+YHTmz6LyAGGX/HTgeVYjmmcxlFiieA1opS9kjtZTZHe+NDwpkDfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777705654; c=relaxed/simple;
	bh=KPRr7QWnmeusovD8q9g7SRDh0WJVgQwM9wZxsM+3yDk=;
	h=To:Subject:From:Message-Id:Date; b=LmnC7ivL9jIdYF9t64TdDQN6PmNZJhLI++y9tVxE2H5SPtUULAvnCU5tZfPFasSjEosn7Odx9yZRLN55BgSNG4MYBPBD7dK7Tcks/fiQYgKXrJsfF+3IT6qEoOBING/4rqriBhvH4zEZQlRyDmyLlaYgXVkYzhu1q4EdF5zyadA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxZlp8i/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxZlp8i/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF67FC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777705653;
	bh=KPRr7QWnmeusovD8q9g7SRDh0WJVgQwM9wZxsM+3yDk=;
	h=To:Subject:From:Date:From;
	b=kxZlp8i/vm0mX+KiHLlV9BTQrVZAHn/Shd4588q1SQCRwzMcn/G046pdIuYneCY2K
	 p63UA+zIBW5IbU2gJ4OqVGkbf12Ub3Ady7kyZ4HBF++mYP7PrTK5ehxa3gKQ6O+VQP
	 XsN6y3O8FuEXjKfJ8YGDG5HBRmZpsfKbtJjcwLrak5Dp4IBkGotnK8V1Nw7Bk1TjTG
	 FR+CbPh+bM4+5fo0yUxAV/SU8TbmjYCFWkqScpKHIN5mwwUBQJV/E3oFQPbT6fT7LZ
	 V09CCQH5RavaJ4FgBROvKU616RcLg6B0SPM5MUrd7jKP4nuYUSJ3IUSxNFRF8a+FdH
	 pgT0z8SrMbDSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC20ACD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177770565368.4674.8843160009374359403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfee0b189d06499cf5d699f94fe876456cab1908e98af93a07dde67837f01f1d
Date: Sat, 02 May 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777705653
