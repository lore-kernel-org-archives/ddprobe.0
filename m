Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C3B3DD51D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785137434; cv=none; b=bZOBAxPOh/c0x4BnlVhLGbxPLcRUaObMh6PvS3AUHmo5zFNzFcJ7m9q6XY5wVwBIyr4HXmnadcRrW1EJAsEFuvXVc0CW4Hn8ymoXRjmjMi2JpdAOCz0YObCFWuJPSEfUPswS+xBTWqLyg8CIfbCW4VT9ZoWJY5yB0iKIphBXCDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785137434; c=relaxed/simple;
	bh=rYrcxHitFcWRCyreEAtyfjpqFE1G2h/4vMgf2n58tYw=;
	h=To:Subject:From:Message-Id:Date; b=QFZoc4nSJ8g4BWMZbfb3d7MyvMYCZiVs8/00+MA+Cor8aM+CAouN9RRlwUBBKxvQl7mtvNtNn1YOsNu4MvkCD3Cuzd1tILwk8uhTOL+6DEOM59He2cZOR1KHwCKBJBCvfwaK3ItQM6uYKBp2KEXu10XK0I27bWCL1Fxmqq+4Cq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWWmX+de; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWWmX+de"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2007C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785137433;
	bh=rYrcxHitFcWRCyreEAtyfjpqFE1G2h/4vMgf2n58tYw=;
	h=To:Subject:From:Date:From;
	b=QWWmX+dey1K/5iQRz5YAeEE65KXZPEPv3YASZniDuFSbAeA+8NW9mtVjKcfkHux+j
	 2XNWQUmKG0UZaHy570aWMGfI13H310TN/g07ge2qQSN9vbhRlfv11/7/jLXWFUYhW8
	 aRIxyTXJ3CthF/lIyKV2YpHPqK5SXjpA0hqgutEGc5kDXwBXnnKMkwT7LmO+y6fDjF
	 8ZOz958iG2ZuVODQDAoaEjYdPtjkOGqU1om4y4Y8JGpa1Xo4U80xB3AWdUzYhdiqUr
	 CqWrMdBorgCPWfjxE/DNIxV1BT1sQHyj0yAlrT7arYUjd/YX3wdpb2ivzWN/JmZuJe
	 dX+grCSla0+Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ED5C531FC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513743368.12371.6383230993482182138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 930bf8cbf6676218986e617a5ce070c71d30f997fbf5c12187fda80959e93044
Date: Mon, 27 Jul 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785137433
