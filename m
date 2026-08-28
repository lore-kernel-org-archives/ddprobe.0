Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1863246E8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787946634; cv=none; b=txgUp6+XudkMaeTz3NxCIrWrWt1FK4pkt3WV8nC+zXyAckQngsDokoMylbBlGHF9GHtnWfeQtf5qPTMvdNMIcE7bQCx9T0ZkPN0qqAoxHALwyxIjPrFK6wHUa4B4sFUjN0c4tBgiMkBUuvYfIKKtqyAditbKD3+0K+ha7phX9jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787946634; c=relaxed/simple;
	bh=xZu+rqOOwo43JOsXdPKXp882MsZXXb9Ny3PQj16pcJw=;
	h=To:Subject:From:Message-Id:Date; b=EP1fO7uz9hWGqTj5IRSS58mwbBD8JiaoswKXjBFQ/yty517Om/rT3FG5WOHkJVneD0pukgReNlV3j+XwDMuzET/MR/JzwLF/4Ft18DNfxvCnIOyV3HZraakJwxEEkKQIvKwBGgvhABvVzNM0sETzbS+CoEHnmA5tB0Qyw3Fd+Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUG7z6uJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUG7z6uJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AC2C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787946633;
	bh=xZu+rqOOwo43JOsXdPKXp882MsZXXb9Ny3PQj16pcJw=;
	h=To:Subject:From:Date:From;
	b=TUG7z6uJloZ9aeetrT71I7JXLbAa84Kt5gC4lDz6ZatcKEVXwAN+fpvKWsuwKwldj
	 FrzYhF23opHjYMeeU2NSS+aA/MB+kwr/BEqymDPWVSLBxDLzDUVBZZEpGH/9jEGScN
	 CJUosOxRBgz+tvtUFLhdwP8VSs2Tm63ij/K/bZhN7+Y9tYuPjXtI7SU8SwXLNFuz0s
	 iqJBIKXUA5KLIS0TAtNoGnIzkgqJn/OAmQLTwCTeYvtj0hwo01eNtxgle4S+SSTzsS
	 H1yQNza9xSPbGqupJZDTjTk6ZeWikmryz+/CgkzY/y8ludtlakCcp0Uw1gynLG1bGt
	 Fpq3ww4ZmDrMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3EFC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794663368.19901.14362189105075212911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b80ce587f85b3bd181e0f85fd57559242343048e5a0a1152a3b3dd724d8e05b
Date: Fri, 28 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787946633
