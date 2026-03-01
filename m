Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08ED327470
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772351694; cv=none; b=d8OuT6C599neEDd1eX9mUrNYAVmJJHWx14+ZNGq/CbL1ukgk/cKG7xpInQPin69uAwQKHBmyobf+pWYI6I8NtAWEHEmi+jNwJjIrJGTgYtNFi47DvTqd9li98Me2DEXFSVusVjO+slfZZ6N69MHV+IiZi71cD8lIAW1WC4c2AR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772351694; c=relaxed/simple;
	bh=MHVUoVZajtahX+ac8KrqDxSbr2+x+USwr8kAn/OLmY4=;
	h=To:Subject:From:Message-Id:Date; b=U3Lh0mv7I/a8IW3yB68D81O0/mjGHK0NIDZMRBbCYpHrWVwr9fBBN2+1GYFnINfdJbojsg4yHbZbZDukRnenF5sBi76teomZJ+Zgl1pkXE6rfqd4fQVDiyWT5aZDobFqnJnnM8f8j75nOgJfPXdR/N97LJJuV341jnHL2WbtnoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPnjO0/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPnjO0/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC222C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772351693;
	bh=MHVUoVZajtahX+ac8KrqDxSbr2+x+USwr8kAn/OLmY4=;
	h=To:Subject:From:Date:From;
	b=oPnjO0/gc3cU++eSOFF4YTvEkqFtu3B4Me8zgwSat7pKQwEt5sPAsYHycFdJJ0gjh
	 tgHVrS/zOu3OpXAEpHtXYOCXLX8ezi5bd70aMoKKFgdwSZmvTCCRAxHQUnNvkryHQE
	 wfBSIK+LQuvcsHPjtbqIV8uudvH75aShi/Up26AXyilw3QHAteWAEWZpaPDWPSn+mK
	 Go6SwKcqPI3TDlQM9dpFq6EJj0zZ3hpVpH/BdZQT7VKHfZCIneI26BkprpNzGX11y0
	 BZKFhtv6aTNCX2sxQU4Xmj2yeH7aZvmz9OcPu/O+EVfY+qliqqKgSBAsKSzEweWNTq
	 +Kxm0dilqn36A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9667DFD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177235169360.27338.1658988547699717343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c803de2396945d38d2a64f908eced4c2db4d1afcf85c384f8fd271f5f45560f0
Date: Sun, 01 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772351693
