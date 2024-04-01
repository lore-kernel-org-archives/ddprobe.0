Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091732A1BF
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712007497; cv=none; b=BfDkRTLWYL9MrzRGik9Hg9ipcX5lIBiSzmEiWyEV+DLFZvjfNmZBJVZRRRQ30LHq/UzBytXrBu5rDYa+aiMl3Vanylc5XzxEBDxf5LGDHKHBxabk9yXNkmRoAsJ+5gcRY6jwLCMUlGbqov1UpbVinsku1uAMMff9tbyDL45YTWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712007497; c=relaxed/simple;
	bh=lCYyYs6E1QjEIbDVQFe5LdTP22wTwz0GPwgF6Eqb0To=;
	h=To:Subject:From:Message-Id:Date; b=fFRvG9I7Im74YDohZd2fDx/Qaxk2rgBXOSSdFnXa29oxRO3fdGawLPIZeY2ghrfBZkVGP3gDmIg3Gr8SHLrCl/1UBBAHVmqXmJXHwRiWwsHBfhfaK5pGiTtMVvRURSZ6llQMNd8bcvGEtoedOWfweUezAcTuHJ5m6tAnTNrKbHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uc9xs/yf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uc9xs/yf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FA53C433F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712007496;
	bh=lCYyYs6E1QjEIbDVQFe5LdTP22wTwz0GPwgF6Eqb0To=;
	h=To:Subject:From:Date:From;
	b=uc9xs/yfEBUIDUzOeiz9lASQJw1pXk6pmZk3oNpelOmHlUOYpO+P13o/VP2+Jtnay
	 eAo0Pa4Rtj+1tZL/Dv3KqPfNiDKW5sYqmlZlCmxoRznymVrnUWNKHEof0cyz8S1ilR
	 cktXVRd7V+K3Sm8VFcnhdKG201ZUGrRm2UO4/xr+rwDOmmdK+YdcvsX8dg5FcU/olt
	 cCBOl9hlgpywuNZ4L6zY+qgNk4iAFarF/JFJT5jWy2aIoW7tIbBw/gi97W6X0ZJITh
	 zYg4dNm2QNSQJVQFgUk/TXKUC1h2yBwgoC1Mi7qKebAz6yUwlqwYcQ1x1l8c8ONiBo
	 jhk7Ssx59b3zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ADC1CD128A
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171200749641.13833.8236709923379729818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce381e070953aa65610255231ef4667f35104838fa4dfba79406ad146aebb593
Date: Mon, 01 Apr 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712007496
