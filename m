Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B68182DD
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707131897; cv=none; b=XJE8cIB4YzUK1T8jXsOJUma8sPdfIPp4a61arFin5+eosdYdjV8xdMtYvZKUusZaNihrT9prWAp3R/pCBmIQVMwCUl4l5ftGgOhV1VELzUOZji8Gr0zT1v6AU6sqau3HLZPQ4Qsx9nxFtEDLFU6Ql4HWDx3SM/6kaSii1qlfvy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707131897; c=relaxed/simple;
	bh=hefxGVC/bi09e5dDIdU3H7Uv98BMZzv6T1SOiX/TWYc=;
	h=To:Subject:From:Message-Id:Date; b=JI+VwYDhYmZZ+N7HI1t9y3kEXau6D/PKuxIAg8FTJcQFj0PUrcXGVg8UhsyZrs/XBWF6D+ftxAC12jI0lGQad4EwP/UfsmZf2MJhHwJaWEHGuH/a89NNYGokDRGOBR1AE53Lw1cFq4ROWzwz9hsXmMnDXZ9au8kfFC/wKM/t/dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1UfHs8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1UfHs8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80850C433C7
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707131896;
	bh=hefxGVC/bi09e5dDIdU3H7Uv98BMZzv6T1SOiX/TWYc=;
	h=To:Subject:From:Date:From;
	b=C1UfHs8l1nmOVKpCXMspSnIlxki7JYrvM+vz7WkkP9LAPJfF0rMCMbWVBNOy4CkXO
	 2BbpGEtohmpEz4NYooNn7U/5moejlPGE/DdQ/aB0tY8NzJy6+5FwWTKRqAYgJ20d64
	 L1IJaPlgO9hPnB/SEWnAJ9+c8KNrv9MMAIrGv9rUfWk6K7/Yx+Gxxr/mbJ4f6Ka7Zb
	 7TUWul6YiHsgOqnpGTbGoRxDl77Kp4GHUD0iYu5IGQbRhUzpf+C/rOp/7V51qpmrtv
	 +1iaaTu86fbpbvdo6gA29rsng/CIf+15AlmIca0UqlqJAQfU9eA3Jn/mFv7rRQewgs
	 C8+84EsIcDYrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E3CC48291
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170713189640.27981.2617907294425917822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e6904a8d218d0e9f214327287e47b3245cee389cb53798c6d036c754f8c75a8
Date: Mon, 05 Feb 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707131896
