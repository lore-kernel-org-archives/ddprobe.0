Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298BB1E1A17
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769220234; cv=none; b=lhI1XS9m9u6Psc6U7hmmZR5hADPJM9V/Ql97oEEKf/SExXEb/4WFuBBb1dPIxTIO4Lhn3ivj50uzlV1goagzzpVENnkt2rguBaXh1J173gkRPLXX85X37KjM5tJfqwPorGGs9w9t5HwWoX2DTyyecXzx0MHhzbEK0C76+8A+T54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769220234; c=relaxed/simple;
	bh=kte6mHTHXNWZjlX47Ydb0QcO4udhtB8brJlkriFipaY=;
	h=To:Subject:From:Message-Id:Date; b=r8fgqzpD2VH/PDrZcdb8mQrv9zozShFWFO8oxUfFF/YRsTvvxyWkfPMAr8DgqsB04frmjxFNZwVKY65lss0OksZiTjm7hIycyeVJQvZM9LZe2rt00N+X4k7rdoRRgqTx40qWMDnlcJcjJJ9MllgbHVbf5RkzabeeeqrZDgOPpcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZ0s2UVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZ0s2UVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37C8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769220233;
	bh=kte6mHTHXNWZjlX47Ydb0QcO4udhtB8brJlkriFipaY=;
	h=To:Subject:From:Date:From;
	b=OZ0s2UVlaxgZ+zetVOw+HBjCWY+VEhi6GddHlUAi99h21DJlvyiVm2wa1uKNtBwmt
	 NvhCmEJ0hQYLWcG3XUI3cyO8vqOR1b591bHAhcfmSnLpONwyK8HKNIwFi/Q0Jh8IGx
	 yE/HtW5pdP47CE2zyPRMhh+r5Xginf89MLqP9pIX+ynxqxkKBGdwRoInfEYViSxN4N
	 TqJ0qnzqgryCzj4ZgX49t3Hs0LtysHLeU1ms7MNoE39hMv/CeZ2SotRzrXLvfciepY
	 Y/U/USQyqd6JD3PjPJUOhTQVeghygVtDNLkR1ieZXaFQAbj7NZR84mL+lvvDOTKBw1
	 eSOQo8qrNzNSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F08D778B1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922023362.17259.15215425922313000820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c154e135305bfb0250ba4b7b11432dfb5719cca4ae1ca5910b8e092be553884f
Date: Sat, 24 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769220233
