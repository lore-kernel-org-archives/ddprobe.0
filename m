Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B99208A7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758239395; cv=none; b=sauaarMSCbVJKJ3jvsTFa+ar6uxjIleDwttFy0Hl+LIyoRLNA0xqG2icszwE7QQf40laEQto37bTAgk7SfVZiCo98yM6pa30cq9boKGXUXBCde3JWJScPT7FKhYX3iykZsC2yKO67kwUwfeK6Viwq+pScRUDPlNgCSAZYSoT4Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758239395; c=relaxed/simple;
	bh=UseHxoxGsrkYB+5U0Fu8004iUhIh8HoAVlyxumLRe7I=;
	h=To:Subject:From:Message-Id:Date; b=r1Uc59kQNqWj8JXSgMkjp4WZDp7JUxAkCBvyED8sQp32XYSvhFj5EkIeSt2CqmXYu/xjDx1fo+vSVwAxyJBil7V20O8AlgZLscHuO7pcl/ONzb82VvsXdWJRI2VS5SgkrAAUsfe0b0axVXHPiY6PWKeiG5OGMgBvjO3QKurYtNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCDUkiRU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCDUkiRU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5672C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758239393;
	bh=UseHxoxGsrkYB+5U0Fu8004iUhIh8HoAVlyxumLRe7I=;
	h=To:Subject:From:Date:From;
	b=kCDUkiRUgIAd9ddHi3tkGm6gV3/sE/SvXIqzCTfRqUXMsjR0H0DKdnmUqxJHZBuZm
	 zd/jL1morqssdvUz7QDSWPA1oWwHpRptiJ/8az1koNPlhZZXe45p6jySnMxSDUxY3u
	 lMTNpikr4gJumhuc8hubjQ18JQgmunnINhRK8+T30n+zIx0yDNCZB6yJxAm2aHosZH
	 crLKQE3AGYoKiiPMpI3pbKKWX6oPPIZ9T/tsk+ZcwYXzaQ/TaK5pdep1rJ26SSl7Q7
	 rJPHdhToZts2dZAcrKly6HGK7QIsUj1nn+fp5r7t1gPM9l55/manEaul0VVrNTr/rN
	 5gFzI+QpUewYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9185BCAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823939358.11723.2377964719154991192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096215fdee956d94641db158a2311ca9f7347c28fa8a73155fa61f9404f55948
Date: Thu, 18 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758239393
