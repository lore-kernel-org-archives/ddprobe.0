Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D31156E4
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 15:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716479003; cv=none; b=l+COjAouvaOgxy85+TcWt5BWFMELd1RNPUCyqjBvjOXRjVSyqhJbpSXhAoYmf0ByA4Ng8x8LgqnebOzulKbLo57WVjvMfg6fy58olQsxwRQsncVHNqypFzH+BnbuDXVA60r5gaf9yQh0tZorSOEGksYMtWhCvIKBlyRR+jTQzQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716479003; c=relaxed/simple;
	bh=BzMdHijPwBHfnxaq6jTp6LBxwceU/fnJrY3W+Y4YHJQ=;
	h=To:Subject:From:Message-Id:Date; b=DFbGLMN1uTce3/ahnw5ydKJSsUbuStctDwU0w3/GDngqkCWOeRopAJy04pkvqb9YUR04bk6r5Ru1TQJTEbeqoB/xmiKdPoWvm0Lr7htHZ9moW+86haaVBKz6FW8RF5BSJBeug2oGM2bRAfpKkzKwFu/AiJqX5rLB4AeWWZk7kgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUJbSuZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUJbSuZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB888C4AF08
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 15:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716479002;
	bh=BzMdHijPwBHfnxaq6jTp6LBxwceU/fnJrY3W+Y4YHJQ=;
	h=To:Subject:From:Date:From;
	b=hUJbSuZ7Oix9b03v+9DgdACLqfObjLxsscf9JEWWwsZ8OCi1xgV3gKmZE94nkBxqQ
	 YUUIw2JiS3SoGiY/kNRMd+G1RhWuBTghcpbdt1S+NYdYNCmHAogPZfXxQRB8pxVpEt
	 /LRX+UFJzcSw2rdcQOZ5WEwY5vm1ZNwYgkPRHXYc70OU/dzcv5vGoZ9W5WJoTaQiHl
	 aeO1X1siHmEWINBFc+8Ua9u8FVQwOHw6lISpuiV0sRV9aP7Qim6reyl6BQOLq6nEEU
	 3BG5v/EQP0+jaGUO7oN7GjEgFaiw3RbaOxddmsUutpEojVS0luJaG4yU32dmDaH1S0
	 y8oPJBDX7Ertw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CD2C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 15:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171647900278.5583.4505778075477212832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec48189b8e4c3e0b8d5abfac845df2f2c408c756a7f1c2356103d98b0de394c
Date: Thu, 23 May 2024 15:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716479002
