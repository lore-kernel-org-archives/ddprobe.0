Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6183A3ACF10
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784882434; cv=none; b=bBSuQ0fxMTi7cdggdT2/tlKUMqcX0Dfwh4Kv6tSyweSeUufNlMrNnZwm1nPXVjpUsDANG9JqlFilXfUV+afRDSxF9ur5G+Eq7PVXbTwRWJ+7FlDteocwF83l2PbYHcZs2vHKHDxTZaTX/p1c96dkb10ogCDRX2HgmYmi8BXygCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784882434; c=relaxed/simple;
	bh=cGMZhGrq/Yvq8SQvjMRkAMR72RXka7vK9M8e5w28qWE=;
	h=To:Subject:From:Message-Id:Date; b=lXMXIKpA5SrHgRbnwyiNJPiws3nzQbG1Cw5EAC9Zb85JdhU+Hm7Xjezy0EsWqYj7QX142EYP3kC/7cB1Gsdw8JhBDl/19Q2DVQf2B3BZZBqo8QmupBI9lOs2mRLBrbKnVVkaRC/cYDstrgO/8iweLPIowXaizXzhL4tf7aVlqD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAqjOAr8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAqjOAr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D145AC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784882433;
	bh=cGMZhGrq/Yvq8SQvjMRkAMR72RXka7vK9M8e5w28qWE=;
	h=To:Subject:From:Date:From;
	b=MAqjOAr8agrg2zIaW31ulO5RpsUfPWFr7gGS8L8H3pTw+Zp3KVm0fULXIbg/XaDVC
	 vbjBxVa5swCIbgrlJx5sdw1zTHmmXNAWO12yz5RxzvXAp9s5euYaUHGilYJb5/rncr
	 9YmTgF/tR3UMjpyLN6cw1MusAoB/nVaFK4GLDMnzR9JltxWbrlhwKS3KDCSHtDdz8+
	 WpB8m77AaX7XjWb1Dg1AXROMS0UTJk3rLcQQUY/Xe706e2Qp5tXQ3BSO6ur9tfxHmK
	 VScUdxns/t4/O++WkAvx6EObYQGMF5mcoVjLRUPrqA3uGFvP4ijRt/s5mYt2cgrO1c
	 QtenonAMfijDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC150C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488243368.23224.7223914107668652501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6912c4f122b3641ccdcad3ca6f74d065c918e28ba22663e22b580dbf36a4feb0
Date: Fri, 24 Jul 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784882433
