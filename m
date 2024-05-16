Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CBFF8F6B
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 03:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715829143; cv=none; b=lPpmAxU8AHGILH9kF4Xb9vT0zL+ZFzKwu7jKULzPpsbEjVFfXkSJtX6lGIXUabT9Ug0WGHP6GggUVOZ9/sJef4ChvV93+0bSkR4g/qnSoI3/sZKJHW+ZZ9ZclBpJ4UFqHMkkzvaWsuaj2IYNxfKtARy4QqIrZbFsH+v2ydtbPBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715829143; c=relaxed/simple;
	bh=kyC2Dl2NleMpaJ1WJeNMHIqAhGc3pLY/FxGV+AntjXc=;
	h=To:Subject:From:Message-Id:Date; b=I6VpFUgy2MeVnH/FcTxW2Bta668gYy8VxjeSSCjKXGwGLRdOAWrpvEGnl0z084n0bZHaq+ZJNvL1aTEOgmMkFKFPu2KAiCgRZgRg8NduOd211pMw1UROSeyAxAIe/u7fiYEiLnNzlon2oBmdk9ZMDEAfFBAKSPeyiNf/hOw18UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DU04Jbd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DU04Jbd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E373BC116B1
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715829142;
	bh=kyC2Dl2NleMpaJ1WJeNMHIqAhGc3pLY/FxGV+AntjXc=;
	h=To:Subject:From:Date:From;
	b=DU04Jbd6JKR3gF+LH7ZLy5m382444j9RH9syi/D2DMn8QV21Yjb3tUTsA5jev9EYl
	 /v2ZkeHlkxAHKhtDyZqddpfsFxrafi50FmgSbFutz8yIeB3ed8MTrbMSNTP3QT12gW
	 7xUqwvjmhBoqVnSywYADw8j+UHbG1s8COZRGOrKyV+7EGDr1+UglLgFcO/IDZYQypY
	 xu/JZbijMAQFuYEoorpInrOrlcwLgWPweeEVNGo5ZeD/BJOordkPKFhcwOs8Oq4VXV
	 VI6VbWAa/3CwTaHvopAz4kHqCyMaVdS86rM/qhtfL8iI0d6Cpl26MN9/7FPOzb05pF
	 avH5YX+eQIbZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA02BC25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 03:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171582914280.30176.16072086418417364679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d0e0e4720932bb4d609342c26f642a25d4d0926bf45d9de12b4d456c03ad7e2
Date: Thu, 16 May 2024 03:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715829142
