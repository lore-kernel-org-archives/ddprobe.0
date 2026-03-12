Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295343A4538
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773306294; cv=none; b=Rg8wp4EpaGNOzmX4nrYixHR9r2u93UrBv+9seqJGRovNd3iliCNy1H+TS6ZEh8881tH3QDbdnLAzI8fgJJnxFyZKKAofPOHs5mjo99mf59DlV7WjHJnYK1P6OBR/iPc1UGN75QVm4SKrAjCUlphCMEY3QUTYGItnnO5PHebDbSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773306294; c=relaxed/simple;
	bh=G9ZQfhMcnQMMztranCf1LubqNbD9xfdf9PgFu0KSBJ0=;
	h=To:Subject:From:Message-Id:Date; b=UTXFExH22kXjkE/bLutMOswUMto9jRhSPG0fWaNcSXbGm/YUn9MIxCSqTVazbqd0J73aQPSDdzK1oDVvdKNU7hL4ofXtUdOThfFkCq2/xuVBiSXa/dpzTPZTqOmEVW1CL/xLVo2mgF/mGKAoq72KCb05h/zPw701tR4dAVrumO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mb83JKkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mb83JKkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9B0C116C6
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773306293;
	bh=G9ZQfhMcnQMMztranCf1LubqNbD9xfdf9PgFu0KSBJ0=;
	h=To:Subject:From:Date:From;
	b=Mb83JKkzaNveQMaScoZRgPwtQCtsltHzJI6JkuIeem0M6vpmoItUipfi1BRg5TuXc
	 W0xGEFXllsRJjmbz8JJ1XwteNum8q1PYrttvS4N5inwXr8gcAw+OOcEOJr1Uhx6EWL
	 g9WDW7U1zxzD50VJ+NHLX1Lcvzx/1hzTZ/KDKljmJsqBi15C6ja7s5Iblx43cW9/rR
	 HTZPI0PxHcrZElrOI5YshCNlx5tCc0LQAc0BCVnmxj3nEwLtS+TI/rQh7mwkJOZ4hl
	 a/lE1zCZjFRX85bhsSdFBJVSVrsTu58ycExJQox66ZFG34o/Iu8zW32G5hW3mdplzp
	 L+bt8I6I7mTeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC25FED2F4
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330629363.10272.5233466988626937384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb4319f09d3f066ccb838c4749ef5ce9f88018db12554d1caf4088d792b158a
Date: Thu, 12 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773306293
