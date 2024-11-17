Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349C2634
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731816954; cv=none; b=O+rP0YJ6IK3pVJodpBLipQEtGLaxECSo/ezwchQLnctrcUUVriSzAHpZRVjBgshpbWlWJ4oDjwIebcr39Oaz1ii7rkdA3prgCUswPP8WolEBxDSilAVvuB85efxIDXp0Cr/0KPrcEikrPHuPEaAqp66PZ8jxot96zNTDQMH2gms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731816954; c=relaxed/simple;
	bh=k82WT0uEm3wQ+lGelWF4jiFjaGYr/ixu+rMWjUNRWY0=;
	h=To:Subject:From:Message-Id:Date; b=TjCYY+Xze1xIq0Sk5UBdjTZrV/ZqywwrzPJ1vAH7/hGDrW/gJdyhgMH8C03o3XadBaqA/c8iqGY3HTt4ryzMTIDDVv6vpq7C2lyQalVQAZtmxO68ZF8aoevpPrOQ221fNiXLnfgyRBxSNvt7vCtM2mp2BkM+X8HmPMLNruDrc0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6Y89K5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6Y89K5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6680C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731816953;
	bh=k82WT0uEm3wQ+lGelWF4jiFjaGYr/ixu+rMWjUNRWY0=;
	h=To:Subject:From:Date:From;
	b=b6Y89K5Lmc3345Yne8pBVXP+ICX9MadmzR60SWKGBQFVoCoiW3LjVCI58XGnBLcaY
	 qBzhYPTZTOyndh6Y6CmhudXWvkhQZJEDJ98v+mUL2PyMJV9FvFObbybhNCFuD5NEfm
	 w0csZtQMaemKSDGz7O/H2u9BFETr1sdqGkecm9YwRI0wCnkwNiRfKv8aE5Bp+XXy6W
	 Ht077IIiDExXBWwZ2hl3Kmx8mU0tGXzpAZolS6J0zcK6uPu2kapvwF+aixuHNxu+l8
	 XC1tNVXXbVkXbao4+V2C0asaDr+IO0V+b8+P62yYiLMhD7zM/G/ehlb6KjHXEbfvrr
	 WEy7czabOeWSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D2CD68BDD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173181695361.2502.65784916522292730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a33f2e1f65446248565f3f8a0b2780358c87a5a3f626c74051bc9afee49dd52
Date: Sun, 17 Nov 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731816953
