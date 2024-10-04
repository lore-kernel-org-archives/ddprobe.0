Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389D51E3775
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728071754; cv=none; b=UYqbi5EVYb4TTgM1ex1XWukqhLG8eFsqCFsp3M34hnwQitPilpeCpunhDPfGiEI4GIg8cvWs0uraU7mi4s+fuRCUoANusqfsbvO6tGO40hItdBV5EhpbkVtEYZpTGgQ9exYbYu+feLs/hepD7Ndjsy8dHxiVXp0jKN5sxpdezWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728071754; c=relaxed/simple;
	bh=Dig/MNaVz494kYSOXiy2K7qLLcqL85ZSp5KO+Zoj03w=;
	h=To:Subject:From:Message-Id:Date; b=kSrdL7gqGfISdJXNxcKKIp2UjRXzFfV0LNCntV9R1BQsYxZUZBavzfko1oA8qSmCE3QMV3moBt5ckmO5V+DyeOm+AXEF6Z67u1O1UoXLCxlAnoeByg5U+zD1I7CgQZ5f4QZy7AeV4hhiFhgyPe7LMq0x6ESdxfL9AUUN41e62n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JizoJjiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JizoJjiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6678C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728071753;
	bh=Dig/MNaVz494kYSOXiy2K7qLLcqL85ZSp5KO+Zoj03w=;
	h=To:Subject:From:Date:From;
	b=JizoJjiuZL1FGYl2kEBjHCQKzoQS/xyLehszV2DJSnujJ5wuN4+Z+2ADiI30bCejd
	 9RX/Ibd6pcATKKTTeoQea8X9gAqM8wthL4DXN9G4vCH4zxD55eDCO9j6dh0VqGbDEE
	 Cg1M0P6cfyVHqqfSYoG+UcrV4f2FGMwK17+o65ifqfhAhZ00AZi4og5TA6erC+nZAD
	 3WOah4LmLREPpKGjzhsSzuZh4/p4NarGY+U/W9TdBDrZBTD1BHkTIr1fLNBsWMgS+T
	 viIMBU+J7pb5FzabMI6bNgsP/6i/PKAp3LSyAHa1LrkDwVb00Fs4BHd+tWgQRqmfXZ
	 34IDoXtIsg7VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F4FCF8857
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172807175358.9916.11258682192263503975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e05c86c236f3ff323463ec41f6b1e7d2458ba744faa7b27308d18f9152c0031f
Date: Fri, 04 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728071753
