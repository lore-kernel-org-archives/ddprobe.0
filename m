Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96461155382
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750225194; cv=none; b=PfYs2tMBvFukjvdRCiFWTNz/uahBdHqBXzaP6hhGEiSBKbANbjqdJhCckH/Ikgks8fm9vhPgLBTjAu43Or/26vFrbEt+XfNawEmJiacub6eTphCBWDm/BbH7wztPyUiVkIj9FLs/XuN8s04SlVwKoluTy5sfzMsGzHbTxqFooew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750225194; c=relaxed/simple;
	bh=6U7LKoeIjGpJxVB5f+hMYT/ptXJQcDiJycdTbZCAgBg=;
	h=To:Subject:From:Message-Id:Date; b=OlQGMjodzyvxkN4GWhVY1AVz9UPJVPbtrCx3vNLUG3PFCqbLzN4HReL9vAYLrgBgiIRYq5ve8spJOliPrYdU8ONMBKiqE2wyqyca4PVH5mz13WTi3seqFl7++17Y/7wrAjZJtOsQRt7+ajlKPJibYSe7oy3s2RTmyy5NBb3DjO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9XRUXu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9XRUXu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4109C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750225193;
	bh=6U7LKoeIjGpJxVB5f+hMYT/ptXJQcDiJycdTbZCAgBg=;
	h=To:Subject:From:Date:From;
	b=k9XRUXu4C62KsAat9NLrDf78kW9g3a5IEKlFflpQnjqfhnB/4fQeOxj5KkuT1Icv+
	 bnufeSv2BN7E6QipFQAlbnAywZHMyOe/OsVuhcHNCn8vjgy0LBQe1l6t9MCcSfvPeZ
	 XbUPBbArj28HnQAHUBNO+W7SQW/Hny0YQIgJpL8iMgxkQ/wihT03zZqWgHNb6x2vPk
	 K45JJCUBFWQXYIOxpWjITGBU9sXWBHZcR+3REZ4oqDExf2Efn9ndvnmtFd0bWDide6
	 Zr4U/oEGIM9nNx//xe/ntIWY71Qmr0qpZpcN2XVMbqn2B34Um2FvlqFkalqUDL+QOg
	 TYOzxwtu4ZxQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E760C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022519363.22283.6444047523358835332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15befb28c3ea90284fc91e15e2e0d0a783e76895fa3cf82d259f69457fd03789
Date: Wed, 18 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750225193
