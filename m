Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503321757D
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 08:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715158343; cv=none; b=WuSZhDhlDbeEch1ZlboUpD2jvXdC2poVnAHwgmp3N8rfIroe8gIL2rNI0EUwYxrT/DYL5SnvtWBuP6jGtL6JoMaOXFf+UsvxN8VtYJ/tlolsLKETONreZGXVWCtxqFEQJByc+wUHVmMMq36Gn8x+ip3ar0nktszLHQ/BYDsz0Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715158343; c=relaxed/simple;
	bh=w/mqR/4Q3zwbfOLEDNSsdPDPdXWsdN2rlY7sR83Jps0=;
	h=To:Subject:From:Message-Id:Date; b=GZbmEXkJMkKdI1jjnH8ph8JxJfLQX6A9UMBeue8SuHwUv2RVU44fJ+ww+koHMpgtMsSS+BX2JuguzNjkSujrq4R5VtTVN7fWFF+eJV6Mo3bwNKta6kx+VqIIhwem2w4YsrZmssF6mLfhCB6RUhcuLAUe1RQQYB8WejtR8/hjz8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1E4E6R8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1E4E6R8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF8E5C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715158342;
	bh=w/mqR/4Q3zwbfOLEDNSsdPDPdXWsdN2rlY7sR83Jps0=;
	h=To:Subject:From:Date:From;
	b=e1E4E6R8YqKAC1roBhTnSlayWuQLVJn4bD4BNtYdqddzutyQw9MMxEcpQ5hgy56gZ
	 mCIXCtSumcmtQ1MD5yTquYaAkDg1chP/xJWCaYt8mKiwDycY/jBI6ZayHq5v91GIL/
	 ywoFM5ArBzl7jytLkr34utD75qHaiuN+ReJ5OiDIi+4gr0buoeEVHAa4+FnXOHg9oZ
	 kD6OUqOKzDUXZ0AoSsrcjam5ft8V76pqIJM5AhgxqrHYTuX6Hpt6cW+H99rULBUAXm
	 aQSTMF5cg/9ilskdKBTPH22ojUNy6eyo5ebonQ1sO2os7/ffMb3Z3FuvTA7LwCBg81
	 rxu6Rhn0aAzzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DC0C19F4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171515834281.12869.6737484458433672079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed50702941fd40afc3b0c57b12392af2b33eb4b1647a09979e3183fc76a9331b
Date: Wed, 08 May 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715158342
