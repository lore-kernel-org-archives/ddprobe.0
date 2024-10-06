Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9C52572
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728218754; cv=none; b=gFm2UL32iHTkp6Pg7PgZMXogJdr2yD65mlpLMykKU4FjfxVMaaaxJu5gXBS5+1SfGI0w2p0y+/HQPvKZqdNXizThzG/iLIBaeAPGNu70WgWDG2U7uoGD4u8sTm9st329YD/K43EwarBM+cHgGBp35cSvjKs+KM0ssSVQhjA5rns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728218754; c=relaxed/simple;
	bh=hJQyj3tuC4h8FNfNvpNGaO8BKbaSzo2nY4/o/ffGCf4=;
	h=To:Subject:From:Message-Id:Date; b=ZdW5h7+0BNeS0uwJcJ7HHC22pGAebSo3mk+R+XVcgVcdmJqfTVHp8/zJDlMWq797hQPKOjuultesHKwxL68ksTfEpKCkh9bFYl/bVzjW3Cc9FMSPUUoa6b0ah4h02QyyRs0FnD3PbvqPQ1BP7oBMcFLaA32BH0rMD6UN+wlldbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLKp1MIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLKp1MIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24A2C4CECC
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728218753;
	bh=hJQyj3tuC4h8FNfNvpNGaO8BKbaSzo2nY4/o/ffGCf4=;
	h=To:Subject:From:Date:From;
	b=sLKp1MIr3eo1h719mbqP4o0Qa5Yobyy9WxGLMGFAXSshLfji0KV7hLsouZ/4WZyWb
	 vxvE25t3mP7W4nFd47ne5tNqbgf9QvHeFR9W63CYGJukhy2u0g3Vle7ppKnvRXrUvR
	 IX5lSAcdkEc9l5Xf1pAcNOvHALdJsd/jEP3b8ITnV/z00vcK9XsBIpLALde3yP/i38
	 aBCLgotrjOOUXPRm37LYBKMIr1ivj1qSrW4JmEQFZhDAfUB8unceyVDuHYNsXXWMWd
	 FVbA6apKMsMgJ53iOVFldc8rf2PTFHKAWZgso5ypht9qdzmtHmfyMSBHLlXID5t46m
	 rgHmUwT/P2yQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C4ACFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172821875361.22400.9334173467464449250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ddf460c2fb27d068e0b5d5742848c4d619096c88bd69fc676c830c8decef69b
Date: Sun, 06 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728218753
