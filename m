Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2DD27B35F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771919694; cv=none; b=n2vwtxNmIOgox4mpQUIoBz3dtjFyxV7hxKwzrbJLzfninsprOwLHEmVdEa6pY8u/O5x5Q9Y9iG5qK+eIHnCp8IfwuDG38OGUppjkqmDXFmT8mGC3ih6+33e5UzGoVzWoX666lAOILtc0pPLVFwm6vx5Nlr2WoqSAhhvRhgSWs3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771919694; c=relaxed/simple;
	bh=XATnQXwHxpHlIxDVWc2Zz0tA2swS+Vtw1wcVK2zxBdo=;
	h=To:Subject:From:Message-Id:Date; b=p295/5LCDIsEVRtb6sfQuIeIEXV6gaeCSTu6lZyZZIOB01v+ilxD0Uh5LuWUQinr40WG9K/ot0kGbH+BqDsaWAFuKkXSXdGtjnOiA/bXEkUvj+HL6gsKFdgvomI+7k0db1k5mU3eLQwDMtEhlb5u26i4HCmvDEfD0yDo+udiV5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsuWYA9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsuWYA9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FF6C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771919693;
	bh=XATnQXwHxpHlIxDVWc2Zz0tA2swS+Vtw1wcVK2zxBdo=;
	h=To:Subject:From:Date:From;
	b=nsuWYA9hpYK992XDJ5DziNDnHvTTgcHsMAOT4GRkCOlb4w7xojEk+99WS9rbnB2m0
	 dfEKT+ygZmHy2K7sp+B4pFsJGSIL781ivOYTyTvO0P1KXVEphufYfybx/pLz8P8EMQ
	 QCgfu77grSF4dnL1qtfkhGsBeyVqu+F3z4zPRy+uzFwmtVtYK/mhzOOT+aCr9yAUeh
	 T8pMCpLZOeHfVKuPzXd1cP8EHPiZcuug02rtaEO4YlBMpzhf+W2Af4HEer6WhQKP4C
	 NndhjuLiKDtEYwYC35Ur6KeqbRQLXJ0+j6eC0T/iJJw0zJkBSfOHJaUO+bVYp+tgtN
	 I3y5ZIO0lqSeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91918EFB811
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191969358.32578.9044036703500995056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c56eef85d7822973baadc3ae6f9491a6d8b3d73157d3239d339c6a049a580e
Date: Tue, 24 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771919693
