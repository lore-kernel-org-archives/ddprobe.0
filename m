Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B34918A6AD
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757200194; cv=none; b=UvnGr0cA23rxXrC2k1oQ1flQY6Hzsa83Y4gI0sSrPhp7jgdCZ//KqBWuk4PZ2zJ39UJSdADIpoU3WZ6JsVesmUiNrpV2pZPqzUCl8W702ATsr2AgOTgUYOCY9uQV/kbubEYep1Jnjvy4FYmKfP9pG0uFscLZ3U2Aex0om+mpgpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757200194; c=relaxed/simple;
	bh=7A6sFNsBs/wt+ScVY/i6joEve9tOgT8uIrHyxUTv/lc=;
	h=To:Subject:From:Message-Id:Date; b=RJVJ7SdVq37EC9myxvU3XqbSZQ7yyexBFToLcnFKKZJlQGpipbDiII8Go98fYU1I4PeNCU3lk0bC019iZpLaAAgxXQv/FR+eYrjL84Ty4KCSn6/QIyVbl7ASVqMS0KPY/6H5VgsAX6HnZaavDbz6+Y9pHOSPF+fIIMdjVbwEp4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUOwiige; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUOwiige"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FA8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757200193;
	bh=7A6sFNsBs/wt+ScVY/i6joEve9tOgT8uIrHyxUTv/lc=;
	h=To:Subject:From:Date:From;
	b=hUOwiigemsTkk0xLwAusRKsxCEDITt7Lgb1151yT73ZS/klTa73BlJN9NMFMPqGyV
	 7BaVbFlBamd51zBxlWajOigkbHBW1/W5g/FZ1NRPIUFC/Qhfa71IdXnxQ0xC0O/1te
	 CFMxxfrFEGYNHnxQrr02Mzdc3LiDVklv1VqeaCqGOFnIIxrwsb4YFsFPd9nqB1QqFg
	 jySeT3AKZlivG4oQcKSasfKIzeBRY9MIMMCVCGSGrGfx30LOcnb1PsZNzLiYg4AqwE
	 gb7KHq4ApDMHxSPiUzf8gBdLvBxzfFuslIkBDggPjAVTjtYpET8+1w4dSpWw9R3uEV
	 PKfaG3IoU4osw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F2CA0FED
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720019357.13253.8513362232547279319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06588366ea32b32f4e37ad951f589b2d28b2334d0dc7463fd868a76ac608de2e
Date: Sat, 06 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757200193
