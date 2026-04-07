Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD31B3A7836
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775556333; cv=none; b=DQWA9Pjtfd2HzBP0S3agdIirPTvhbFKl1xXr6tTEXl7pggRyPKTs3IVs9DIWtGTz43+ra9Chjz6fM7dJqSC+F9Isx22CHZZVWQjMH3KFxDLJzP2EQ7/k06ruIIouQvTG7hAJNLtoxjYMBLUVK183abzYjR118F/yl7K8scZEaVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775556333; c=relaxed/simple;
	bh=NLs0Bh6NKon13uy1oirRUU3IYiDOcFIdwiQqOtah8l0=;
	h=To:Subject:From:Message-Id:Date; b=g4DIYxquns9yWgs3pOiA51/gW3E/egA+4/xMW8yowjuppkH8dqY4H4qgfWSwZhSp2Qg6xvh+Uu3AyAfsLl/WpMz7Jw4mk4yewNo6D7/w2YKQnhEZPkj1RxskFyEIMiv594IbHVa01EtoZkT5nvSB1+yT55ofKcSALXy+0xJv0WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGuZR3IR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGuZR3IR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEEBFC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775556333;
	bh=NLs0Bh6NKon13uy1oirRUU3IYiDOcFIdwiQqOtah8l0=;
	h=To:Subject:From:Date:From;
	b=cGuZR3IR97otHgJjkC1RAeWkb+co38d4F+uMyCobXkIdmC/9qmVlYBHok6/w4DyTr
	 gaDacGT5zh4WDKfY/qQ5gQKQIwcg4YkDdN/JnRrHbvaZYwniqg4Gd7W7kg/srQ3yhD
	 G5bfxxL00CIyXeIkvCg9WbR+AxbZhIRMMVrQ2BUDudrY+M4lCUqpi9tVaQ3H0KVKSk
	 G7Ljej/1zEV6nyokZjvtZEPueBZb/uMU/yj4mfit5Kl/5PBuXxDnVbvnKf0I/HtvD2
	 I6NyKC3Qisq89dExEkedcROCctg8mZnas4BrTXZMFaHJJiTbmIJlQCymrC8E0xWMLT
	 roj+COW8T8Uwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFC2EDB7E7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 10:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555633369.10587.8930804316830735586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27028f187a7d1d8a8feeb2bc90463f57d0ec90dd30e54cf4ef4b9d9cc9b86355
Date: Tue, 07 Apr 2026 10:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775556333
