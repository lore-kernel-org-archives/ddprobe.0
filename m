Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5FA3CE4A3
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784581714; cv=none; b=etCC7OvSSzqrZrFHpV80OVfdVgfRK0nPm5CLgmqCtXlOUvHQWGvD0w6x1vNwbLqjK/wdvsmKAM3pL7VkiQxWGBU4AVD1gA2E3DvKWNVzTSzFacHHZIgOHv7VdUgDzKP4fW/DX9tHlM0m3oH7BXiZJPkqP951kAYpW5tB2Z1QSqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784581714; c=relaxed/simple;
	bh=YIjYKKYFrH9OjgatOxMOOg1lvjEE7Sb9SHc9JGi7aNQ=;
	h=To:Subject:From:Message-Id:Date; b=I71uDOaIgKGXEmRy4ELzydSsg3bis8Sop2QezFzec9SLXvAUC6F0zcmnRj4mq73ZHTd3Zl09SUl8Uv36tZm40Ic98HlAOxJgi9+6BvR8tDtjW+btYZFBejtFto22aE68ze+TMC71kdPRqOH53RbKptRu5FmwiP+ONvUBU0zhxu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGSNdg3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGSNdg3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F9EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784581713;
	bh=YIjYKKYFrH9OjgatOxMOOg1lvjEE7Sb9SHc9JGi7aNQ=;
	h=To:Subject:From:Date:From;
	b=RGSNdg3PRz/soUwl4+EEtRsRrcfc/24yyhU/j2WkgRytD+yJ3qS/0GpwpCjuLFdZw
	 69fmGuj6YnkVV5+c5n1V6zZxvtbpq8GUKh6YuVqq9qWope17Cp93/ow2SHWCx+XPAO
	 j6hzLF4VZlMk2hPYLquGWuVQ9a9TCnVnBBvpTofjqAOv2Eon1evGD+spaVrTSntm8u
	 N+MiojU6Q80O0R9VAzlMM5Cb3CPiMOBTAcQmKDBpqRcuATdxeoCDixB7VcoFyt3eC1
	 r5PEsEQdyC6cEQwslp7NwD8Uta9Cv4BAy+1pDRTIf61Zcm7jzEZ2rlgNgHldVrLYxL
	 g7apk9+5K7Drw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE28DC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178458171370.20001.15067843763206200628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea11f93a2b2a7d67416c002cd238550408cc5e7672570d0a53b49b6ae8be8e6
Date: Mon, 20 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784581713
