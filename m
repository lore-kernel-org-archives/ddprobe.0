Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32002562617
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792000234; cv=none; b=J0KY9E5nEMr/edb1CTpXykcbUQABT5HzWJUyd1Sw+ytb4Hi/Rj6LF1qzOkk8FK76P5queezEEzFh915MpDlthZ5+hvN4JU9C7G1FIYOg1Vw01zTQEjfalXg8n7f3u4MEKWcMWTFiurstjCSi2T43276jEfpM2Q2EGIcdV53ZzDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792000234; c=relaxed/simple;
	bh=jsYjpmEXbqNKhiJwmnaIKA6Tmye5m+XCTqdmBClsgSY=;
	h=To:Subject:From:Message-Id:Date; b=U56C/KjXBid2TvJDpNUUI1f4ZQ3+LwqDl1WHIp0paN++g0ccSM8orSmq8nJBmWyYcPmKDi8d28csD/rGdGstv8f24Q3kXyAdq3V6QYIn85LsYcT4xd0ASvnDflN0FFm7wZC5EPKBomxd9g96QiDNfmTm1M4HAG88vHu82R1LSCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoCpqC01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoCpqC01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3803C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792000233;
	bh=jsYjpmEXbqNKhiJwmnaIKA6Tmye5m+XCTqdmBClsgSY=;
	h=To:Subject:From:Date:From;
	b=SoCpqC01YJnmfxltiK1tq30BmiCs7AGg04a+UoDnpginv7L5kaALuyrUYwThheRZF
	 EwI+waYDber9SiWFidENdZaoJdpo9+Nws9G2vp6YgStHwo8uDVRHMHTnVcG/JUP/2a
	 oMovfw5CDSY/sWQRTTiUaj+44yLN+M2E9e+Xiw9E1bhCuL8eV/yn9tkc3iatKSG6kt
	 DRMtHE4xWBXF8Baup4lXbhctuqlDypKXpW8KGyX3OLJbrhfZ8WRFNeo4ztJUoUEEg4
	 5iI+ImNx50fKfMBMkYW2fea98QKyDFFjBaPwJ+VkJzQ7fg1VjLZVxMnhhfMfPyaeEf
	 Mg3ClF8mI2ANw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE24FCC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200023370.31953.12669881720681744269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41f1271d84196e3bd3ee6b5556d5ba299721a6f2b767eaf230dbd241601ae132
Date: Wed, 14 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792000233
