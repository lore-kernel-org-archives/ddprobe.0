Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4139E18C01D
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745702394; cv=none; b=s4HTZLaoCx0P3LHIB9mVrtAzKs1cb8PGR0a+pQFJJsJJMEkAKBHWt6DzXeMtBIOzGaQoUk4QXMOLcDQ4u68lQY/6LSBCzQwpOGu9tEpJC2ggPqxzLWvzlZvWve+xpNYxgeNwstxxGj6sLPbKaHaKVQKLb6bBYqIEACS0Thf/wpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745702394; c=relaxed/simple;
	bh=UU/AfzVXqnrAWJZKcrm+XpYuTo1rv/QN/pGEuZkJBlA=;
	h=To:Subject:From:Message-Id:Date; b=WkyzcaXbazwzGGXL6SNJfEhQANS3lpCCSefogte4KgO6BqBeB9cqvsMIrx68NhzjQsmw8dE900ATlFMhmlL+7KTolt2W3Z8Jqv2QKNhI1CpwKGjfAH+EWmtRX1B+ley7G5HKQ5693fGiyqazG7nXRSArtaiYhXFpmo+nIhN5Iro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2IWmIWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2IWmIWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3502C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745702393;
	bh=UU/AfzVXqnrAWJZKcrm+XpYuTo1rv/QN/pGEuZkJBlA=;
	h=To:Subject:From:Date:From;
	b=V2IWmIWYs3d927Gq26UwxiMIApJcVwSezrIZqh6k/d3D7+gP+FPQzs9dU04zsIze0
	 E1ccEdpv58akZLJC6iV7UJbbYZhZwGLmOkJZa/Fuwx4gdPg6YuEpbkpGnRI2DiNJ99
	 AtZ0I8MoUiD6oMKx5swIUvGvJRR4qR1194Cska7HUuXVQnzmhE2o2+AVVOb1BfRxgr
	 ir4aPOH/Pf4zfJOFra1+o45uWstThNu/jNDhcKwAmkKckuMMAQOjcargaXCB9kM+8L
	 9BojXU8g2RlhzefLAitlRqXjNOtmCt+RoZUoKX62pDF9MKKkRl19Tlx4UwePyYHI/Q
	 MUTWVahoYkLpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A4AC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174570239357.16004.7961410180642315664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ede7f8d3e2ee5482770620c0b9f009c9ac8542cc1460eb0e302f4dc9b58c26
Date: Sat, 26 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745702393
