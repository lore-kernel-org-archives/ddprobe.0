Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D838E405E5
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709410697; cv=none; b=kKN67Ct7x5S4L8S6n5bayQJ7OogCt6cjHBzb5CzaDyvhf5UKPbBW3/zmIEcuTIYlrRhYdTDzHo3wzWrzM6oFOE6O9CHsAjWDXAEGXzohfb7HBzKtghueLkDgFCgjJWSbOyUFIuiRcBDGUfA9SexoCiyoXq+orzljMTGuIRph99Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709410697; c=relaxed/simple;
	bh=rZuHWArzq8+iujvKJE1Zf0ZTepZjZfshBFjkU0dRMqE=;
	h=To:Subject:From:Message-Id:Date; b=vB7aZSwTvN03ty+2ytDqLW8y+Ir8iQ1DNWfdKSpd0LstFX6kmYTx/HEmok20ZMq39kkSOUereUZOVzP4t5LpjQ49xsEUjntZ1KsBlPdvz2n87krAqeUXhJLYU27BS6SPArawqa3kDzwGIu5eju5iFa8ulBIncXYs5sXLKM65jq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVhx6JFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVhx6JFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7893CC433F1
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709410696;
	bh=rZuHWArzq8+iujvKJE1Zf0ZTepZjZfshBFjkU0dRMqE=;
	h=To:Subject:From:Date:From;
	b=gVhx6JFrmReIbYj0VDK4rOnGvwPGN1eiqoewKxsAzA0DFhaa2q1GmlO+KWbkG3qxB
	 kQ4DFW3acGqhFt7VRZANzUlToOx+z/OQEseGsPOCfnDUWhzZMP74NhiJsUJVHiYgPt
	 npRL6gFVSeHTst/itpE95U9MIcjt7TxokeIltmMUIfJfxdRSjR23vCU0BdYC5PKTiZ
	 wiFWnmfYizSoOuVFS50TI5WBo/WeqbWsjdcxhFCdf5G67mDRmofnvpq/7FhuUdYtj9
	 L0lVelJxmajGpvU16CH8xBG5OPuLOghj5KL4hjS3YN19IdeAQfOFPTSJHen8OUXUCI
	 KVn6B+o7By8Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D60EC5478C
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170941069636.29384.12062426541545290740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0823290792cb08b8d327638fb16703b0e068265c1e184f8fc0497ff43f5ec1
Date: Sat, 02 Mar 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709410696
