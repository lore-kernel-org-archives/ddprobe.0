Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449971A38D4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 09:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720083923; cv=none; b=C7QSgYlbz70m77H9f2eXajfLcrcJIZvW7/iuYqtgKwxkGZLtphdKurX0ifiEOQJUstnmYN9H/UxEC8jVKDU5jnuAi1+sL5QqnS6RSb1/PTbzEPOy4ZmF5wHOJVXrX9gwct91KmIpl5OO699W+jIew4o0wMg0WZXxRYbBOc7Rg24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720083923; c=relaxed/simple;
	bh=r9/KBCYoL3lyFswtyqNDhYf+wVbUV249AAY+hETcD7c=;
	h=To:Subject:From:Message-Id:Date; b=DH5nu4IX0v9zVGoXlLhm6uPNctBg0vdvloc5MESOUO3uqET8SUyjbyietdrf4SJTMTL5RfsBSlRVr52jBb9K7I9a/Y1cSBlPzoBH4v/cXyW0rtyHbmhO/7YOHqqrwzWwpMhIp0UzhFLo1f6As4kEoQxGnDTO9+d41mHro4CM75I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cu+BytYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cu+BytYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D1FC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 09:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720083922;
	bh=r9/KBCYoL3lyFswtyqNDhYf+wVbUV249AAY+hETcD7c=;
	h=To:Subject:From:Date:From;
	b=cu+BytYAo12VqHjXorV5u+0JQ9bkeEI34QsebC0alW1hziTPYQM360j0RTVrzM5Ql
	 UWXXOz2icjpZGv9c/vjcM8d9Rdd028PxQey/ioYTRjU5J421lZnzJshNq03jhSyBjp
	 OZXpCTiELZKalVFXEy0L5KJirOxLhlkLfPWvr8wztt5nx0GGIUnfdPQ7S+s4tVxKoJ
	 h36HIsiGD+ktXunsc34ilhUMWYW/O0tPfGF+PTfPtwReVOg/11VVEfBoKqstrN/cS9
	 ZKb5aaAjwmdrLAkQSYczYXzpbp++rMZWdjFY1R4Fkymhszh5/xmH2vxNJCjF11vsUq
	 jzerpXlbj99kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C77C8C3065C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 09:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172008392280.16360.15479398870791193260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b52e6f8688b223ce4b63677b9c3c374dc63f612e305de88c49d7077a25042163
Date: Thu, 04 Jul 2024 09:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720083922
