Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBF5199FBA
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769660634; cv=none; b=gBJVxEhFwn6hZtyigVQpgg41il9JKKnEZZl6BgLvsCyZ0zVDle5Y7w8CNYZyH/CSxwjAhpgiJw/R90bkNimIme+bIFVFAjylUwi0UWZq4tjnbQ8zKA2GQAQ/s36c5F5s/2FFot4qAjQv96Zd1XB8+WnpsRFxm8yS1GN8uKeGOfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769660634; c=relaxed/simple;
	bh=DiQrXgTUDcaSUYZNyy92CyEWRzYfjgd/XhNbP5JuSXA=;
	h=To:Subject:From:Message-Id:Date; b=eA8Axj0pNg+NaFKUDoQ8ZaT/JMt2vGaiuqlzfIlQFhHBHXKwNzuW/IUmTUe9zEiLzNFi0djo7r6B3/jc43g8xpWf3zjMLwH3Yc5W9uW3LKqBhUPltZKpDe3WpiEaI1U7XuetHHX6gvG94pXAPT9ecJiyArKnqFA+Ko5j/93sX+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sm4/GT0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sm4/GT0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8733C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769660633;
	bh=DiQrXgTUDcaSUYZNyy92CyEWRzYfjgd/XhNbP5JuSXA=;
	h=To:Subject:From:Date:From;
	b=Sm4/GT0EA0yDW9y52MK2i/41CnUS8g2DgoMA/AbicPf9V7vfs5XPTpcCJ5TQaY7gq
	 gycdpVXT3m19FFmShU4dWybjU0ASokV/90wRHka/xFyMg1QxRF7ZdGYfYddfbB83Sq
	 AgDN6zOnn5R5Fh0I5i/5JhTjkE0cqBvvCsIfiDCzhfkfGdSUVD4lYl+xCI6T6s3TTr
	 5g3iEOq6nDY93u79NUf95hH/d9Ttch3J7Vb2lNZ3muGzTaNnDt9dRummlSBtZSHqR1
	 2w0B/nkIWnDevOh4He4FIY5oaeWBA4vI/8FryFugmyU7V687KcYwaPlZGjDD52mOSp
	 1mnYCRPu9z0dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E41D3566C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966063360.15731.5944438846483192662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60b30d2259d0ab8b5875b6f430a3e142eecaa1442b522cc7a427432ce6c3d85
Date: Thu, 29 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769660633
