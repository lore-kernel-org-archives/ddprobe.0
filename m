Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B01A242D89
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754761195; cv=none; b=VuYZaTKXq3FBhhKVi2CxVcEBxLYOS8A59z3SOeTr0nNvO2iJR2hBoMTi8Wl/5zN8B47hfIZM8WjjUdEKNQR7ynpubt1dU6aGEbHvmp+qSlAHN3pOk0jgZBDJaFGzvwQjhoXSSVVsBY7KrDUfPzY857jECV/WkvNh82faG/U/sl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754761195; c=relaxed/simple;
	bh=XhMl/GFWJTegDXJ+CwshROWtmIf7QbNIbeIlA3ipNmg=;
	h=To:Subject:From:Message-Id:Date; b=S18D0vmLeDTmUXiKWzITA11n4tbKsSK/CGMAlGDD7TaJYgvnT8g60PKTpVm5F4UnNT6FB8EkBkq8upGLfKk4w/boKuJsDirV4VYQGjgUDxoR3jNOdF9JMC3azFKLjWJASQlmxc7wAVoPsGOQRmYllrrpk7gkXuMBbyKbwFy8xP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzXcyRMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzXcyRMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E75DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754761193;
	bh=XhMl/GFWJTegDXJ+CwshROWtmIf7QbNIbeIlA3ipNmg=;
	h=To:Subject:From:Date:From;
	b=dzXcyRMmTWvP8o7RncPTBddkRQviWBhEtZmI5jFkP1ZAOCyHZ42AQEJgExiWqO/Fa
	 nCMK/QX+4ai4QdRL3Mv9n6rmcUH+2koUtz24XI5fzoaicYfhZoAZiI+LibA4DAp4Sv
	 TvOxsxjIqPQvypkSBcWxG9uES7XB6feXBCC3pLOJIkVnWhuQY+0/IyGPBHFc1vnWvR
	 zrEx0w/fgTa9mkbb//zcx1Iq1obopujge6b0e6E/+tdWV50Swp9J2HWLcX31qBqSt4
	 kyuAHU0RLDfceBqEY/2+/bCUEuOPo7Z+y7455+HUJ1lLifyYPd7SNQLM04GbfUD5mr
	 q6eWAWKTqncHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F652C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175476119357.17781.2795701329036009951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2da59552233305f674bff5f253400c310aa0ded49a99b1f273b385ed2243d51
Date: Sat, 09 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754761193
