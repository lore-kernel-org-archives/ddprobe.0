Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7CC262A6
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758332394; cv=none; b=IAuo3zVuZFP5yTKXCcWqBQYY47h+xf+DZulIvRPFYBc4UTyBl1LWTGEDgPhYikBR3pfdD6MscNI60UCEZGvQ4Co5vglirAmuD7HEJbhWYcyBcen7ryW0lF9ujCfh+0anjYFT0+Hv3mzSHA/ZXSxV7Ye8vCFNoWg0SPpWUkFMMnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758332394; c=relaxed/simple;
	bh=Ge0hvVf43CtSddeiiSjgl81KsncTNFSGQ3xLOeEiMXs=;
	h=To:Subject:From:Message-Id:Date; b=IoXwKVQ8IaYaXI5kbzzdnf037XE3Jijl8qGXsA+9UAl69ny+qrUNl0u84IQWjgtdulXkF4QmjwcNuQIgIisGN+MP/fJU5kkiqhT4FBiqfNRa25viPI8FxEOMQniy67WTaDmt7Y7XzUcpSG9egl5n1RCmxIXzcQqzeymXH3sqCd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAu4LugS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAu4LugS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F40C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758332393;
	bh=Ge0hvVf43CtSddeiiSjgl81KsncTNFSGQ3xLOeEiMXs=;
	h=To:Subject:From:Date:From;
	b=UAu4LugSpVeJHhyMOyMKZ0LwxiMigYlwn0vMNtIDuNQBa4AnRIS8Uls1ImJ4NfgIP
	 HzeUhTFIdFPbBdwOvbqK+WJSwE/KoXPhvh7KFB2aa4gOSvcEoRiPiDVcRadWDC35Yi
	 rX6/SicQjtnHx7/8CBo2gbMdR7iIhmZn8kKdmezNQ7vVA1Saa6DX/r1rglXX9IlBN3
	 bZJaUjTaGTDF6u9ylEwyZ0F789ukQTSbD4zBZP3YVnuRpumqU+0jXayVEr3IG8700x
	 su64EhRj4O0JHstxAU8ZGpWY3HFhAHXJeSgbvR80KoaeMXE9/OPkbrF2s+qTPdTTRB
	 jGTLrCFgg6iyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD74CAC59A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175833239358.11176.2124493366062531492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13684dddb42506fa92d3491a4de3ba366e8db23b7564d9516bbdbca6d2ca213c
Date: Sat, 20 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758332393
