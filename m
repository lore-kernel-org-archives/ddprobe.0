Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C268005D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706031497; cv=none; b=JbeeIp789lMnZIWMCCJ6Ob9YR1HR2+OApPYeVW3G6dydv4x3aT5S3SUcGxISDd1lcbAnz20MWaEh2x9glKW3mqbLmhKI5ZScTkE0HEDdzHL/R9uft7MQjpxTVLxZIN9iMYCkU4Q0Nar7NhI7a0KBbbsr0R/vDr009DQ81+6ps4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706031497; c=relaxed/simple;
	bh=uWhnaeaR7YgVDUdqCg5Wz2SHGsCTzvVFpx6gYc6hoMI=;
	h=To:Subject:From:Message-Id:Date; b=YNTr2J7c3bWXlfD7UW9McU2kAi+QwCWTyrHzzZ30f4n3LQaGHE4d/mGmKJoc7vDf94RtMk8ljZjCyMBYUdPTxzfwZ0cIeLkFT8XtYzYYwMN9GCpiydSKq/DqbfdFD4SP2Qf0Zt6YmqYxoOGpzR2oa4tyeRy+Qhfc3xHDM9die+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kx/w7Po1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kx/w7Po1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73780C433F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706031496;
	bh=uWhnaeaR7YgVDUdqCg5Wz2SHGsCTzvVFpx6gYc6hoMI=;
	h=To:Subject:From:Date:From;
	b=Kx/w7Po1L4M/Q/bk1rRurlVqBtVe8aXag4TFR5vJbZP+oowzXSZJ0iENwIExqz8hk
	 udFcU510s8VD5RZOFIaJBV29GRhJsg3BF4pffsIXnXHtKAkFCfGeEB9KUj0RWkLflw
	 G1CF3cnn52Bg5ewos2bUtQveDOBXaammTmHSTRIqOI6J4e2KKHZp0YsEzsCISv3XIa
	 QV5QGCMMzN5xPy8RpmjIXw+UjQgbTMSTLcKNnhrgnnx0iN4cS6AlVOfJkW0oN8ZD0I
	 guhAU7NvoG9JrYHzNk6tj5lGPVmdgDNev9AQYiFpzj1BmEKE974qrntkZ7jpWa6drI
	 5Cq/ltSZq2HRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6058FC47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170603149636.8632.7554824295910360566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb891c888ffee5868d5e0697261ff72c64d57abd97bb90a91ac5729c0dd8e1a
Date: Tue, 23 Jan 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706031496
