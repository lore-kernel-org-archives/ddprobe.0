Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1FB2147E6
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779855754; cv=none; b=g6A/L6Z/wG06BLJowXTTW8JesXGHVu7Yn7/Kf/4SF6pS6N74WbUdBlExVRGg8rPRK2pZ5CC+f/aKX2Psm0mEZXWD5eeqUkwrZW+EVhl49AZh1bEimKVwTVjSYuv/WjYaEavvj1AnJI3k55kkoGRb+XSfN4AF8c+4nkcw9QkzLJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779855754; c=relaxed/simple;
	bh=ZpfgfQ5OkpmkuP7x8pLnNbDkRunLxeG7R1mzAkGfhdI=;
	h=To:Subject:From:Message-Id:Date; b=quYLYHYhAFlqj/K39qQ/FTDvwqNPhYSui2jeR8FvLYFN84Fn/ZvI80xc5cIf29ha4KP9va5zLkMJmBf4ce5FFU8vpEsBDosUn2XxXHWaQnP9fcmQig3twzuST2aM1sJyeXs5b+ci3quvXLx6+hyh8AVIGm61QOZCMwy86PZQolk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuGVvu7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuGVvu7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B26C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779855753;
	bh=ZpfgfQ5OkpmkuP7x8pLnNbDkRunLxeG7R1mzAkGfhdI=;
	h=To:Subject:From:Date:From;
	b=ZuGVvu7jwD74Nx8LJjWtTb5518ISOpfFqbL60MoslTYTirwwt4oDouHzZdIunwkJQ
	 O2pYOxAvVfnr7Yb33v4e9Bl70eJt01DfA2FrNzlekBT+0Qu0vHSZzXlFcY6fVjNDY3
	 PLJTX5fpg9zZmv06CX12F0ZnRHAv+DFNA4+YiyeqdH0i+6xjRZbVNeA+5d1k2DqYMs
	 PVjLqnPKYF+P84opRHiyTdoJ1o90ubZ+zNzx4PT1uZKnDF7Fq20nUP7Knhj7VC0TY4
	 Km9xQ8vvcNG3mneVJFjeeFM/KXo4arofoGFrUpcPV+CF1rvApZV88avf/caQ0S3kcT
	 b/d8LHZPy18iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EB4CD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985575372.13738.13976477500324493959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821ffc471aae09eb6d81b27b404189078a7962182a2246ae0c787b659c94a3c3
Date: Wed, 27 May 2026 04:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779855753
