Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBEC15217E
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 22:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712960963; cv=none; b=gNyNIp3BDXMDohmrOSJr/9ckKgm3+RbObaH/rJYIc8V3DLjXc3SxC0zjyEun4WnPo7FfQVczxvLAk3tDfSh/VUhro8habwquwvqsUiqNWpWxwqMF14mWwIIcFYBTNgjvGQ9GbSxe5ZpiK0TL2wbTcLwge7GZctPgwKQrpLRg+ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712960963; c=relaxed/simple;
	bh=zJRksoOsoF7ge6PyksjSdEbm0GVGdOdXOMyU0dVptB8=;
	h=To:Subject:From:Message-Id:Date; b=e2pSf+s3WLpi76sZbWJ0K1qmJOSg0FlqJkzZQMKmfzoNV7Gg0OUtWbUKCV+8ebEhHlwjTAawPZf8WBRS+yXXg4fgdF5Z0PDxhS+gwyny+znf9kZgSyo8QD0XrO0Yg9Q58i1fYx7v4jeBuFiVov06rtz5ObpiE/7X/KEz959lyIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8mTQoX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8mTQoX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD69C2BD11
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 22:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712960962;
	bh=zJRksoOsoF7ge6PyksjSdEbm0GVGdOdXOMyU0dVptB8=;
	h=To:Subject:From:Date:From;
	b=Q8mTQoX9w0N9SmXqbwF/Nvl+L/3hNiFdwwAsTwQ0RAUSEJaLDD2DLFvL/1GZDEgSo
	 d+llGDLY5p54jMbE3NS2PV9j4UDiAAr0WJQhuGPhB6VRJxQTw9Xdsbo8Me7ixayhGB
	 8PQfzl3jPSlot2sZ45ulH9EZ7QjHVgaEyio7h/fXUz4GSl7aA/rtQ6myMoLV3jVV/Z
	 ZITQD6EJR6YApYSjliVkq6+m/gOLNb1n02dw9QpAfzPlwBogX11xjPa0jsKgMcQqMs
	 xQzu+ynMnfOJ0QNZ9yRwvUHlVAWWqdB2RbuWzM0lE4iAxi2CvPHeA/OqTKPpVJa7LK
	 J9kl4HdTzOS4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8321C04FF9
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 22:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171296096280.1419.5564446141845740891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9258f03de62f90f1cc2bc5b9726e1b55e74d171f3507c687fb80af8069b5d1ed
Date: Fri, 12 Apr 2024 22:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712960962
