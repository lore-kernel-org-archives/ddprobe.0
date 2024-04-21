Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413548BF6
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 06:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713681023; cv=none; b=adE1rgzSfGn+dYiCdruBBthQp37VIJyxJxTn553o1oD0F/vEzGHZN3INjgMYx6fEY7yxptMl6qFsdWs4XjU3tbawXtc1nh1Gy6VPpROOtkt14qi0DSa4YmfZX166APBV9jOJSTJnLRv1k5fDMnC/cpnloJsfwBG/2Kt+QMvx+eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713681023; c=relaxed/simple;
	bh=GXevlKo/WBbl4LuB5s755KCsDiyMkGrU6ZmsLKwYl9A=;
	h=To:Subject:From:Message-Id:Date; b=jgVn8n7GOH1QeApHAGIuwWc/KjMdUS4oX0jRC5PXA4em4a+WJ9xuvg1DVx03slql12jVnry5YvTcUUXCF6PjoblY+96tn1aflaoYuBjJN4+Hq45ZfChShJ84aNQPgs+AJ/gV0qYjiXzxOIB8Q/i6r/YSi+d9qyD21WhNBOq9KdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUqZu6hW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUqZu6hW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93FFC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 06:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713681022;
	bh=GXevlKo/WBbl4LuB5s755KCsDiyMkGrU6ZmsLKwYl9A=;
	h=To:Subject:From:Date:From;
	b=kUqZu6hW5a366afGt54cBpUWf6jLRKaog977OuDpt+XdBCpcenlgFNYlO2uqj2HJZ
	 z8+8rF8HeeGg3iz2u1yk0TCVYRwC3VLuOWUddv+lmUa77sKDdwCIum+aadeGWf2tRn
	 PmT4ITz0L0pg7eXDvYkOAAp2c0MUlKI/tGiGupcpmClWYBJDCNM/uU0i+o6PIAXEFL
	 VB4BvPpuqo/ZdRQWaEJbMvHz1JntGHsgqUt7XxXX2L017LQafSDSfOHMqKgTQftvMf
	 BtXaoZykLPHVZ1je3FGVssqFsO1v3yXhuM6Clw4Hh2fSYySBa2hKX5FXP4GtiI3U9F
	 SiVrog0PTPoRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C161CC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 06:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171368102278.25994.1952560204846908585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0d15771c702dca601c96a0f34b1a5f8f60e33354a836a780a8ec6ab54e5ae1
Date: Sun, 21 Apr 2024 06:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713681022
