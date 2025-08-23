Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21ADC2045B5
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755976195; cv=none; b=HfpJopsml1NOONrOHdyfWcQtXxNLAiLz0gFlgIWk/LADoJQgXx/tzFIURuHPOIXE+N7+fys9FY/rhjHk4WYzyZrU+hCft58xr4tMg6qvGWSL7piWfgy1xykTk1todV+Nm/OtUcX3QEgVwcw+1Ymr7iCND6NO/WsLgXfT0Oc/1hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755976195; c=relaxed/simple;
	bh=ldwIva1IQ7WBarWq1lrm6M/m5hF0LB+M8rc5rk/kfTg=;
	h=To:Subject:From:Message-Id:Date; b=K+GlRE6j+VS5vKfS1KLki/tfLIYc2yDsY6Zv6ZKpPGBgD/w5TO1VyF7MuWXqjTuik2hBmD/Rx2AiYYKlX4R0FuOTAaXvKst8JzTGkrRxE5RD5+8/XbBUeeK54cSwpt7fmqYr+iYEg18odyn54sZuf/o6RDSQsMSnbjuwTjQRC2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8jRZ9bd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8jRZ9bd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2512C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755976193;
	bh=ldwIva1IQ7WBarWq1lrm6M/m5hF0LB+M8rc5rk/kfTg=;
	h=To:Subject:From:Date:From;
	b=r8jRZ9bdcUavRXPkcBKB/R8X0oGg8FwoCoM1X9Fz3eADoibqejm6k9fSP5Icwh2CV
	 J9OLlJ0hXHWKlSX/cHvaQD8S1WoPk6GH0PVC1/SE9xhXp9Vtlp/+lLWFrNl8/jpNjW
	 NnmeSlPdn+gECuHUQB9p3OiZV3//mbVz3wNC3XFLL+4huYkq1nA3appM23SHFiCekq
	 +alEZt224ESjx/fQ+crO1qQV9pTouQj+W/y9eHgp+p79cYYgkAsOH6DfgXVSIUwktJ
	 Rxmdl7tvwtxT9ycvikrjjNVwclNJZftDc4YjZ9BlXa04reJzBWSLjcBNmJnSgdfIfQ
	 dqMWElFGAQ9rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B0CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597619357.16049.14091328233419769921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b77c994b91ddb391ff378cf424d1336f130436287e2ec7b76af3a0f8062d64f1
Date: Sat, 23 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755976193
