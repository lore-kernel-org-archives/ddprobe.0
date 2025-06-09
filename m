Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2E3207DF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749511794; cv=none; b=C2K2zZfimGvy2RwbpRY/1qBhBFyJGnG6uqNh7SSdnGXOXL8Yschq67e5ZEtJ8Htxd70qZ5C1ZuAGYnIe1KUwBmUlXecciDTb+qymoI+IlhkQxBBmo6DZzYrfNUFBZzWFKH7p5OU2ukMgXl2JPqLtiWjFG+W5tlG13dW3E0FwvkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749511794; c=relaxed/simple;
	bh=qk+tTzCF3wh+JFzXrJXFkfaJ8Vnkk6UrOgYrlWKBwm4=;
	h=To:Subject:From:Message-Id:Date; b=H2Iy9Lk43+nhkRNa2o+81gJgFQRBVi3hJoN4DtkqMSXI8yNOC++wZzliK7XSOB/NQqQsif/6N4SmhMGvJRJ4ADqZBMWXLLspObXRYedhooWhvsqbKM7pa3YBOdwrR8XNnCuXc6xi0h70LbCFmIR95SMYdUW9pBDJwLTnKxQZ9HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+ohbwyh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+ohbwyh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E962C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749511793;
	bh=qk+tTzCF3wh+JFzXrJXFkfaJ8Vnkk6UrOgYrlWKBwm4=;
	h=To:Subject:From:Date:From;
	b=B+ohbwyhpd4UsTdi74OBc5qP+HtSzVUZTxYEt5FDLGRc9I6j2W7uJibICBACoONJJ
	 xl3xVdA184GM7a5i4k8V+m3J1CEhmPwzVGgrECB/Kp7+vpTmPNKRFpJlwhSzSHI+pv
	 ynoIhECrWKr9Wk7ZYdgexPtU3xVWto94voURZUl/nT8L+jrlHQMre0VeW2DoL116hD
	 TJ+g5sH/cQtJPE8zgshUQP/Pw2eMubhBYSWG8tkQi/yCbtK518B6LbGVtzzZESxTE7
	 0wHAlVR6YjV7+2sBPflmA03W9nrJO+lLp5l5xkc/hMTDsdMqz9t3UvWpkfp4ssYzTK
	 cmLgd8ltJBxvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0BEC61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174951179357.17600.15871923251166254945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13664a664d01ef681305c23fd4be82cdce2bd863037dca9876ba2b28093edcbe
Date: Mon, 09 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749511793
