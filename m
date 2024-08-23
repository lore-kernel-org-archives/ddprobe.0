Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4D48493
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724386555; cv=none; b=dqZipgzo/25jMVh6M1rh2B3luR+H7EbA2wvpcNCEgd4/x++gAS5bmTWCE5JXhpgfa66wdyrJKCUEM0W+VcC0GC0msfGEc4FtNl4yJsrhNlAvyKc840hx/zDuVt941+2LGcG4GKOYOX9vEEia4R7pu4gxZoMP9aIv00YE5XYas4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724386555; c=relaxed/simple;
	bh=VxDaghkz7MN3vle3ANYOfpUcVsMtKF5pjYfkkRIh0Cc=;
	h=To:Subject:From:Message-Id:Date; b=mn6kawCIGpqxLhUImhgLmwj7vIQU5a+6vFsDPKSdNE8cdeHUs9iaGhOKoxmbPqvM0T56nH8ejdOuqZqIkR0c68ozG4LdGTa/GJXMuyP4wbJzWwx47FgUEkCXs5U9On9SgPWHbfMn3UXwrkrpanboh0nk+y1Kpz9es7t+6WL6++8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KAfIPvcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KAfIPvcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7729C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724386553;
	bh=VxDaghkz7MN3vle3ANYOfpUcVsMtKF5pjYfkkRIh0Cc=;
	h=To:Subject:From:Date:From;
	b=KAfIPvcMi4/XBtuC8GGW30rkbTpNQoMqat6Qk8Wau96lSsOGuCG62xbwCODWMSU1S
	 kHIfsiua6nZXxHZWQRUo4USqsIP0NLHwk9WPHC31GwScHUTH3SpsKfYFwuj48sYowj
	 HvE1qBs3d6VGzc2GUIy8U4273mzyFm8LRCCFJB+kiQmWHLOvZcNqR/O1Aioeyaz1H5
	 EKMpphHtaxGmVR1QV8z9bCDQcypYXPuss9jvB7++cH01kPi+Zhc8eJRb1GMBKcyJFt
	 eSR6mtsA9FKXwpVq/cXDmIIIZi/HqiEiHPjCPvm2Cko8xmTDcTvCSS0MOPUGsYF1tS
	 4vzL5JY/nh8oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1F5C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172438655361.2434.15328260538067671277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d3ffdd296f71dbea65431f56788cd2efdd4c11242373c078dcd6ae2aabce94
Date: Fri, 23 Aug 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724386553
