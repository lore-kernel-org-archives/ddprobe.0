Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E3E344D9D
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791625834; cv=none; b=dQpD3D6FZ4rAOuBHomFwUR1am09K3ssrWVhzz4CY9cU6t58M67fAUOQYNpPRDrSRpdtCQ7wSfuU/FR87bYYJYB0qlQ9TZ+1WvR78MfcFvuSFBnaPTAfxuHBNBHSmMUzbGmZYYcfcBn7jiQghJluJ++5oQnT6IlGxR2pcrc4gwNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791625834; c=relaxed/simple;
	bh=eApw2YdxQIJDeFKoLkADygH48QIdy5fDZc2D1PMxY+E=;
	h=To:Subject:From:Message-Id:Date; b=VdGTEYoW+Ru5W9a2FR5CwVxyBCMH9gsZJMjbPctM0zizgq57UogN59AW48LRgBbOjZEI1nUhF+m5oQvmgKkF8nLyM3l8tUFuRAQa07BPBSwbg5Yq6peIXaN6XKbmlIPp5RONRRwNd6wn1Gy0qcGp31TC15p22dLIS0fDdNdvK3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5Xpd95O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5Xpd95O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30F5C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791625833;
	bh=eApw2YdxQIJDeFKoLkADygH48QIdy5fDZc2D1PMxY+E=;
	h=To:Subject:From:Date:From;
	b=p5Xpd95O+nNSy2b+Xg7hl1682uadFelEFjGG6WWv3fzKoyS0VF0uItiII5ttSmNmk
	 SljGGjWfyOwKfre5yQo1HRQgJmjIo8Rgr+R7YLbAW9roTHVN+lVgzbcDQTpM5TdSRg
	 QFdkdhGdKpFgmoWX7Fn5WxC/m7wrLhqqWVwe2+2guoQ137L8COf3Xgd0vpP9wyFegZ
	 agbH8I9LgMJhjng0SeoBfYt35yocQXj07X8u6twT6vWsK3F+xMSYKKqjxEloQRA8M3
	 h/T4MCfytBlVYnPWnT9xKFfKAyLCxj9gVjJii/l1guSZYOXEvFErfNL9J/oUmj+J+p
	 YbZBkfsyWm/aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F80CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179162583369.22654.9551224562756456678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a324ccf9a5567bc373d3e5cdedbe1ea5940864be608d7030f3070201ae1b733
Date: Sat, 10 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791625833
