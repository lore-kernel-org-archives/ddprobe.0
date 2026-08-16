Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFACB3B4E8B
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786893035; cv=none; b=Jive44tdNGFCY1p4+ZPaFGwCFpesYc38Fhqp59UmELwL5Unp6jB9cV3Gt2cpbROGVk8VkYk3/4nbWM0k+AxN/s/jML0OvJ4zcCO3R16wqQzi73bOwiKbYKbHtmprtnVI4cOWpl8SZd2XIQ2BSyxF/dx+6jysASmbj6JnvJTmuXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786893035; c=relaxed/simple;
	bh=NXeIqib0D/haFVM9AhMjGR/e+uqfzo29v84+7VsjhoI=;
	h=To:Subject:From:Message-Id:Date; b=ppJkLS0ygS3+EbwiRIY/6c4JEWSifMLBK6cVnUurWYd4mkmCmjsKnW98tRRlxl+nOB0g8Gc7XTw4AiRiqy4A/uY2X7ZyWy4pMhzITV3OrgIStYqwSqTtx2O2/+tS3VekcuxwlsmV4CG56QxFMmA48Fx8AgMKtbZnkBaxUxgPI54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTxV+GQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTxV+GQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBEDC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786893033;
	bh=NXeIqib0D/haFVM9AhMjGR/e+uqfzo29v84+7VsjhoI=;
	h=To:Subject:From:Date:From;
	b=UTxV+GQzd7bqtNpbxu63YamNoODU0GGczBvUJ7cxrm7oKKdSJauuyFS9klkq1yLhv
	 tclMBRgTo8UR1TGWQ9No1E9bF49uoNsYSLRkYGJKjEkizLMANB/JsbgBx+xYDaVcnV
	 9PrAXpGiWEAx7qlSns1smWjpb7BWSldgKgyD2LyoXiG04Bgmvm1Trbkdu0s+7EPBhw
	 66UnHDZzmk6ejiHCje0+Fm6PYHSngKWBn/R1JPnbbo0QomaNVv1aAV2B/M44PDEz0S
	 V2AUG0DhtF8TuGqPFgq4zbf0lbMEi3yEbrj4FSkclPg0L3sLb8TXYghCSZeCLJf36X
	 FFkPZLPlynjNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA715C5DF6D
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689303368.4511.5840412930220578698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b548e5d6dd4dd00066f60247c3981cf31aa1a2dd45067c339d96bbb09c2350
Date: Sun, 16 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786893033
