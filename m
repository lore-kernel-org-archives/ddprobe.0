Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB463BF662
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788158434; cv=none; b=GcB9NL7uza86d9qmgnGpLRnNnjCuDGmwhzpdOyaH84yrxK3D/gdL6MOyzEFp/VbMZmbs/Vp0anqAnUAk0fIwG//pYeE4eNvuXxOww6NSlsXz38k7Y8DYrhyLABaYyo9GmWv3QHzk8Ez9YIuDO/x19sVN2Gj7FGbrOzPDeucbP1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788158434; c=relaxed/simple;
	bh=fKfNcq7t4aRw3Ui/jPhP2mTXKMDgSK9A+Uh9J5nv6EI=;
	h=To:Subject:From:Message-Id:Date; b=b+8Mx7ggeS+MPwlbwv5Hiz76SHNt5Ysr9cZ9OuWlIdZom298EJrrkCmsKyqrpygG0JDKn5oQzAcoo25vj6L194QVElnVsBVc7V2cK0jmdCNKIcaQQd7jxpbMG/ti8D9ogCJO1k7cTg4JjFl+w4wQv93Dm+/x1fZ15HxfWIWcSIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyWkPae3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyWkPae3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DA6C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788158433;
	bh=fKfNcq7t4aRw3Ui/jPhP2mTXKMDgSK9A+Uh9J5nv6EI=;
	h=To:Subject:From:Date:From;
	b=ZyWkPae3OZx2numF8FNuV9QrmciJYF+IxXaerCyz3yZisVMWHoQqMfFLs2Ymuub8S
	 OMUTxBL/ycs/JifqBTuVjYoYUO02qZtzpti6K58hDa4/BYrXrl/+/8Zwp3lP9nq1NP
	 dFQ9oBc/ckEReFL3+EeMSCqd0Yh1HXHSC3OSf+xlEL1hhz4q8aJpESOyyRO5vID75P
	 X/K1cWFURLEaAnnbl2RUDU+GDKy9pNY0nRLNrGdVeRJRcwmcYdEz+erItGTkWyLZsp
	 B46nKjuJK5SPf+tCOb74fHa/XlM55sAv0ecV2RezxUR64m2Z8XdiBQfRlKqD+ozDQN
	 gvUfs5rgqGijA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB70C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815843376.25988.6815061291918178576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62890c0b2a2c75173e0202b70a7bd64285757acf263ac570843dfbd98f5b2674
Date: Mon, 31 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788158433
