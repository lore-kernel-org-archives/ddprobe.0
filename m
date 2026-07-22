Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBAC36EA80
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784759974; cv=none; b=SLLv3rzoqFFmegk+rySh0TKFHMkxq3ncaAGK43hbLvFGxs3jNlaohrrcbHqxtpDUepQCbTIu0pkKVJuXO8k/0TQS+70F/+vXc/2gGfbva9+0sefbb8PWSuo7hCc0boPucQfO4++1WR7WmRWYZoCUhqusNDf46d2PNzLNTTFc9Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784759974; c=relaxed/simple;
	bh=akadvP4dePjTKCmnx0MzHqxetm1z4j6GkqzV17kDztc=;
	h=To:Subject:From:Message-Id:Date; b=O9YuCf5WIMP36iTMpB4oxle8Hks4/YaxEFzEknqMcx9TF6xOQJzVYd6zyEAT7CrTjyMYUsQ1MS5s/rhrUqtKTMdK1maJVoQbzy0vlPXOdtd/3iXGH5e1Ze2iA8V3fQepCRSK+hpqV4rP/3t1boV+WVup0ctK8mJi+0dEk0GRrws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2Jl2zBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2Jl2zBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D246BC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784759973;
	bh=akadvP4dePjTKCmnx0MzHqxetm1z4j6GkqzV17kDztc=;
	h=To:Subject:From:Date:From;
	b=S2Jl2zBtXuavX1L7A5FDY6e+Ba+m0/njxjGsK1GrhR5RXbe6YLqexRTjqZPkOYF5W
	 HwQLzNhK8JmhDFQibDqFRw/6/V64n90OvucqU5A69Dz4jmLXmAnQAa4TNCr2zFi3uj
	 vS7JT+8ILeUiIH1oc01cOttCsrepnAYMR3jR2rqzbVMgiXpIiFgI8T/BD9yRyluOHR
	 MUrlzxxt4twNVybNaDnQb01lp0ThBc2YeWfBFBezjyRXICxhSjlfH9Tm19+dbHyUCt
	 EaKX4Th7XUCqSynVANKSJttxh2GtjdIBhmP31wCpKOAZUtVvf+T5sw8NwMmyCSjeIb
	 A29d7ikA/a7Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2F8C4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475997368.21122.463721895442227906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa4f78af3cc9bed8b2a5945fd56a686ef7a95e9258c90923f435c4e6f6a55c4
Date: Wed, 22 Jul 2026 22:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784759973
