Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F628F6C
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 18:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713638423; cv=none; b=lM2PfIhXY6XNQVOHslRaWroYLCp9DQe1ys7qDq7r551YaS0yCdObpY/dwARqaTbtvs8A5eYCD25MDAKKOiPQunnJWuMZ1h4l0d3hR0yw83IXk5aq/h30rM+t8SHEar27aBD1kJ34HQjWRVTJnR4lsg5UhsTjUx5XI1wDtW0Ym7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713638423; c=relaxed/simple;
	bh=NlfolQxgGueG+gndN3pAoGIiB9sgrfNJ/bTXGZ7/HyE=;
	h=To:Subject:From:Message-Id:Date; b=jKoeCZR8e6S3tx8sLpaZFSsWNPhc3jAe15ufzATHr1pMBBSrpL1i7g5WNc/GwfeePdyD+c+DabNpj7TTjCXjfP5ygPD+ktCk0YuospfQOwiXCm2hx00/HSdKhUR22HFSnmqm0T7VHsNRrDA1CwScAZIgtbvmLHbv1fwumfNhddc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwmbGQTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwmbGQTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13F0C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 18:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713638422;
	bh=NlfolQxgGueG+gndN3pAoGIiB9sgrfNJ/bTXGZ7/HyE=;
	h=To:Subject:From:Date:From;
	b=GwmbGQTZl49z2o25YYxQAJFwd3Ruks7UG4B2AOtFjmctrgfntdW0EU/J+pjA0IN1B
	 FZ8JliHUgMoqMyV8QMog4HQpIKTBU8oRm6YnvheaYA1L55zxva8ihnRY7nxst2veK1
	 quR92g6nQyKpPADaiKs42l/tZvVmKwNEUIArmhGoxaakObnuRoCEN4h5ZK7QC/WHLH
	 ILR7BW9IDrsMoBDI922UgLDzGl96xiraY4Vb4OzuF+MZmu4h5Da/3+doX2iyB4nGcs
	 1bfVn7r/7WmIi91j4VPRp9uxbpMV4wPr76iKXEevL3nXna+05aP24syEHUjbBvbUFi
	 vsJfy8B1wNvlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBC3AC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 18:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171363842281.5918.1055848168834125996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cbc5c665addc23df97ebaa027e93672ad1200ea0035b4d998a5b6aad46cdc7b
Date: Sat, 20 Apr 2024 18:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713638422
