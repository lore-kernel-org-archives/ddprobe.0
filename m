Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C88335C7
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727208354; cv=none; b=YFRY/rTrsI5lqQxG9EK0x/8pQ+IaalozuQUFGCad4TAUS0vAeiYeFbXVVwvSY5bU49NFMppNiUncXv1t8gmwYB+zcpG3h33cASYOyFpz/JWAhYRa6b2suDFZXL+DVm0gMs31n+IwAtdtwZQKkVS4P9rTBPhgBSPc2zqB8vXaea0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727208354; c=relaxed/simple;
	bh=bEB1xz8WXH09JscyKfIIs1HBurdFBNs74P+20xu2g18=;
	h=To:Subject:From:Message-Id:Date; b=QUQzYJKRJIPOH2wHwvxTAXkC+4vOcb8LiCxZh3hb6HWzXXtail18nSroho2bXdn5Kxy6WuHkw0JKSEy1suNk7pMHeUzmuOebv4hWvbNshJYT9z70ZOvAAMdcRfwgryW08TMLikaJKLFyH0ZabIAlvGuFCw4W7XbmZgirFLB2by4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qk/G71sC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qk/G71sC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF49EC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727208353;
	bh=bEB1xz8WXH09JscyKfIIs1HBurdFBNs74P+20xu2g18=;
	h=To:Subject:From:Date:From;
	b=qk/G71sCQU9FbHDLqmFikUEbOa69G+8IqD8rLSceaTtFehJkmNQ8TyUUNivr5aKgJ
	 3yUsd4+mk2h3EdWww3A78ZNamc3bPIZXE6Giae9GfbLmYtgVlTh92v0mfn93ybhgsX
	 rUBbsND9vu4UD58cEBerr6+Lgn2oXCFxXQzxkbX49DeM1gKbpLIlsSwhWoNpzafzrB
	 AmE+sDze/zHYnUxzy+skmBoPCw+IKdTceYKI2ii58nVw0OIv9yks4rhtiWT9mv7Pig
	 AlYMJXQLPtQOv/K404Pa+w+dVtXxuAxfJAURUuCYIrqGjqic1veoBidz+AldAhV2YK
	 v/VqYzA0loQgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E6CCF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172720835359.31713.11786008055591797963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc962b1abd36fde1c94bc500908cf68c95ee297f8f4dc7163cb009487bccaed
Date: Tue, 24 Sep 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727208353
