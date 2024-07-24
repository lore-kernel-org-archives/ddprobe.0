Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1BF4A00
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721787954; cv=none; b=kQc5BGaBCWAAxUD4PEKKDnTP9+EczDvc8ZyxrNVrK4tSNKHuVp0xi8mAPWP4SNWqwdgN8Wr0fLh7+8f3PS9i2h0Y95RNIlvmMeVLIVrO0Da6S3YJWhDbJooDjMVyjsWcdqtOo+pwk3ctmYzW5kaU5xGRr4GBYdn32Pe35tJhBhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721787954; c=relaxed/simple;
	bh=LlNYeKNw0DrFy5XUenUlN5NSVL76iEuJkuV62tzJN6s=;
	h=To:Subject:From:Message-Id:Date; b=nuikfFSClLZJqZEuppLRkzUB2/fiOwxi9Z2O5Grd+YEbCtf8sBjKZ0v0IpI9xSVRGG195KxdU4bYkuf1eYxYzq+TcRqfdKE0CizwI7WFysFUm+Pzz3vwGFO9yBw6SaiXB/11DvcM8/8e7cGwF1UPhUVhiIXELVlZlH/xtAXzCBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHrHFy9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHrHFy9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF24C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721787953;
	bh=LlNYeKNw0DrFy5XUenUlN5NSVL76iEuJkuV62tzJN6s=;
	h=To:Subject:From:Date:From;
	b=SHrHFy9D6iRyOvJ6bAh3fRiCW/SxpT1IQIiqGbNEeNkowPeVSLHbLr0QFAcUtH9i/
	 o6Jo3HkgWSvNP9ePqcRmpMKoKFTJwk0PgzOIG8gj6Oxso+37ncX+ENr0KLj0e7C1iM
	 AjgJsYLnrhH/1U0kpy54Tty8/kT69QHFBWdQPCkjAb4ufnMcqpwTOY3j/9xzCbn/Ki
	 5hGvHOexWtTqVKddSqk4y4dU8o4j7cXg3yjTpQuomNWk9J9PzYkgnawIQ2hhnKw1OP
	 dgSianbwuoLaKiiUFWN9rGhMJLcQn6ptKsUg9W/Im3/tfCcXd+o9eDjuI3niPbfPDr
	 2oFAm1KQFcIsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98796C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172178795361.32083.14008475247410679941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f72d326ba9fcbde81c4397f6b5c519ed8afc3a5dc475c8cc4a09905e7f7f2c
Date: Wed, 24 Jul 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721787953
