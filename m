Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C2D136358
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760857794; cv=none; b=pPiGgQy/VndHJvLrnw07KmlTHb1Pe2IG05KVWlcffO9s8nk9E7CJizAsrclmW+IzOqSBaxyYM9Iogq2LfoV2ry9m8pbLH7WY+AhZhZeHaRrL6N1FItcv/RX/mPOHyYyd1MWLoRAinEblGrxANflugbKPDR+YCN5ksIPwWjD/8CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760857794; c=relaxed/simple;
	bh=qaNpSiRgr7b+4H/9JTg5LtGRM3H0bSuqjFJtX3TVvkg=;
	h=To:Subject:From:Message-Id:Date; b=NeDRJoLSJ96spIy3nC3p6l8UFwTWiBfYojtaecbuzw/8/ijLjSThGkByWTs87uW3Z4MMP1GhCgZ6f6Vetdh4X5IDf0naqhogy1SWsYx6jAjwRsxgXdPYorERsvBuevUGAqBMAqW8qaVTcyt0EicFlAXmy4nS2ZaXTuNN6RXKBT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQu3wOcG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQu3wOcG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DE7C116C6
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760857793;
	bh=qaNpSiRgr7b+4H/9JTg5LtGRM3H0bSuqjFJtX3TVvkg=;
	h=To:Subject:From:Date:From;
	b=hQu3wOcGv0R4hFCy3JVv1OpalSH4MJqyntyFJbdrS4TTz9NgFRcQ0wW8YhOWVFJQU
	 CGxKnH6dbOwDzob+JpzZAWP4GIZHFQQPBjlcFaVS8tjfyNZ4eCjGI4bsxerK5xwe1P
	 lCEL8Zxb0Wq1gBT123vyNQgXWYxZ9jBdi3Pyhj9zcH4WfqHs1SMx/Z61GdZX0RzV/R
	 GF9upo5m0oQeI2d7rzBDbkvnnO586R55yr99LoU9SaPYOjifcaEPiZfyqR728bK4W0
	 AaNNytX6PCofm9iTCpsYDWeXV2vbIOZInhs1eLPQxHGftGS4OqK46E2IBwjtNr3XBb
	 iRFiEO/EJNMGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953AACCD1A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176085779358.25030.1982128775415777201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd9f14c02ea334ab819e7e4d80a636d9681f7dcf73f4482accc055ba41c40d3
Date: Sun, 19 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760857793
