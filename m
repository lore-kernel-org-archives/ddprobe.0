Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9E141C63
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746450594; cv=none; b=q1QgM5Y0hSPdWetrEPzQpGYj0b7EtxMu4zhP7iiYYkGkW5Dm5lTu3wqY7mmRMXfD/4UceOmFkNDVzDqCkmwWU0Oq7TkbQ9Ts9/kDVeHpIWaLJunaktU99LNd8V/+Dv0zsS13zdD18Z6pI6zhKhfYTc4w4MwtPP8nY7rBH54tNjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746450594; c=relaxed/simple;
	bh=WcPSFBJ7nFxmO6uYeH5JDI7+jcCIRcNKR/NhtblknsE=;
	h=To:Subject:From:Message-Id:Date; b=kdG5TFAwqpH3Sp8E0B9jtCP8bme8oPrtRgH0IS6zMLKXV8pieEOxAeUNJU28exmktOJk+dnrmwPeFVfCnynCWK0l4bSDoR7ovTkb7joXsNyVM4SLpefSm1siF5fbmGotQlT89rMHeJwxvthaqBDQYd6bNz/h8h022lK3jf5rYgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nU+6DKHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nU+6DKHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1BCC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746450593;
	bh=WcPSFBJ7nFxmO6uYeH5JDI7+jcCIRcNKR/NhtblknsE=;
	h=To:Subject:From:Date:From;
	b=nU+6DKHv7ptwIajwMZCkAUxShhQ9P4/i84tIbk1cIj7IwLu5tqCfYazCu5HWooXhv
	 RVuxcXg4zEs3odyhDys05t1wlYiQqrmAP+fD6qMashwXG/Xh0sh7oCxFVLKRxXSpn+
	 TWxXP9wd7jVLQXnl/2KjEfM2NCnHT7EJFgd8ajRG5EXcOmR8aEkeLxyZrE+xSVXX/j
	 36ILKfd7QNxjqn0fAfpY8S30+dN92MX/fj0Shej6PK1gR0lu/52vlMumOJI+8CB5hg
	 VhxIphaQj/dlSZSmJEuPy8KvmloleT7RRNRGQfdCcu0ykuW+Edmc8csNQw/sYs+8dV
	 PSDsDN+NKATZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E062C3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174645059357.22457.674392879141595691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ba38d27d0b6e0420216f9234854511e188183fd25635f4a6a1e41abed03fd1f
Date: Mon, 05 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746450593
