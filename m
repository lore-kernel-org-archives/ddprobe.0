Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8B2349AFF
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775666734; cv=none; b=k2geQoGOEIA0+rfMnpeq4jTFkDSyV2BT3V5oPwO8QFnrIk4i+yOb4cNx/HmZKIPIK8id+I32FEazXVemdnnXfyUGowoTzp7lJfj44IIwvXpZJvtUunziRYKEZkp6zsfKERLSHpm7nb247lN5hBFtXp4+OTdCqHfuKmuBB5soepM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775666734; c=relaxed/simple;
	bh=VIQYTUtzBV+ii7RAt71yw6oGeDZ09ZImuM/kvMhKSGg=;
	h=To:Subject:From:Message-Id:Date; b=mIxMEdKV1AOC3qG5X+xAo/L4bhSh5AJ8kTh8AwTqYBLoU9jYJNK5XlVOhqpF3JcknKOrFONFG5Wcds5g3Z22+4QZ73yFavfgPJLmcmd4FOvpZ/zrTRRgOzWtcAVA+5okWOQ9uBY4Cp+lOXHdvjf7nr8x1qFTlDIw9yq6ClzGo/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPpuAJdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPpuAJdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20AFC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775666733;
	bh=VIQYTUtzBV+ii7RAt71yw6oGeDZ09ZImuM/kvMhKSGg=;
	h=To:Subject:From:Date:From;
	b=pPpuAJdd6iG2FDEW+ktlMAxZ9gsJbTDCoTFN72arZbLq1ldU2omuSW6LiyiLCemlc
	 YLi/ED3XQo1tyCH+Z7uYVul+XwzGohQYHRcxKfB5oTQDOXPhkk/w5GGGrleXms3zDZ
	 VMNJZ2vg7vBDtaiaqxT8myO2kW5DZkIB5NsCGz5V5dXvydz6/ssCNo3ZBJcwLZJeiq
	 XTWvp4EM4QRCPN/V0aPro1RhJ112WFFqZ+b2eEzdARhQFLTmiEVPu/vwzcNbpiFnA+
	 KZIwIKJJu8qN6dLYMZcm+oHuozAjgU1a7+K5gojLRh2UMOIuzwaIBW0iHlr4aj/3gT
	 QnXLJ3iARlnaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E0110F995C
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 16:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566673368.12325.15813966311322804107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dbcee137b21fdb584a47360dce4d738d5da6a937e6198aa1c08ceba89fdb61f
Date: Wed, 08 Apr 2026 16:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775666733
