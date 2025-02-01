Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D02CBA34
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738401955; cv=none; b=VEfyVGnev7knYvSTbWzatLty9Rw1Uqzufh5yOX0OeVVFyq7u7+Q4NH/dxppN356yNSWOlWtmcy/b8x8QP8QIMopSt5Vn79PppCjoTPEhwJzV6KDunZZBqPl4Po1mXX6D129BbppMIIx5Azjw/nIanZw9pOdCkK2sfoLE9rDwNJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738401955; c=relaxed/simple;
	bh=Vp/qHXXTWu2kzLOtrCeknD0loSKOiZ0QF6NsrD9jLBM=;
	h=To:Subject:From:Message-Id:Date; b=f+ZXeoX1gE28GUhxhwODHJiHx1ssCKhFbdYJ9911zBSQFWHjvGP13viGCoilJJ1Fqk3oDeLrGsPLczGYV4Zn87yokzqAzLIspSKuLzhMQ2+zE3TEeM5pk9X5ezraXPIyhAqYFDjBNQYmGdMdxyhWWN9kP6CPBYFU5yEWs03sMXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLzBNOYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLzBNOYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C056AC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738401953;
	bh=Vp/qHXXTWu2kzLOtrCeknD0loSKOiZ0QF6NsrD9jLBM=;
	h=To:Subject:From:Date:From;
	b=bLzBNOYmcOpaHMATnInGjQZuS2DpIYD9VBlwONWyq8T1jt3r2oovY0kPK+5FgPpnw
	 KaI/sAtqdI8NL6bURkviynmX4v/iye5gC+HHtTYp3Pi4/gy80pg8S4duxTRhTVdNjD
	 yGnsVjKDh+9NYjzYJrp7ajfrfrPwiUZSTBezOr0rug2r2SeQZV5tmrY5T9sadkSVIS
	 i4jigipWhL3tKzrbQk+RTcDMcn50EUE1o5ZOyYgz/QUbZrm3uU/FIoC/hhYESgCYUR
	 SIv9NjW/Hri7bE4qf5DH+pSrI+20+69Utc7qyZqJ5E6tyZvNiezDVlHD3thtkWeRu9
	 IkNz1YGKN1wdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39E4C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173840195363.22910.18049247997612370037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6f03172ee9fe5c99de32fa265b4ba72a288d0897877beb6f083eb88fdff812
Date: Sat, 01 Feb 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738401953
