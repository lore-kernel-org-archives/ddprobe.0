Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2638D1E22E9
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746646194; cv=none; b=Zi6v+qIKjbY9QzQ1SltB2HsUelX3iZHJ17YZEAgmAq4Fzl0T7556U9AkTq8Fxqff1ySwxZ6pL2y28OPbKkg5K+z4Sq7aD0G5l+O2P0vwn+yPRIvvUtl2CNq0iYNIYXbYzaT7JkGQI/O8GERN+MOMGTiuKAb1Q5JeGMEtY95mIb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746646194; c=relaxed/simple;
	bh=Vqu/sWfNgjrqz89VIDHBpgeFI5m5eo/+5WLAIpuAwoU=;
	h=To:Subject:From:Message-Id:Date; b=oADpvzC6kbj6O5sYmyM+rdHm9MzaeMsXVUxAcxr4RX7E58KNaqnfx9fquCg1/yG4t+Yqn7LxiLkmK2S5vyzrsj4FHBiTl4kYt8unZkiCfUCyHZ8wiTck9soMd9y8dTKcmAo6ShTio3+GvDR+PrF736yDKWSwrxWo4kAU9luQeO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjsOyUYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjsOyUYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A148FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746646193;
	bh=Vqu/sWfNgjrqz89VIDHBpgeFI5m5eo/+5WLAIpuAwoU=;
	h=To:Subject:From:Date:From;
	b=ZjsOyUYtmImBgM+XJJsnXR5RLcQlg2BR9cmGSWMDSBHW9FzPSaRujzsPP0lCZHmz0
	 n9SG3dKfFWZcTpQ9EuSfnKjNHYgaAKttYMndCHFcM3XeJ/eHLdLC2/mbYhB1rLypPs
	 4iTuh//QoBfR2PxabkOW58HLNDzLanNCT8wcihRBu8lCcVC+42+WQv+3AH1gHWhotf
	 Qr133PmCp/bwAyUDPbccRASDvZK0gVC7pesS/Um3aSj3eXeR0hJtRpzFQ+DU3ns8mH
	 ODvvDIGe3X4fNRrCxaexRiVAVAx47pp7mhPeMXECxPgGHi8SnbtQLVFEH4FOhQTzbZ
	 Q9uoc56HwbLYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6FFC3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664619357.9807.9653567056299755168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8e9907119f14497a87f4b285e255a2d9b002ab6fbc5c49a320af7c364a5432
Date: Wed, 07 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746646193
