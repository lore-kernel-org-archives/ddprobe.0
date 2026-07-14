Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CEF26D4C3
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784015314; cv=none; b=Ac/2nryuRHzy6onavs6lt3uAHlmK/zB4lUeDU2ADXOgeFZdZyRetTckXKKLWd3eYT48n3V58Z9OF7lNd93KmJkswTmmQdD8qcLQnJ2e5fzmbPVhhRY2VAiUvZqlbrhGzDxhZGwSuffSc7LpbBflYWeMrm/VZMAQ9jiYDBmPdhKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784015314; c=relaxed/simple;
	bh=QqMtJRh6qTIaLmhBe0OlEyUXKGEp7bc5g4Sa23gfdvE=;
	h=To:Subject:From:Message-Id:Date; b=B7Lv8oOx5rWKE5Xb1cpoTuKd4sfdgwjrXu1OcX+00tIdoR+gHarDItOtqX4Gd9kX71VMMgBSK/uTCt804X5hktcveOKHJqZ912ph14Hj8QBWL4HQjKcKnHmHvUrFRH13uGsheiI/Xwq9+o3Dm5SjQ2ZX4xRgPZnQgoONg8uLtXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQGuYLl6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQGuYLl6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AFCC2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784015313;
	bh=QqMtJRh6qTIaLmhBe0OlEyUXKGEp7bc5g4Sa23gfdvE=;
	h=To:Subject:From:Date:From;
	b=NQGuYLl6vi6zEqpnLO0UElkft/p/sP8KfKLKkCpqXqId4fKZw1lGxOSZlj07ASjk8
	 gxCppuuczhP0x2a9ushTYXCwQw68gru7RL4k4KekB7LY6SWIcAuHsX3PphqdbnY3VN
	 flGg6eDSNlB9Of4YVICwwcpxLXNqABzJnNLpdd9LKGZjv4mV4tcUNqbX4/d9dX1uen
	 fnu3NTKBf7KwU+S5XgwtzrXqODnlS7nrUHdTn2Y0e0VTp152jKJ1M8VAEZllKq6IIW
	 u09ntgw2fqIVYzQpitLDNUxG9o8Fqb22XJ3a7WI04o5PrRHUZZ8M1yW0Ba2SaN1L/j
	 4Z0UVHAsHGGdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E8DC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178401531370.2243.11148297243134517496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b34533d80756150ab3e270d8312057e33239ecb84d4e1f8b2e6e18545c7daf6c
Date: Tue, 14 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784015313
