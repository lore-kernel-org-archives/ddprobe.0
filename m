Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE1115A4B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 12:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713960623; cv=none; b=KW288cbdh9Y/YtDReJqUXTMAGIz44/H9Cp3NanomRYFJLU2+By0ANHnmAJynNl/YLMk/iidyrmaZG99AJ2GjFKtIyX1eT+pUPCD/gy8Tdeo6EKhtAitjSSaMmUUJVuJUJ/tUXtH9VvMfKwOBY3DuXbBwxdaZ4TzitFk+K1tI1iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713960623; c=relaxed/simple;
	bh=g3Da5quQBz4IqQPMXun3yk1tLuWrkaVtL5mVIh2kZT0=;
	h=To:Subject:From:Message-Id:Date; b=npKfNKW91bZC2nqvYQMUcszZ3O64YcREgw9pxmRft/j+ebNLi2gjSrA25i1k9WhpF4GiGJjB1nlZnL6tOhyewKEjTu64yrN+zPxpd5NUfsXdakTjULsbvLagohhEEvCnqHwQBSpW04UQrTeuHLG3v6xTi87MIi8Y3ALAOMSHAcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bR74ytv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bR74ytv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05D17C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 12:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713960623;
	bh=g3Da5quQBz4IqQPMXun3yk1tLuWrkaVtL5mVIh2kZT0=;
	h=To:Subject:From:Date:From;
	b=bR74ytv76mVX1pNvKS7HnlVrAlKiicZI+FBexMGzCSGPzPSuEEfwWNlMcEv55GYQh
	 dT8XvE+txcO2+X4n8oYBQoAI1T9iuEiVevLHQKWxN9KrVYMNE2SEUh1/2kK3vW8LYM
	 VO9yNxpPVnGe/2qHQumN4HB9qmGPTEhZrYBCZbPRx26kDlIh5vHZsztTVHJ/JrdY+4
	 jTNkFLdV0v9byjq/J+nlt3eTPNt8EZWlxs55gmV4wrzcIjrSgFAU091n+KNcbb2PHb
	 Klxcg1huwNmgRnkKyQnJRks+BhfD79GEBAkWfIEjE1ou0gxibjQ9xGCngGqlT+Z9TP
	 GzBI5Mnzu6FFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA0DDC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 12:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171396062287.9616.7680306723757673681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f40b3687bd5116bb60784bf0cb9f2b3dbcf5e2785f866254aaef3493e517bf
Date: Wed, 24 Apr 2024 12:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713960622
