Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348C51DE4DD
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738086954; cv=none; b=Ob9IRtHazhqUumxsJrXmK6guMYU+5WvkG73Np6LxDzDqW3e++JwfSgUOheSWEiHESporwl7wnGQVxmBP+iDjdRZQUGCVU2g+xymOQ7tW+ZTMZf9I8Helh5pq5JCH/xHg3p6iQ/uembCHCOA208yElbuOTAmNV/nmeoHVbEQ//YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738086954; c=relaxed/simple;
	bh=HJIdR0mA3SUIQ+hGJ5CFgE/a8mtZZd+dMVwSVkHhasM=;
	h=To:Subject:From:Message-Id:Date; b=ndqPzcSJdiGSRxb0E9eu//edlr36tcz7t7UjhDB+97It+M/F7eF7WzjNpPRhhBLkWeILVpnJK8a4JlZWV1JV2zNjL0pfhYb9lKBLHFRK7l0uEsa/aVBR0fPvR96OG9zCl31ofUQ6O+sgg6PN/zon7bPVe2TuF+YQiYwocfx/A2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ci5YsniD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ci5YsniD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C5BC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738086953;
	bh=HJIdR0mA3SUIQ+hGJ5CFgE/a8mtZZd+dMVwSVkHhasM=;
	h=To:Subject:From:Date:From;
	b=ci5YsniD0D9gYsxQt35Odxo/lh+XcHpO43ouC5NjWvcDU1e+DcnnLpcD+VzYQO8oA
	 MOXpPiq5quYNRZD744oXx1NUavCPF1DpIzg9wn9juC0qQnj2jzuKvwmXAHiNTW8cXV
	 UGuamdnEoRRpzCZyTosy1pCStq2dlewQMuLjmypk5YoqP+GVXYyNnBs7lY/CX5a1g5
	 PMHVGms9j+oE0/qTHsvLXB1RZ5Mmh/e4cEENtN2aPvpWi9CbLHIT9sYW6L6ofBE3hc
	 L4V7s0mPwZhTbBUPuu+iUE///coY5dKoyfV0EWnfcg64Cw52mMBTsJwpT8PT09y4t9
	 kfUKh+pG7bQQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9822BC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173808695361.2155.5993910556594883016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1396ef923e2abf92f0b12660007b2bb2edda140363be429d1863f5037dd60530
Date: Tue, 28 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738086953
