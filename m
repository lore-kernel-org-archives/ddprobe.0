Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7BD4C9D
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747480194; cv=none; b=JCsmJvusYQpKh7opFkTbyB5nLamd7DVa45c7a/ashHv2vbM5JuW+SZoXQRn8QaOqtSxhqS9ZQ1leeKxNaGrrOlkGqtnHWE3GPZRgHo3hck43mfKQY+GjPy9ieRdGaEpeKqntPvee6JJki6MdnlYJ6EhEpDUWlG9qgDsA8qJxLUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747480194; c=relaxed/simple;
	bh=BqDaqs74UHfpfli/2LchoA0WsvPCjM0044D03ijsodM=;
	h=To:Subject:From:Message-Id:Date; b=I37NuLil6KC9NcYVrM6km8HVtWMoU+PFgNpr7/x9Hxpy/JgL1ch4X7Dvd8k2yMtUFIq8TmM+vt+p6hZdfmmGYcRiUv/v2VUI+cwayKIGl53HAJdbvtnEiQU87EIIDyZcjBiKdL0IY2kzKaTart3J4y6BwvZFsxJb33TpxXNfyJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEUxQO31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEUxQO31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B81C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747480193;
	bh=BqDaqs74UHfpfli/2LchoA0WsvPCjM0044D03ijsodM=;
	h=To:Subject:From:Date:From;
	b=TEUxQO31O3Qp1igj03vda8cluZtcIm4+dC/gYgXfeq51NLATDG6sZXLkMjR9+OGxb
	 9mAxt6WbQl/70e5WSsXCOCGxxsrlQKDE89ukZ8QB3tqJ0IdmGjMNmmk6mrhkqo+0PB
	 P/YX4UTUiAuJGqcyHXYncbfrIEHL7bGDuh0kC3b/ki4iYkR0QcA3NBWMXgYkC081PK
	 HJnluL+6sL1SYnqoqGVR7yQMRYUGKrVTwcUZyUaSnTGOYGGz0kkoOdSIIUouUz6XLN
	 daGgZ7c6qTuLODe6p87nPCx+Ai9c+N4JJqWrrhu2sp761h4vWfX5v4C1HpBmNxweDE
	 g+pgrVr0X0lVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9109EC3ABDA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174748019358.25843.11686344991334059337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197704555b7ed1352293a1cdd4ebfd9f62c80c57633434774a75ed30354dabe8
Date: Sat, 17 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747480193
